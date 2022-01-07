; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_float_set_limits.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_float_set_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.float_data = type { double, double, double }

@OBS_PROPERTY_FLOAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_property_float_set_limits(i32* %0, double %1, double %2, double %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.float_data*, align 8
  store i32* %0, i32** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @OBS_PROPERTY_FLOAT, align 4
  %12 = call %struct.float_data* @get_type_data(i32* %10, i32 %11)
  store %struct.float_data* %12, %struct.float_data** %9, align 8
  %13 = load %struct.float_data*, %struct.float_data** %9, align 8
  %14 = icmp ne %struct.float_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %26

16:                                               ; preds = %4
  %17 = load double, double* %6, align 8
  %18 = load %struct.float_data*, %struct.float_data** %9, align 8
  %19 = getelementptr inbounds %struct.float_data, %struct.float_data* %18, i32 0, i32 0
  store double %17, double* %19, align 8
  %20 = load double, double* %7, align 8
  %21 = load %struct.float_data*, %struct.float_data** %9, align 8
  %22 = getelementptr inbounds %struct.float_data, %struct.float_data* %21, i32 0, i32 1
  store double %20, double* %22, align 8
  %23 = load double, double* %8, align 8
  %24 = load %struct.float_data*, %struct.float_data** %9, align 8
  %25 = getelementptr inbounds %struct.float_data, %struct.float_data* %24, i32 0, i32 2
  store double %23, double* %25, align 8
  br label %26

26:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.float_data* @get_type_data(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
