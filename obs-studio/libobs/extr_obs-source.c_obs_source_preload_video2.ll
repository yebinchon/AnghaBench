; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_preload_video2.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_preload_video2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32 }
%struct.obs_source_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@VIDEO_RANGE_FULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_preload_video2(i32* %0, %struct.obs_source_frame2* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.obs_source_frame2*, align 8
  %5 = alloca %struct.obs_source_frame, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.obs_source_frame2* %1, %struct.obs_source_frame2** %4, align 8
  %8 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %9 = icmp ne %struct.obs_source_frame2* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @obs_source_preload_video_internal(i32* %11, %struct.obs_source_frame* null)
  br label %89

13:                                               ; preds = %2
  %14 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %15 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %18 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @resolve_video_range(i32 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %46, %13
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @MAX_AV_PLANES, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %27 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %26, i32 0, i32 9
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 10
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %31, i32* %35, align 4
  %36 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %37 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 9
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %25
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %7, align 8
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %51 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 8
  store i32 %52, i32* %53, align 8
  %54 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %55 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 7
  store i32 %56, i32* %57, align 4
  %58 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %59 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 6
  store i32 %60, i32* %61, align 8
  %62 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %63 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 5
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @VIDEO_RANGE_FULL, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %72 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 4
  store i32 %73, i32* %74, align 8
  %75 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 3
  %76 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %77 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %76, i32 0, i32 2
  %78 = call i32 @memcpy(i32* %75, i32* %77, i32 4)
  %79 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 2
  %80 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %81 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %80, i32 0, i32 1
  %82 = call i32 @memcpy(i32* %79, i32* %81, i32 4)
  %83 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 1
  %84 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %4, align 8
  %85 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %84, i32 0, i32 0
  %86 = call i32 @memcpy(i32* %83, i32* %85, i32 4)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @obs_source_preload_video_internal(i32* %87, %struct.obs_source_frame* %5)
  br label %89

89:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @obs_source_preload_video_internal(i32*, %struct.obs_source_frame*) #1

declare dso_local i32 @resolve_video_range(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
