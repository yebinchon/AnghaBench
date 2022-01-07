; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_path.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i32 }
%struct.path_data = type { i32, i8*, i8* }

@OBS_PROPERTY_PATH = common dso_local global i32 0, align 4
@OBS_PATH_FILE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_property* @obs_properties_add_path(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.obs_property*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.obs_property*, align 8
  %15 = alloca %struct.path_data*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @has_prop(i32* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %6
  store %struct.obs_property* null, %struct.obs_property** %7, align 8
  br label %52

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @OBS_PROPERTY_PATH, align 4
  %29 = call %struct.obs_property* @new_prop(i32* %25, i8* %26, i8* %27, i32 %28)
  store %struct.obs_property* %29, %struct.obs_property** %14, align 8
  %30 = load %struct.obs_property*, %struct.obs_property** %14, align 8
  %31 = call %struct.path_data* @get_property_data(%struct.obs_property* %30)
  store %struct.path_data* %31, %struct.path_data** %15, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.path_data*, %struct.path_data** %15, align 8
  %34 = getelementptr inbounds %struct.path_data, %struct.path_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i8* @bstrdup(i8* %35)
  %37 = load %struct.path_data*, %struct.path_data** %15, align 8
  %38 = getelementptr inbounds %struct.path_data, %struct.path_data* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.path_data*, %struct.path_data** %15, align 8
  %40 = getelementptr inbounds %struct.path_data, %struct.path_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @OBS_PATH_FILE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %24
  %46 = load i8*, i8** %12, align 8
  %47 = call i8* @bstrdup(i8* %46)
  %48 = load %struct.path_data*, %struct.path_data** %15, align 8
  %49 = getelementptr inbounds %struct.path_data, %struct.path_data* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %45, %24
  %51 = load %struct.obs_property*, %struct.obs_property** %14, align 8
  store %struct.obs_property* %51, %struct.obs_property** %7, align 8
  br label %52

52:                                               ; preds = %50, %23
  %53 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  ret %struct.obs_property* %53
}

declare dso_local i64 @has_prop(i32*, i8*) #1

declare dso_local %struct.obs_property* @new_prop(i32*, i8*, i8*, i32) #1

declare dso_local %struct.path_data* @get_property_data(%struct.obs_property*) #1

declare dso_local i8* @bstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
