; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_button2.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_button2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i8* }
%struct.button_data = type { i32 }

@OBS_PROPERTY_BUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_property* @obs_properties_add_button2(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.obs_property*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.obs_property*, align 8
  %13 = alloca %struct.button_data*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @has_prop(i32* %17, i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %5
  store %struct.obs_property* null, %struct.obs_property** %6, align 8
  br label %37

22:                                               ; preds = %16
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* @OBS_PROPERTY_BUTTON, align 4
  %27 = call %struct.obs_property* @new_prop(i32* %23, i8* %24, i8* %25, i32 %26)
  store %struct.obs_property* %27, %struct.obs_property** %12, align 8
  %28 = load %struct.obs_property*, %struct.obs_property** %12, align 8
  %29 = call %struct.button_data* @get_property_data(%struct.obs_property* %28)
  store %struct.button_data* %29, %struct.button_data** %13, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.button_data*, %struct.button_data** %13, align 8
  %32 = getelementptr inbounds %struct.button_data, %struct.button_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.obs_property*, %struct.obs_property** %12, align 8
  %35 = getelementptr inbounds %struct.obs_property, %struct.obs_property* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.obs_property*, %struct.obs_property** %12, align 8
  store %struct.obs_property* %36, %struct.obs_property** %6, align 8
  br label %37

37:                                               ; preds = %22, %21
  %38 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  ret %struct.obs_property* %38
}

declare dso_local i64 @has_prop(i32*, i8*) #1

declare dso_local %struct.obs_property* @new_prop(i32*, i8*, i8*, i32) #1

declare dso_local %struct.button_data* @get_property_data(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
