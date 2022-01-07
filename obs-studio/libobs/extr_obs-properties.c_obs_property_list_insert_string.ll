; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_list_insert_string.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_obs_property_list_insert_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_data = type { i64 }

@OBS_COMBO_FORMAT_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_property_list_insert_string(i32* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.list_data*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.list_data* @get_list_data(i32* %10)
  store %struct.list_data* %11, %struct.list_data** %9, align 8
  %12 = load %struct.list_data*, %struct.list_data** %9, align 8
  %13 = icmp ne %struct.list_data* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %4
  %15 = load %struct.list_data*, %struct.list_data** %9, align 8
  %16 = getelementptr inbounds %struct.list_data, %struct.list_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OBS_COMBO_FORMAT_STRING, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.list_data*, %struct.list_data** %9, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @insert_item(%struct.list_data* %21, i64 %22, i8* %23, i8* %24)
  br label %26

26:                                               ; preds = %20, %14, %4
  ret void
}

declare dso_local %struct.list_data* @get_list_data(i32*) #1

declare dso_local i32 @insert_item(%struct.list_data*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
