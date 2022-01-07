; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_obs_output_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"obs_output_stop\00", align 1
@OBS_OUTPUT_ENCODED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"stopping\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_output_stop(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %4 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %5 = call i32 @obs_output_valid(%struct.TYPE_15__* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %61

8:                                                ; preds = %1
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  br label %61

15:                                               ; preds = %8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = call i32 @active(%struct.TYPE_15__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = call i64 @reconnecting(%struct.TYPE_15__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %61

24:                                               ; preds = %19, %15
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = call i64 @reconnecting(%struct.TYPE_15__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %30 = call i32 @obs_output_force_stop(%struct.TYPE_15__* %29)
  br label %61

31:                                               ; preds = %24
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OBS_OUTPUT_ENCODED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %49 = call i32 @obs_output_delay_stop(%struct.TYPE_15__* %48)
  br label %61

50:                                               ; preds = %42, %31
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %52 = call i32 @stopping(%struct.TYPE_15__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %56 = call i32 @do_output_signal(%struct.TYPE_15__* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = call i32 (...) @os_gettime_ns()
  %59 = call i32 @obs_output_actual_stop(%struct.TYPE_15__* %57, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %54, %50
  br label %61

61:                                               ; preds = %7, %14, %23, %28, %60, %47
  ret void
}

declare dso_local i32 @obs_output_valid(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @active(%struct.TYPE_15__*) #1

declare dso_local i64 @reconnecting(%struct.TYPE_15__*) #1

declare dso_local i32 @obs_output_force_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @obs_output_delay_stop(%struct.TYPE_15__*) #1

declare dso_local i32 @stopping(%struct.TYPE_15__*) #1

declare dso_local i32 @do_output_signal(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @obs_output_actual_stop(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @os_gettime_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
