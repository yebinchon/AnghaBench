; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_upload_raw_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_upload_raw_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame = type { i32*, i32*, i32, i32 }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, %struct.obs_source_frame*)* @upload_raw_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upload_raw_frame(i32** %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  %5 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %6 = load i64, i64* @MAX_AV_PLANES, align 8
  %7 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %8 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %11 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @get_convert_type(i32 %9, i32 %12)
  switch i32 %13, label %50 [
    i32 136, label %14
    i32 132, label %14
    i32 128, label %14
    i32 131, label %14
    i32 140, label %14
    i32 138, label %14
    i32 129, label %14
    i32 135, label %14
    i32 139, label %14
    i32 137, label %14
    i32 134, label %14
    i32 133, label %14
    i32 130, label %48
  ]

14:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %44, %14
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MAX_AV_PLANES, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i32**, i32*** %3, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32*, i32** %20, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load i32**, i32*** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32*, i32** %26, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %31 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %37 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gs_texture_set_image(i32* %29, i32 %35, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %25, %19
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %5, align 8
  br label %15

47:                                               ; preds = %15
  br label %50

48:                                               ; preds = %2
  %49 = call i32 @assert(i32 0)
  br label %50

50:                                               ; preds = %2, %48, %47
  ret void
}

declare dso_local i32 @get_convert_type(i32, i32) #1

declare dso_local i32 @gs_texture_set_image(i32*, i32, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
