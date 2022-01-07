; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_checkPipeTable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_checkPipeTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i64 0, align 8
@pipe_meta = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"pipe table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32)* @checkPipeTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @checkPipeTable(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @lua_gettop(i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @lua_objlen(i32* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @lua_type(i32* %17, i32 %18)
  %20 = load i64, i64* @LUA_TTABLE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @lua_getmetatable(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @pipe_meta, align 4
  %30 = call i32 @LROT_TABLEREF(i32 %29)
  %31 = call i32 @lua_pushrotable(i32* %28, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @lua_rawequal(i32* %32, i32 -1, i32 -2)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %27
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32* @newPipeUD(i32* %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %42, %41
  %47 = phi i32* [ null, %41 ], [ %45, %42 ]
  store i32* %47, i32** %10, align 8
  br label %62

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i32 [ 1, %51 ], [ %53, %52 ]
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @lua_rawgeti(i32* %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32* @checkPipeUD(i32* %60, i32 -1)
  store i32* %61, i32** %10, align 8
  br label %62

62:                                               ; preds = %54, %46
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @lua_settop(i32* %63, i32 %64)
  %66 = load i32*, i32** %10, align 8
  store i32* %66, i32** %4, align 8
  br label %72

67:                                               ; preds = %27
  br label %68

68:                                               ; preds = %67, %22, %3
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @luaL_typerror(i32* %69, i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i64 @lua_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushrotable(i32*, i32) #1

declare dso_local i32 @LROT_TABLEREF(i32) #1

declare dso_local i64 @lua_rawequal(i32*, i32, i32) #1

declare dso_local i32* @newPipeUD(i32*, i32, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32* @checkPipeUD(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @luaL_typerror(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
