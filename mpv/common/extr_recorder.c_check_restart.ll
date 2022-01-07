; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_check_restart.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_check_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder = type { i32, i32, double, double, i32, %struct.mp_recorder_sink** }
%struct.mp_recorder_sink = type { double, i32, %struct.TYPE_4__**, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@STREAM_VIDEO = common dso_local global i64 0, align 8
@QUEUE_MIN_PACKETS = common dso_local global i32 0, align 4
@STREAM_SUB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Discontinuity at timestamp %f.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_recorder*)* @check_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_restart(%struct.mp_recorder* %0) #0 {
  %2 = alloca %struct.mp_recorder*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_recorder_sink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.mp_recorder* %0, %struct.mp_recorder** %2, align 8
  %11 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %12 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %138

16:                                               ; preds = %1
  %17 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %17, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %90, %16
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %21 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %18
  %25 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %26 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %25, i32 0, i32 5
  %27 = load %struct.mp_recorder_sink**, %struct.mp_recorder_sink*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %27, i64 %29
  %31 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %30, align 8
  store %struct.mp_recorder_sink* %31, %struct.mp_recorder_sink** %6, align 8
  %32 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %6, align 8
  %33 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @STREAM_VIDEO, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* @QUEUE_MIN_PACKETS, align 4
  br label %42

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 1, %41 ]
  store i32 %43, i32* %7, align 4
  %44 = load double, double* %4, align 8
  %45 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %6, align 8
  %46 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %45, i32 0, i32 0
  %47 = load double, double* %46, align 8
  %48 = call double @MP_PTS_MAX(double %44, double %47)
  store double %48, double* %4, align 8
  %49 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %6, align 8
  %50 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %42
  %55 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %6, align 8
  %56 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %6, align 8
  %61 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %60, i32 0, i32 3
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STREAM_SUB, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %138

68:                                               ; preds = %59, %54
  br label %90

69:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load double, double* %3, align 8
  %76 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %6, align 8
  %77 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %78, i64 %80
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call double @MP_PTS_MIN(double %75, i32 %84)
  store double %85, double* %3, align 8
  br label %86

86:                                               ; preds = %74
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %70

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %68
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %18

93:                                               ; preds = %18
  %94 = load double, double* %3, align 8
  %95 = load double, double* @MP_NOPTS_VALUE, align 8
  %96 = fcmp oeq double %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %138

98:                                               ; preds = %93
  %99 = load double, double* %4, align 8
  %100 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %101 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %100, i32 0, i32 2
  store double %99, double* %101, align 8
  %102 = load double, double* %3, align 8
  %103 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %104 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %103, i32 0, i32 3
  store double %102, double* %104, align 8
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %122, %98
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %108 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %113 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %112, i32 0, i32 5
  %114 = load %struct.mp_recorder_sink**, %struct.mp_recorder_sink*** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %114, i64 %116
  %118 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %117, align 8
  store %struct.mp_recorder_sink* %118, %struct.mp_recorder_sink** %10, align 8
  %119 = load double, double* %3, align 8
  %120 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %10, align 8
  %121 = getelementptr inbounds %struct.mp_recorder_sink, %struct.mp_recorder_sink* %120, i32 0, i32 0
  store double %119, double* %121, align 8
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %105

125:                                              ; preds = %105
  %126 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %127 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %129 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %125
  %133 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %134 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %135 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %134, i32 0, i32 2
  %136 = load double, double* %135, align 8
  %137 = call i32 @MP_WARN(%struct.mp_recorder* %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), double %136)
  br label %138

138:                                              ; preds = %15, %67, %97, %132, %125
  ret void
}

declare dso_local double @MP_PTS_MAX(double, double) #1

declare dso_local double @MP_PTS_MIN(double, i32) #1

declare dso_local i32 @MP_WARN(%struct.mp_recorder*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
