; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lparser.c_retstat.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_lparser.c_retstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i8 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64 }

@VCALL = common dso_local global i64 0, align 8
@OP_TAILCALL = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @retstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retstat(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %3, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = call i64 @block_follow(%struct.TYPE_21__* %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 59
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %80

21:                                               ; preds = %13
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = call i32 @explist(%struct.TYPE_21__* %22, %struct.TYPE_20__* %4)
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @hasmultret(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %30 = call i32 @luaK_setmultret(%struct.TYPE_22__* %29, %struct.TYPE_20__* %4)
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %4, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VCALL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %40 = call i32 @getinstruction(%struct.TYPE_22__* %39, %struct.TYPE_20__* %4)
  %41 = load i32, i32* @OP_TAILCALL, align 4
  %42 = call i32 @SET_OPCODE(i32 %40, i32 %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %44 = call i32 @getinstruction(%struct.TYPE_22__* %43, %struct.TYPE_20__* %4)
  %45 = call i32 @GETARG_A(i32 %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @lua_assert(i32 %50)
  br label %52

52:                                               ; preds = %38, %35, %28
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @LUA_MULTRET, align 4
  store i32 %56, i32* %6, align 4
  br label %79

57:                                               ; preds = %21
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %62 = call i32 @luaK_exp2anyreg(%struct.TYPE_22__* %61, %struct.TYPE_20__* %4)
  store i32 %62, i32* %5, align 4
  br label %78

63:                                               ; preds = %57
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %65 = call i32 @luaK_exp2nextreg(%struct.TYPE_22__* %64, %struct.TYPE_20__* %4)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %72, %73
  %75 = icmp eq i32 %69, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @lua_assert(i32 %76)
  br label %78

78:                                               ; preds = %63, %60
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %20
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @luaK_ret(%struct.TYPE_22__* %81, i32 %82, i32 %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %86 = call i32 @testnext(%struct.TYPE_21__* %85, i8 signext 59)
  ret void
}

declare dso_local i64 @block_follow(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @explist(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @hasmultret(i64) #1

declare dso_local i32 @luaK_setmultret(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @SET_OPCODE(i32, i32) #1

declare dso_local i32 @getinstruction(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @luaK_exp2anyreg(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @luaK_ret(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @testnext(%struct.TYPE_21__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
