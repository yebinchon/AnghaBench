; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_set_autoselect_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_set_autoselect_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i64, i32, i64, i8*, i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data_item**, i8*, i64, i32)* @obs_data_item_set_autoselect_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_data_item_set_autoselect_data(%struct.obs_data_item** %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.obs_data_item**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.obs_data_item*, align 8
  store %struct.obs_data_item** %0, %struct.obs_data_item*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %11 = icmp ne %struct.obs_data_item** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %14 = load %struct.obs_data_item*, %struct.obs_data_item** %13, align 8
  %15 = icmp ne %struct.obs_data_item* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %4
  br label %71

17:                                               ; preds = %12
  %18 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %19 = load %struct.obs_data_item*, %struct.obs_data_item** %18, align 8
  store %struct.obs_data_item* %19, %struct.obs_data_item** %9, align 8
  %20 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %21 = call i32 @item_autoselect_data_release(%struct.obs_data_item* %20)
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %24 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %27 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %29 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %17
  %33 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %34 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @get_align_size(i64 %35)
  br label %38

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i8* [ %36, %32 ], [ null, %37 ]
  %40 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %41 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %43 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %48 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @get_align_size(i64 %49)
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i8* [ %50, %46 ], [ null, %51 ]
  %54 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %55 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %57 = call %struct.obs_data_item* @obs_data_item_ensure_capacity(%struct.obs_data_item* %56)
  store %struct.obs_data_item* %57, %struct.obs_data_item** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %52
  %61 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %62 = call i32 @get_item_autoselect_data(%struct.obs_data_item* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @memcpy(i32 %62, i8* %63, i64 %64)
  %66 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %67 = call i32 @item_autoselect_data_addref(%struct.obs_data_item* %66)
  br label %68

68:                                               ; preds = %60, %52
  %69 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %70 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  store %struct.obs_data_item* %69, %struct.obs_data_item** %70, align 8
  br label %71

71:                                               ; preds = %68, %16
  ret void
}

declare dso_local i32 @item_autoselect_data_release(%struct.obs_data_item*) #1

declare dso_local i8* @get_align_size(i64) #1

declare dso_local %struct.obs_data_item* @obs_data_item_ensure_capacity(%struct.obs_data_item*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @get_item_autoselect_data(%struct.obs_data_item*) #1

declare dso_local i32 @item_autoselect_data_addref(%struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
