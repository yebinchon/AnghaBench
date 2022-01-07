; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_get_source_properties.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_get_source_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_info = type { i32* (i32*)*, i32, i32* (i32*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_get_source_properties(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.obs_source_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.obs_source_info* @get_source_info(i8* %7)
  store %struct.obs_source_info* %8, %struct.obs_source_info** %4, align 8
  %9 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %10 = icmp ne %struct.obs_source_info* %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %13 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %12, i32 0, i32 0
  %14 = load i32* (i32*)*, i32* (i32*)** %13, align 8
  %15 = icmp ne i32* (i32*)* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %18 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %17, i32 0, i32 2
  %19 = load i32* (i32*, i32)*, i32* (i32*, i32)** %18, align 8
  %20 = icmp ne i32* (i32*, i32)* %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %16, %11
  %22 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %23 = call i32* @get_defaults(%struct.obs_source_info* %22)
  store i32* %23, i32** %5, align 8
  %24 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %25 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %24, i32 0, i32 2
  %26 = load i32* (i32*, i32)*, i32* (i32*, i32)** %25, align 8
  %27 = icmp ne i32* (i32*, i32)* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %30 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %29, i32 0, i32 2
  %31 = load i32* (i32*, i32)*, i32* (i32*, i32)** %30, align 8
  %32 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %33 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32* %31(i32* null, i32 %34)
  store i32* %35, i32** %6, align 8
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.obs_source_info*, %struct.obs_source_info** %4, align 8
  %38 = getelementptr inbounds %struct.obs_source_info, %struct.obs_source_info* %37, i32 0, i32 0
  %39 = load i32* (i32*)*, i32* (i32*)** %38, align 8
  %40 = call i32* %39(i32* null)
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %36, %28
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @obs_properties_apply_settings(i32* %42, i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @obs_data_release(i32* %45)
  %47 = load i32*, i32** %6, align 8
  store i32* %47, i32** %2, align 8
  br label %49

48:                                               ; preds = %16, %1
  store i32* null, i32** %2, align 8
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32*, i32** %2, align 8
  ret i32* %50
}

declare dso_local %struct.obs_source_info* @get_source_info(i8*) #1

declare dso_local i32* @get_defaults(%struct.obs_source_info*) #1

declare dso_local i32 @obs_properties_apply_settings(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
