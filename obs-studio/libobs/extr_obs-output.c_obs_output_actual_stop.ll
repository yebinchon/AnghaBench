; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_actual_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_actual_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 (i64, i32)* }

@OBS_OUTPUT_SUCCESS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_output_actual_stop(%struct.TYPE_16__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call i64 @stopping(%struct.TYPE_16__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %137

16:                                               ; preds = %12, %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = call i32 @obs_output_pause(%struct.TYPE_16__* %17, i32 0)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @os_event_reset(i32 %21)
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = call i64 @reconnecting(%struct.TYPE_16__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = call i64 @delay_active(%struct.TYPE_16__* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %16
  %32 = phi i1 [ false, %16 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = call i64 @reconnecting(%struct.TYPE_16__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @os_event_signal(i32 %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pthread_join(i32 %49, i32* null)
  br label %51

51:                                               ; preds = %46, %37
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = call i64 @delay_active(%struct.TYPE_16__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %55
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = call i32 @delay_capturing(%struct.TYPE_16__* %60)
  store i32 %61, i32* %7, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 7
  %64 = call i32 @os_atomic_set_bool(i32* %63, i32 0)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 6
  %67 = call i32 @os_atomic_set_bool(i32* %66, i32 0)
  %68 = load i8*, i8** @OBS_OUTPUT_SUCCESS, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = call i32 @obs_output_end_data_capture(%struct.TYPE_16__* %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @os_event_signal(i32 %75)
  br label %78

77:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %59
  br label %80

79:                                               ; preds = %52
  store i32 1, i32* %7, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32 (i64, i32)*, i32 (i64, i32)** %92, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 %93(i64 %97, i32 %98)
  br label %114

100:                                              ; preds = %86, %80
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i8*, i8** @OBS_OUTPUT_SUCCESS, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %108 = call i32 @signal_stop(%struct.TYPE_16__* %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @os_event_signal(i32 %111)
  br label %113

113:                                              ; preds = %103, %100
  br label %114

114:                                              ; preds = %113, %89
  br label %115

115:                                              ; preds = %120, %114
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = icmp ne %struct.TYPE_13__* %118, null
  br i1 %119, label %120, label %137

120:                                              ; preds = %115
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 0
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %127, align 8
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = call i32 @bfree(%struct.TYPE_13__* %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** %136, align 8
  br label %115

137:                                              ; preds = %15, %115
  ret void
}

declare dso_local i64 @stopping(%struct.TYPE_16__*) #1

declare dso_local i32 @obs_output_pause(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @os_event_reset(i32) #1

declare dso_local i64 @reconnecting(%struct.TYPE_16__*) #1

declare dso_local i64 @delay_active(%struct.TYPE_16__*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @delay_capturing(%struct.TYPE_16__*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @obs_output_end_data_capture(%struct.TYPE_16__*) #1

declare dso_local i32 @signal_stop(%struct.TYPE_16__*) #1

declare dso_local i32 @bfree(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
