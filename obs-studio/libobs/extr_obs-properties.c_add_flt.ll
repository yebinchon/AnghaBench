; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_add_flt.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_add_flt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i32 }
%struct.float_data = type { double, double, double, i32 }

@OBS_PROPERTY_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_property* (i32*, i8*, i8*, double, double, double, i32)* @add_flt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_property* @add_flt(i32* %0, i8* %1, i8* %2, double %3, double %4, double %5, i32 %6) #0 {
  %8 = alloca %struct.obs_property*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.obs_property*, align 8
  %17 = alloca %struct.float_data*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %7
  %21 = load i32*, i32** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @has_prop(i32* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %7
  store %struct.obs_property* null, %struct.obs_property** %8, align 8
  br label %47

26:                                               ; preds = %20
  %27 = load i32*, i32** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* @OBS_PROPERTY_FLOAT, align 4
  %31 = call %struct.obs_property* @new_prop(i32* %27, i8* %28, i8* %29, i32 %30)
  store %struct.obs_property* %31, %struct.obs_property** %16, align 8
  %32 = load %struct.obs_property*, %struct.obs_property** %16, align 8
  %33 = call %struct.float_data* @get_property_data(%struct.obs_property* %32)
  store %struct.float_data* %33, %struct.float_data** %17, align 8
  %34 = load double, double* %12, align 8
  %35 = load %struct.float_data*, %struct.float_data** %17, align 8
  %36 = getelementptr inbounds %struct.float_data, %struct.float_data* %35, i32 0, i32 0
  store double %34, double* %36, align 8
  %37 = load double, double* %13, align 8
  %38 = load %struct.float_data*, %struct.float_data** %17, align 8
  %39 = getelementptr inbounds %struct.float_data, %struct.float_data* %38, i32 0, i32 1
  store double %37, double* %39, align 8
  %40 = load double, double* %14, align 8
  %41 = load %struct.float_data*, %struct.float_data** %17, align 8
  %42 = getelementptr inbounds %struct.float_data, %struct.float_data* %41, i32 0, i32 2
  store double %40, double* %42, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load %struct.float_data*, %struct.float_data** %17, align 8
  %45 = getelementptr inbounds %struct.float_data, %struct.float_data* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.obs_property*, %struct.obs_property** %16, align 8
  store %struct.obs_property* %46, %struct.obs_property** %8, align 8
  br label %47

47:                                               ; preds = %26, %25
  %48 = load %struct.obs_property*, %struct.obs_property** %8, align 8
  ret %struct.obs_property* %48
}

declare dso_local i64 @has_prop(i32*, i8*) #1

declare dso_local %struct.obs_property* @new_prop(i32*, i8*, i8*, i32) #1

declare dso_local %struct.float_data* @get_property_data(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
