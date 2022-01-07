; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_properties_add_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_property = type { i32 }
%struct.list_data = type { i32, i32 }

@OBS_COMBO_TYPE_EDITABLE = common dso_local global i32 0, align 4
@OBS_COMBO_FORMAT_STRING = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"List '%s', error: Editable combo boxes must be of the 'string' type\00", align 1
@OBS_PROPERTY_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_property* @obs_properties_add_list(i32* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.obs_property*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.obs_property*, align 8
  %13 = alloca %struct.list_data*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
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
  br label %49

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @OBS_COMBO_TYPE_EDITABLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @OBS_COMBO_FORMAT_STRING, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @blog(i32 %31, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %32)
  store %struct.obs_property* null, %struct.obs_property** %6, align 8
  br label %49

34:                                               ; preds = %26, %22
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @OBS_PROPERTY_LIST, align 4
  %39 = call %struct.obs_property* @new_prop(i32* %35, i8* %36, i8* %37, i32 %38)
  store %struct.obs_property* %39, %struct.obs_property** %12, align 8
  %40 = load %struct.obs_property*, %struct.obs_property** %12, align 8
  %41 = call %struct.list_data* @get_property_data(%struct.obs_property* %40)
  store %struct.list_data* %41, %struct.list_data** %13, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.list_data*, %struct.list_data** %13, align 8
  %44 = getelementptr inbounds %struct.list_data, %struct.list_data* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.list_data*, %struct.list_data** %13, align 8
  %47 = getelementptr inbounds %struct.list_data, %struct.list_data* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.obs_property*, %struct.obs_property** %12, align 8
  store %struct.obs_property* %48, %struct.obs_property** %6, align 8
  br label %49

49:                                               ; preds = %34, %30, %21
  %50 = load %struct.obs_property*, %struct.obs_property** %6, align 8
  ret %struct.obs_property* %50
}

declare dso_local i64 @has_prop(i32*, i8*) #1

declare dso_local i32 @blog(i32, i8*, i8*) #1

declare dso_local %struct.obs_property* @new_prop(i32*, i8*, i8*, i32) #1

declare dso_local %struct.list_data* @get_property_data(%struct.obs_property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
