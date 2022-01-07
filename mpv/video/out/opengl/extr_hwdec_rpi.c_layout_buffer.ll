; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_rpi.c_layout_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_rpi.c_layout_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i32*, i32** }
%struct.TYPE_3__ = type { i32* }
%struct.mp_image_params = type { i64, i32, i32 }

@IMGFMT_420P = common dso_local global i64 0, align 8
@ALIGN_W = common dso_local global i32 0, align 4
@ALIGN_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mp_image*, %struct.TYPE_3__*, %struct.mp_image_params*)* @layout_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @layout_buffer(%struct.mp_image* %0, %struct.TYPE_3__* %1, %struct.mp_image_params* %2) #0 {
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.mp_image_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.mp_image* %0, %struct.mp_image** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store %struct.mp_image_params* %2, %struct.mp_image_params** %6, align 8
  %14 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %15 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IMGFMT_420P, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %22 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %23 = call i32 @mp_image_set_params(%struct.mp_image* %21, %struct.mp_image_params* %22)
  %24 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %25 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ALIGN_W, align 4
  %28 = call i32 @MP_ALIGN_UP(i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.mp_image_params*, %struct.mp_image_params** %6, align 8
  %30 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ALIGN_H, align 4
  %33 = call i32 @MP_ALIGN_UP(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  br label %41

40:                                               ; preds = %3
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32* [ %39, %36 ], [ null, %40 ]
  store i32* %42, i32** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %89, %41
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 2, i32 1
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %53 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* %51, i32** %57, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sdiv i32 %58, %59
  %61 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %62 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sdiv i32 %67, %68
  %70 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %71 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %69, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %13, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %46
  %82 = load i64, i64* %13, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %9, align 8
  br label %85

85:                                               ; preds = %81, %46
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %43

92:                                               ; preds = %43
  %93 = load i64, i64* %10, align 8
  ret i64 %93
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_image_set_params(%struct.mp_image*, %struct.mp_image_params*) #1

declare dso_local i32 @MP_ALIGN_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
