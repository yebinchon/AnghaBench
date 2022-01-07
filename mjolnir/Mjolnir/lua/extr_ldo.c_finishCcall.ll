; ModuleID = '/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldo.c_finishCcall.c'
source_filename = "/home/carl/AnghaBench/mjolnir/Mjolnir/lua/extr_ldo.c_finishCcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32, i32)*, i32, i32 }

@CIST_YPCALL = common dso_local global i32 0, align 4
@LUA_YIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32)* @finishCcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finishCcall(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %13, align 8
  %15 = icmp ne i32 (%struct.TYPE_15__*, i32, i32)* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ false, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @lua_assert(i32 %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CIST_YPCALL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @LUA_YIELD, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %31, %21
  %36 = phi i1 [ true, %21 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @lua_assert(i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CIST_YPCALL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %35
  %46 = load i32, i32* @CIST_YPCALL, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %45, %35
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @adjustresults(%struct.TYPE_15__* %60, i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = call i32 @lua_unlock(%struct.TYPE_15__* %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_15__*, i32, i32)*, i32 (%struct.TYPE_15__*, i32, i32)** %70, align 8
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %71(%struct.TYPE_15__* %72, i32 %73, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = call i32 @lua_lock(%struct.TYPE_15__* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @api_checknelems(%struct.TYPE_15__* %82, i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = sub nsw i64 %89, %91
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @luaD_poscall(%struct.TYPE_15__* %85, %struct.TYPE_16__* %86, i64 %92, i32 %93)
  ret void
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @adjustresults(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @lua_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @lua_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @api_checknelems(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @luaD_poscall(%struct.TYPE_15__*, %struct.TYPE_16__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
