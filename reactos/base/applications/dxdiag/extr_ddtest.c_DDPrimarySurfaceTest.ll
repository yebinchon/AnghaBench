; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_DDPrimarySurfaceTest.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_ddtest.c_DDPrimarySurfaceTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_27__*, i32, i32)*, i64 (%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_26__**, i32*)*, i32 (%struct.TYPE_27__*)* }
%struct.TYPE_28__ = type { i32, i64, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_26__*)* }

@DD_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@DDSCL_NORMAL = common dso_local global i32 0, align 4
@DDSD_CAPS = common dso_local global i32 0, align 4
@DDSCAPS_PRIMARYSURFACE = common dso_local global i32 0, align 4
@DDSCAPS_3DDEVICE = common dso_local global i32 0, align 4
@TEST_DURATION = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@PM_REMOVE = common dso_local global i32 0, align 4
@WM_TIMER = common dso_local global i64 0, align 8
@WM_PAINT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DDPrimarySurfaceTest(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_25__, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  %9 = call i64 @DirectDrawCreate(i32* null, %struct.TYPE_27__** %6, i32* null)
  %10 = load i64, i64* @DD_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %2, align 8
  br label %117

14:                                               ; preds = %1
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load i64 (%struct.TYPE_27__*, i32, i32)*, i64 (%struct.TYPE_27__*, i32, i32)** %18, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DDSCL_NORMAL, align 4
  %23 = call i64 %19(%struct.TYPE_27__* %20, i32 %21, i32 %22)
  %24 = load i64, i64* @DD_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %14
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 2
  %31 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %30, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %33 = call i32 %31(%struct.TYPE_27__* %32)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %2, align 8
  br label %117

35:                                               ; preds = %14
  %36 = call i32 @ZeroMemory(%struct.TYPE_28__* %8, i32 24)
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 0
  store i32 24, i32* %37, align 8
  %38 = load i32, i32* @DDSD_CAPS, align 4
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @DDSCAPS_PRIMARYSURFACE, align 4
  %41 = load i32, i32* @DDSCAPS_3DDEVICE, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %8, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 1
  %50 = load i64 (%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_26__**, i32*)*, i64 (%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_26__**, i32*)** %49, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %52 = call i64 %50(%struct.TYPE_27__* %51, %struct.TYPE_28__* %8, %struct.TYPE_26__** %7, i32* null)
  %53 = load i64, i64* @DD_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %35
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 2
  %60 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %59, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %62 = call i32 %60(%struct.TYPE_27__* %61)
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %2, align 8
  br label %117

64:                                               ; preds = %35
  %65 = load i32, i32* %3, align 4
  %66 = load i64, i64* @TEST_DURATION, align 8
  %67 = call i64 @SetTimer(i32 %65, i32 -1, i64 %66, i32* null)
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %97, %64
  %69 = load i64, i64* @TRUE, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load i32, i32* @PM_REMOVE, align 4
  %73 = call i64 @PeekMessage(%struct.TYPE_25__* %5, i32* null, i32 0, i32 0, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @WM_TIMER, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %98

86:                                               ; preds = %80, %75
  %87 = call i32 @TranslateMessage(%struct.TYPE_25__* %5)
  %88 = call i32 @DispatchMessage(%struct.TYPE_25__* %5)
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %5, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WM_PAINT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %95 = call i32 @DDRedrawFrame(%struct.TYPE_26__* %94)
  br label %96

96:                                               ; preds = %93, %86
  br label %97

97:                                               ; preds = %96, %71
  br label %68

98:                                               ; preds = %85, %68
  %99 = load i32, i32* %3, align 4
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @KillTimer(i32 %99, i64 %100)
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_26__*)*, i32 (%struct.TYPE_26__*)** %105, align 8
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %108 = call i32 %106(%struct.TYPE_26__* %107)
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = load i32 (%struct.TYPE_27__*)*, i32 (%struct.TYPE_27__*)** %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %115 = call i32 %113(%struct.TYPE_27__* %114)
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %2, align 8
  br label %117

117:                                              ; preds = %98, %55, %26, %12
  %118 = load i64, i64* %2, align 8
  ret i64 %118
}

declare dso_local i64 @DirectDrawCreate(i32*, %struct.TYPE_27__**, i32*) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @SetTimer(i32, i32, i64, i32*) #1

declare dso_local i64 @PeekMessage(%struct.TYPE_25__*, i32*, i32, i32, i32) #1

declare dso_local i32 @TranslateMessage(%struct.TYPE_25__*) #1

declare dso_local i32 @DispatchMessage(%struct.TYPE_25__*) #1

declare dso_local i32 @DDRedrawFrame(%struct.TYPE_26__*) #1

declare dso_local i32 @KillTimer(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
