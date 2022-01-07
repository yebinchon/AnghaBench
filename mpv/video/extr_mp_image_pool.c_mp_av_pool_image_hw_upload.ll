; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_av_pool_image_hw_upload.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image_pool.c_mp_av_pool_image_hw_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVBufferRef = type { i32 }
%struct.mp_image = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mp_image* @mp_av_pool_image_hw_upload(%struct.AVBufferRef* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.AVBufferRef*, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mp_image*, align 8
  store %struct.AVBufferRef* %0, %struct.AVBufferRef** %4, align 8
  store %struct.mp_image* %1, %struct.mp_image** %5, align 8
  %8 = call i32* (...) @av_frame_alloc()
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %66

12:                                               ; preds = %2
  %13 = load %struct.AVBufferRef*, %struct.AVBufferRef** %4, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @av_hwframe_get_buffer(%struct.AVBufferRef* %13, i32* %14, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @av_frame_free(i32** %6)
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %66

19:                                               ; preds = %12
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.mp_image* @mp_image_from_av_frame(i32* %20)
  store %struct.mp_image* %21, %struct.mp_image** %7, align 8
  %22 = call i32 @av_frame_free(i32** %6)
  %23 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %24 = icmp ne %struct.mp_image* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %66

26:                                               ; preds = %19
  %27 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %28 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %31 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %39 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34, %26
  %43 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %44 = call i32 @talloc_free(%struct.mp_image* %43)
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %66

45:                                               ; preds = %34
  %46 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %47 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %48 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %51 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mp_image_set_size(%struct.mp_image* %46, i32 %49, i64 %52)
  %54 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %55 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %56 = call i32 @mp_image_hw_upload(%struct.mp_image* %54, %struct.mp_image* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %60 = call i32 @talloc_free(%struct.mp_image* %59)
  store %struct.mp_image* null, %struct.mp_image** %3, align 8
  br label %66

61:                                               ; preds = %45
  %62 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %63 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %64 = call i32 @mp_image_copy_attributes(%struct.mp_image* %62, %struct.mp_image* %63)
  %65 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  store %struct.mp_image* %65, %struct.mp_image** %3, align 8
  br label %66

66:                                               ; preds = %61, %58, %42, %25, %17, %11
  %67 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  ret %struct.mp_image* %67
}

declare dso_local i32* @av_frame_alloc(...) #1

declare dso_local i64 @av_hwframe_get_buffer(%struct.AVBufferRef*, i32*, i32) #1

declare dso_local i32 @av_frame_free(i32**) #1

declare dso_local %struct.mp_image* @mp_image_from_av_frame(i32*) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i64) #1

declare dso_local i32 @mp_image_hw_upload(%struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_copy_attributes(%struct.mp_image*, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
