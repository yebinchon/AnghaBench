; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_FinishLeftRegions.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libtess/extr_sweep.c_FinishLeftRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_18__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_17__*, %struct.TYPE_19__*, %struct.TYPE_19__*)* @FinishLeftRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @FinishLeftRegions(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_19__* %11, %struct.TYPE_19__** %8, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %10, align 8
  br label %15

15:                                               ; preds = %99, %3
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %18 = icmp ne %struct.TYPE_19__* %16, %17
  br i1 %18, label %19, label %107

19:                                               ; preds = %15
  %20 = load i32, i32* @FALSE, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %24 = call %struct.TYPE_19__* @RegionBelow(%struct.TYPE_19__* %23)
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %7, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %27, %struct.TYPE_18__** %9, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %19
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %43 = call i32 @FinishRegion(%struct.TYPE_17__* %41, %struct.TYPE_19__* %42)
  br label %107

44:                                               ; preds = %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_18__* @__gl_meshConnect(i32 %47, i32 %50)
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %9, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %53 = icmp eq %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @longjmp(i32 %57, i32 1)
  br label %59

59:                                               ; preds = %54, %44
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = call i32 @FixUpperEdge(%struct.TYPE_19__* %60, %struct.TYPE_18__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @longjmp(i32 %67, i32 1)
  br label %69

69:                                               ; preds = %64, %59
  br label %70

70:                                               ; preds = %69, %19
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %72, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = icmp ne %struct.TYPE_18__* %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %81 = call i32 @__gl_meshSplice(%struct.TYPE_18__* %79, %struct.TYPE_18__* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @longjmp(i32 %86, i32 1)
  br label %88

88:                                               ; preds = %83, %76
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %91 = call i32 @__gl_meshSplice(%struct.TYPE_18__* %89, %struct.TYPE_18__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @longjmp(i32 %96, i32 1)
  br label %98

98:                                               ; preds = %93, %88
  br label %99

99:                                               ; preds = %98, %70
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %102 = call i32 @FinishRegion(%struct.TYPE_17__* %100, %struct.TYPE_19__* %101)
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  store %struct.TYPE_18__* %105, %struct.TYPE_18__** %10, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %106, %struct.TYPE_19__** %8, align 8
  br label %15

107:                                              ; preds = %40, %15
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  ret %struct.TYPE_18__* %108
}

declare dso_local %struct.TYPE_19__* @RegionBelow(%struct.TYPE_19__*) #1

declare dso_local i32 @FinishRegion(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_18__* @__gl_meshConnect(i32, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @FixUpperEdge(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @__gl_meshSplice(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
