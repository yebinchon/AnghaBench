; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_editable_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_editable_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i32 }
%struct.editable_list_data = type { i32, i8*, i8* }

@OBS_PROPERTY_EDITABLE_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_property* @obs_properties_add_editable_list(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.obs_property*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.obs_property*, align 8
  %15 = alloca %struct.editable_list_data*, align 8
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
  br label %44

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @OBS_PROPERTY_EDITABLE_LIST, align 4
  %29 = call %struct.obs_property* @new_prop(i32* %25, i8* %26, i8* %27, i32 %28)
  store %struct.obs_property* %29, %struct.obs_property** %14, align 8
  %30 = load %struct.obs_property*, %struct.obs_property** %14, align 8
  %31 = call %struct.editable_list_data* @get_property_data(%struct.obs_property* %30)
  store %struct.editable_list_data* %31, %struct.editable_list_data** %15, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.editable_list_data*, %struct.editable_list_data** %15, align 8
  %34 = getelementptr inbounds %struct.editable_list_data, %struct.editable_list_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @bstrdup(i8* %35)
  %37 = load %struct.editable_list_data*, %struct.editable_list_data** %15, align 8
  %38 = getelementptr inbounds %struct.editable_list_data, %struct.editable_list_data* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = call i8* @bstrdup(i8* %39)
  %41 = load %struct.editable_list_data*, %struct.editable_list_data** %15, align 8
  %42 = getelementptr inbounds %struct.editable_list_data, %struct.editable_list_data* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.obs_property*, %struct.obs_property** %14, align 8
  store %struct.obs_property* %43, %struct.obs_property** %7, align 8
  br label %44

44:                                               ; preds = %24, %23
  %45 = load %struct.obs_property*, %struct.obs_property** %7, align 8
  ret %struct.obs_property* %45
}

declare dso_local i64 @has_prop(i32*, i8*) #1

declare dso_local %struct.obs_property* @new_prop(i32*, i8*, i8*, i32) #1

declare dso_local %struct.editable_list_data* @get_property_data(%struct.obs_property*) #1

declare dso_local i8* @bstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
