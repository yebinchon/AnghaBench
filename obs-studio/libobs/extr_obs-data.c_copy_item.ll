; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_copy_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_copy_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data = type { i32 }
%struct.obs_data_item = type { i32, i32 }

@OBS_DATA_OBJECT = common dso_local global i32 0, align 4
@obs_data_set_obj = common dso_local global i32 0, align 4
@OBS_DATA_ARRAY = common dso_local global i32 0, align 4
@obs_data_set_array = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data*, %struct.obs_data_item*)* @copy_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_item(%struct.obs_data* %0, %struct.obs_data_item* %1) #0 {
  %3 = alloca %struct.obs_data*, align 8
  %4 = alloca %struct.obs_data_item*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  store %struct.obs_data* %0, %struct.obs_data** %3, align 8
  store %struct.obs_data_item* %1, %struct.obs_data_item** %4, align 8
  %9 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %10 = call i8* @get_item_name(%struct.obs_data_item* %9)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %12 = call i8* @get_item_data(%struct.obs_data_item* %11)
  store i8* %12, i8** %6, align 8
  %13 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %14 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OBS_DATA_OBJECT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %20 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  br label %26

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ null, %25 ]
  %28 = bitcast i8* %27 to i32**
  store i32** %28, i32*** %7, align 8
  %29 = load i32**, i32*** %7, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.obs_data*, %struct.obs_data** %3, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @obs_data_set_obj, align 4
  %37 = call i32 @copy_obj(%struct.obs_data* %32, i8* %33, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %26
  br label %84

39:                                               ; preds = %2
  %40 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %41 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OBS_DATA_ARRAY, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %47 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i8*, i8** %6, align 8
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i8* [ %51, %50 ], [ null, %52 ]
  %55 = bitcast i8* %54 to i32**
  store i32** %55, i32*** %8, align 8
  %56 = load i32**, i32*** %8, align 8
  %57 = icmp ne i32** %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.obs_data*, %struct.obs_data** %3, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @obs_data_set_array, align 4
  %64 = call i32 @copy_array(%struct.obs_data* %59, i8* %60, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %53
  br label %83

66:                                               ; preds = %39
  %67 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %68 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.obs_data*, %struct.obs_data** %3, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %76 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.obs_data_item*, %struct.obs_data_item** %4, align 8
  %79 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_item(%struct.obs_data* %72, i32* null, i8* %73, i8* %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %71, %66
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %38
  ret void
}

declare dso_local i8* @get_item_name(%struct.obs_data_item*) #1

declare dso_local i8* @get_item_data(%struct.obs_data_item*) #1

declare dso_local i32 @copy_obj(%struct.obs_data*, i8*, i32*, i32) #1

declare dso_local i32 @copy_array(%struct.obs_data*, i8*, i32*, i32) #1

declare dso_local i32 @set_item(%struct.obs_data*, i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
