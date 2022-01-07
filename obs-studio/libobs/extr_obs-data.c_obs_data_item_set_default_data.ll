; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_set_default_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_item_set_default_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_data_item = type { i32, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_data_item**, i8*, i64, i32)* @obs_data_item_set_default_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_data_item_set_default_data(%struct.obs_data_item** %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.obs_data_item**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.obs_data_item*, align 8
  %10 = alloca i8*, align 8
  store %struct.obs_data_item** %0, %struct.obs_data_item*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %12 = icmp ne %struct.obs_data_item** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %15 = load %struct.obs_data_item*, %struct.obs_data_item** %14, align 8
  %16 = icmp ne %struct.obs_data_item* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %4
  br label %89

18:                                               ; preds = %13
  %19 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %20 = load %struct.obs_data_item*, %struct.obs_data_item** %19, align 8
  store %struct.obs_data_item* %20, %struct.obs_data_item** %9, align 8
  %21 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %22 = call i8* @get_autoselect_data_ptr(%struct.obs_data_item* %21)
  store i8* %22, i8** %10, align 8
  %23 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %24 = call i32 @item_default_data_release(%struct.obs_data_item* %23)
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %27 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %30 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %32 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %18
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @get_align_size(i64 %36)
  br label %40

38:                                               ; preds = %18
  %39 = load i64, i64* %7, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i64 [ %37, %35 ], [ %39, %38 ]
  %42 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %43 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %45 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %50 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @get_align_size(i64 %51)
  br label %54

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i64 [ %52, %48 ], [ 0, %53 ]
  %56 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %57 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %56, i32 0, i32 3
  store i64 %55, i64* %57, align 8
  %58 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %59 = call %struct.obs_data_item* @obs_data_item_ensure_capacity(%struct.obs_data_item* %58)
  store %struct.obs_data_item* %59, %struct.obs_data_item** %9, align 8
  %60 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %61 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %54
  %65 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  %66 = load %struct.obs_data_item*, %struct.obs_data_item** %65, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %69 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %70 = call i8* @get_autoselect_data_ptr(%struct.obs_data_item* %69)
  %71 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %72 = getelementptr inbounds %struct.obs_data_item, %struct.obs_data_item* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @move_data(%struct.obs_data_item* %66, i8* %67, %struct.obs_data_item* %68, i8* %70, i64 %73)
  br label %75

75:                                               ; preds = %64, %54
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %80 = call i32 @get_item_default_data(%struct.obs_data_item* %79)
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @memcpy(i32 %80, i8* %81, i64 %82)
  %84 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %85 = call i32 @item_default_data_addref(%struct.obs_data_item* %84)
  br label %86

86:                                               ; preds = %78, %75
  %87 = load %struct.obs_data_item*, %struct.obs_data_item** %9, align 8
  %88 = load %struct.obs_data_item**, %struct.obs_data_item*** %5, align 8
  store %struct.obs_data_item* %87, %struct.obs_data_item** %88, align 8
  br label %89

89:                                               ; preds = %86, %17
  ret void
}

declare dso_local i8* @get_autoselect_data_ptr(%struct.obs_data_item*) #1

declare dso_local i32 @item_default_data_release(%struct.obs_data_item*) #1

declare dso_local i64 @get_align_size(i64) #1

declare dso_local %struct.obs_data_item* @obs_data_item_ensure_capacity(%struct.obs_data_item*) #1

declare dso_local i32 @move_data(%struct.obs_data_item*, i8*, %struct.obs_data_item*, i8*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @get_item_default_data(%struct.obs_data_item*) #1

declare dso_local i32 @item_default_data_addref(%struct.obs_data_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
