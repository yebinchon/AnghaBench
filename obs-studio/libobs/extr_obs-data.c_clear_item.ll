; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_clear_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_clear_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i32, i64, i64, i64, i64 }

@OBS_DATA_OBJECT = common dso_local global i64 0, align 8
@OBS_DATA_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data_item*)* @clear_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_item(%struct.obs_data_item* %0) #0 {
  %2 = alloca %struct.obs_data_item*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store %struct.obs_data_item* %0, %struct.obs_data_item** %2, align 8
  %7 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %8 = call i8* @get_item_data(%struct.obs_data_item* %7)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %10 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %96

13:                                               ; preds = %1
  %14 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %15 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OBS_DATA_OBJECT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %21 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ null, %26 ]
  %29 = bitcast i8* %28 to i32**
  store i32** %29, i32*** %5, align 8
  %30 = load i32**, i32*** %5, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i32**, i32*** %5, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32**, i32*** %5, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @obs_data_release(i32* %38)
  br label %40

40:                                               ; preds = %36, %32, %27
  br label %70

41:                                               ; preds = %13
  %42 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %43 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OBS_DATA_ARRAY, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %49 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  br label %55

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i8* [ %53, %52 ], [ null, %54 ]
  %57 = bitcast i8* %56 to i32**
  store i32** %57, i32*** %6, align 8
  %58 = load i32**, i32*** %6, align 8
  %59 = icmp ne i32** %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32**, i32*** %6, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32**, i32*** %6, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @obs_data_array_release(i32* %66)
  br label %68

68:                                               ; preds = %64, %60, %55
  br label %69

69:                                               ; preds = %68, %41
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %72 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %75 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %73, %76
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %70
  %81 = load i8*, i8** %3, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %85 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @memmove(i8* %81, i32* %88, i64 %89)
  br label %91

91:                                               ; preds = %80, %70
  %92 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %93 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.obs_data_item*, %struct.obs_data_item** %2, align 8
  %95 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %1
  ret void
}

declare dso_local i8* @get_item_data(%struct.obs_data_item*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

declare dso_local i32 @memmove(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
