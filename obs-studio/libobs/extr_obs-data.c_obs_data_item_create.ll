; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i64, i32, i64, i32, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_data_item* (i8*, i8*, i64, i32, i32, i32)* @obs_data_item_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_data_item* @obs_data_item_create(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.obs_data_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.obs_data_item*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i8*, i8** %9, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %6
  store %struct.obs_data_item* null, %struct.obs_data_item** %7, align 8
  br label %80

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @get_name_align_size(i8* %24)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %15, align 8
  %27 = add i64 %26, 72
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = call %struct.obs_data_item* @bzalloc(i64 %30)
  store %struct.obs_data_item* %31, %struct.obs_data_item** %14, align 8
  %32 = load i64, i64* %16, align 8
  %33 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %34 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %37 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %15, align 8
  %39 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %40 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  %41 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %42 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %41, i32 0, i32 3
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %23
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %48 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %51 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %50, i32 0, i32 5
  store i64 %49, i64* %51, align 8
  br label %67

52:                                               ; preds = %23
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %58 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %57, i32 0, i32 6
  store i64 %56, i64* %58, align 8
  br label %66

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %62 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %61, i32 0, i32 7
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %65 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %64, i32 0, i32 8
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %55
  br label %67

67:                                               ; preds = %66, %45
  %68 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %69 = call i32 @get_item_name(%struct.obs_data_item* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @strcpy(i32 %69, i8* %70)
  %72 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %73 = call i32 @get_item_data(%struct.obs_data_item* %72)
  %74 = load i8*, i8** %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @memcpy(i32 %73, i8* %74, i64 %75)
  %77 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %78 = call i32 @item_data_addref(%struct.obs_data_item* %77)
  %79 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  store %struct.obs_data_item* %79, %struct.obs_data_item** %7, align 8
  br label %80

80:                                               ; preds = %67, %22
  %81 = load %struct.obs_data_item*, %struct.obs_data_item** %7, align 8
  ret %struct.obs_data_item* %81
}

declare dso_local i64 @get_name_align_size(i8*) #1

declare dso_local %struct.obs_data_item* @bzalloc(i64) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @get_item_name(%struct.obs_data_item*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @get_item_data(%struct.obs_data_item*) #1

declare dso_local i32 @item_data_addref(%struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
