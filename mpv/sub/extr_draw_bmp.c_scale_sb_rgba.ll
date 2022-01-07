; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_scale_sb_rgba.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_draw_bmp.c_scale_sb_rgba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_bitmap = type { i32, i32, i32, i32, i32, i32 }
%struct.mp_image = type { %struct.TYPE_2__, i32, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@IMGFMT_BGR32 = common dso_local global i32 0, align 4
@IMGFMT_Y8 = common dso_local global i32 0, align 4
@SWS_BILINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sub_bitmap*, %struct.mp_image*, %struct.mp_image**, %struct.mp_image**)* @scale_sb_rgba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_sb_rgba(%struct.sub_bitmap* %0, %struct.mp_image* %1, %struct.mp_image** %2, %struct.mp_image** %3) #0 {
  %5 = alloca %struct.sub_bitmap*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_image**, align 8
  %8 = alloca %struct.mp_image**, align 8
  %9 = alloca %struct.mp_image, align 8
  %10 = alloca %struct.mp_image*, align 8
  %11 = alloca %struct.mp_image*, align 8
  %12 = alloca %struct.mp_image*, align 8
  store %struct.sub_bitmap* %0, %struct.sub_bitmap** %5, align 8
  store %struct.mp_image* %1, %struct.mp_image** %6, align 8
  store %struct.mp_image** %2, %struct.mp_image*** %7, align 8
  store %struct.mp_image** %3, %struct.mp_image*** %8, align 8
  %13 = bitcast %struct.mp_image* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i32, i32* @IMGFMT_BGR32, align 4
  %15 = call i32 @mp_image_setfmt(%struct.mp_image* %9, i32 %14)
  %16 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %17 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %20 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mp_image_set_size(%struct.mp_image* %9, i32 %18, i32 %21)
  %23 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %24 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %9, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %30 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %9, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @IMGFMT_BGR32, align 4
  %36 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %37 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %40 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.mp_image* @mp_image_alloc(i32 %35, i32 %38, i32 %41)
  store %struct.mp_image* %42, %struct.mp_image** %10, align 8
  %43 = load i32, i32* @IMGFMT_Y8, align 4
  %44 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %45 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %48 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.mp_image* @mp_image_alloc(i32 %43, i32 %46, i32 %49)
  store %struct.mp_image* %50, %struct.mp_image** %11, align 8
  %51 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %52 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %55 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sub_bitmap*, %struct.sub_bitmap** %5, align 8
  %58 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.mp_image* @mp_image_alloc(i32 %53, i32 %56, i32 %59)
  store %struct.mp_image* %60, %struct.mp_image** %12, align 8
  %61 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %62 = icmp ne %struct.mp_image* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %4
  %64 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %65 = icmp ne %struct.mp_image* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %68 = icmp ne %struct.mp_image* %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %66, %63, %4
  %70 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %71 = call i32 @talloc_free(%struct.mp_image* %70)
  %72 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %73 = call i32 @talloc_free(%struct.mp_image* %72)
  %74 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %75 = call i32 @talloc_free(%struct.mp_image* %74)
  br label %100

76:                                               ; preds = %66
  %77 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %78 = load i32, i32* @SWS_BILINEAR, align 4
  %79 = call i32 @mp_image_swscale(%struct.mp_image* %77, %struct.mp_image* %9, i32 %78)
  %80 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %81 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %82 = call i32 @unpremultiply_and_split_BGR32(%struct.mp_image* %80, %struct.mp_image* %81)
  %83 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %84 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %88 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %91 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %92 = load i32, i32* @SWS_BILINEAR, align 4
  %93 = call i32 @mp_image_swscale(%struct.mp_image* %90, %struct.mp_image* %91, i32 %92)
  %94 = load %struct.mp_image*, %struct.mp_image** %10, align 8
  %95 = call i32 @talloc_free(%struct.mp_image* %94)
  %96 = load %struct.mp_image*, %struct.mp_image** %12, align 8
  %97 = load %struct.mp_image**, %struct.mp_image*** %7, align 8
  store %struct.mp_image* %96, %struct.mp_image** %97, align 8
  %98 = load %struct.mp_image*, %struct.mp_image** %11, align 8
  %99 = load %struct.mp_image**, %struct.mp_image*** %8, align 8
  store %struct.mp_image* %98, %struct.mp_image** %99, align 8
  br label %100

100:                                              ; preds = %76, %69
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #2

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #2

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #2

declare dso_local i32 @talloc_free(%struct.mp_image*) #2

declare dso_local i32 @mp_image_swscale(%struct.mp_image*, %struct.mp_image*, i32) #2

declare dso_local i32 @unpremultiply_and_split_BGR32(%struct.mp_image*, %struct.mp_image*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
