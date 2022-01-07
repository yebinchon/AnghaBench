; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_frame_rate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_frame_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i32 }
%struct.frame_rate_data = type { i32, i32 }

@OBS_PROPERTY_FRAME_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_property* @obs_properties_add_frame_rate(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.obs_property*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.obs_property*, align 8
  %9 = alloca %struct.frame_rate_data*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @has_prop(i32* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %3
  store %struct.obs_property* null, %struct.obs_property** %4, align 8
  br label %35

18:                                               ; preds = %12
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @OBS_PROPERTY_FRAME_RATE, align 4
  %23 = call %struct.obs_property* @new_prop(i32* %19, i8* %20, i8* %21, i32 %22)
  store %struct.obs_property* %23, %struct.obs_property** %8, align 8
  %24 = load %struct.obs_property*, %struct.obs_property** %8, align 8
  %25 = call %struct.frame_rate_data* @get_property_data(%struct.obs_property* %24)
  store %struct.frame_rate_data* %25, %struct.frame_rate_data** %9, align 8
  %26 = load %struct.frame_rate_data*, %struct.frame_rate_data** %9, align 8
  %27 = getelementptr inbounds %struct.frame_rate_data, %struct.frame_rate_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @da_init(i32 %28)
  %30 = load %struct.frame_rate_data*, %struct.frame_rate_data** %9, align 8
  %31 = getelementptr inbounds %struct.frame_rate_data, %struct.frame_rate_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @da_init(i32 %32)
  %34 = load %struct.obs_property*, %struct.obs_property** %8, align 8
  store %struct.obs_property* %34, %struct.obs_property** %4, align 8
  br label %35

35:                                               ; preds = %18, %17
  %36 = load %struct.obs_property*, %struct.obs_property** %4, align 8
  ret %struct.obs_property* %36
}

declare dso_local i64 @has_prop(i32*, i8*) #1

declare dso_local %struct.obs_property* @new_prop(i32*, i8*, i8*, i32) #1

declare dso_local %struct.frame_rate_data* @get_property_data(%struct.obs_property*) #1

declare dso_local i32 @da_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
