; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_find_min_ts.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_find_min_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_data = type { %struct.obs_source* }
%struct.obs_source = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.obs_core_data*, i64*)* @find_min_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_min_ts(%struct.obs_core_data* %0, i64* %1) #0 {
  %3 = alloca %struct.obs_core_data*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.obs_source*, align 8
  %6 = alloca %struct.obs_source*, align 8
  store %struct.obs_core_data* %0, %struct.obs_core_data** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.obs_source* null, %struct.obs_source** %5, align 8
  %7 = load %struct.obs_core_data*, %struct.obs_core_data** %3, align 8
  %8 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %7, i32 0, i32 0
  %9 = load %struct.obs_source*, %struct.obs_source** %8, align 8
  store %struct.obs_source* %9, %struct.obs_source** %6, align 8
  br label %10

10:                                               ; preds = %36, %2
  %11 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %12 = icmp ne %struct.obs_source* %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %15 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %13
  %19 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %20 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %25 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %32 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %4, align 8
  store i64 %33, i64* %34, align 8
  %35 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  store %struct.obs_source* %35, %struct.obs_source** %5, align 8
  br label %36

36:                                               ; preds = %30, %23, %18, %13
  %37 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %38 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.obs_source*
  store %struct.obs_source* %40, %struct.obs_source** %6, align 8
  br label %10

41:                                               ; preds = %10
  %42 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %43 = icmp ne %struct.obs_source* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.obs_source*, %struct.obs_source** %5, align 8
  %46 = call i8* @obs_source_get_name(%struct.obs_source* %45)
  br label %48

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i8* [ %46, %44 ], [ null, %47 ]
  ret i8* %49
}

declare dso_local i8* @obs_source_get_name(%struct.obs_source*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
