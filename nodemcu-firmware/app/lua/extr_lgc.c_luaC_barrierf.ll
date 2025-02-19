; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_luaC_barrierf.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_luaC_barrierf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@GCSfinalize = common dso_local global i64 0, align 8
@GCSpause = common dso_local global i64 0, align 8
@LUA_TTABLE = common dso_local global i64 0, align 8
@GCSpropagate = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaC_barrierf(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_16__* @G(i32* %8)
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %7, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = call i64 @isblack(%struct.TYPE_17__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = call i64 @iswhite(%struct.TYPE_17__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %20 = call i32 @isdead(%struct.TYPE_16__* %18, %struct.TYPE_17__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = call i32 @isdead(%struct.TYPE_16__* %23, %struct.TYPE_17__* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %17, %13, %3
  %29 = phi i1 [ false, %17 ], [ false, %13 ], [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @lua_assert(i32 %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @GCSfinalize, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GCSpause, align 8
  %42 = icmp ne i64 %40, %41
  br label %43

43:                                               ; preds = %37, %28
  %44 = phi i1 [ false, %28 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @lua_assert(i32 %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LUA_TTABLE, align 8
  %52 = icmp ne i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @lua_assert(i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @GCSpropagate, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = call i32 @reallymarkobject(%struct.TYPE_16__* %61, %struct.TYPE_17__* %62)
  br label %68

64:                                               ; preds = %43
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = call i32 @makewhite(%struct.TYPE_16__* %65, %struct.TYPE_17__* %66)
  br label %68

68:                                               ; preds = %64, %60
  ret void
}

declare dso_local %struct.TYPE_16__* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @isblack(%struct.TYPE_17__*) #1

declare dso_local i64 @iswhite(%struct.TYPE_17__*) #1

declare dso_local i32 @isdead(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @reallymarkobject(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @makewhite(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
