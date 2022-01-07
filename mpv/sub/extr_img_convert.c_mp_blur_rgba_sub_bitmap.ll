; ModuleID = '/home/carl/AnghaBench/mpv/sub/extr_img_convert.c_mp_blur_rgba_sub_bitmap.c'
source_filename = "/home/carl/AnghaBench/mpv/sub/extr_img_convert.c_mp_blur_rgba_sub_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sub_bitmap = type { i32, i32, i32, i32 }
%struct.mp_image = type { i32*, i32*, i32 }

@IMGFMT_BGRA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_blur_rgba_sub_bitmap(%struct.sub_bitmap* %0, double %1) #0 {
  %3 = alloca %struct.sub_bitmap*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.mp_image, align 8
  store %struct.sub_bitmap* %0, %struct.sub_bitmap** %3, align 8
  store double %1, double* %4, align 8
  %7 = load i32, i32* @IMGFMT_BGRA, align 4
  %8 = load %struct.sub_bitmap*, %struct.sub_bitmap** %3, align 8
  %9 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sub_bitmap*, %struct.sub_bitmap** %3, align 8
  %12 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.mp_image* @mp_image_alloc(i32 %7, i32 %10, i32 %13)
  store %struct.mp_image* %14, %struct.mp_image** %5, align 8
  %15 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %16 = icmp ne %struct.mp_image* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = bitcast %struct.mp_image* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load i32, i32* @IMGFMT_BGRA, align 4
  %20 = call i32 @mp_image_setfmt(%struct.mp_image* %6, i32 %19)
  %21 = load %struct.sub_bitmap*, %struct.sub_bitmap** %3, align 8
  %22 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sub_bitmap*, %struct.sub_bitmap** %3, align 8
  %25 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mp_image_set_size(%struct.mp_image* %6, i32 %23, i32 %26)
  %28 = load %struct.sub_bitmap*, %struct.sub_bitmap** %3, align 8
  %29 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.sub_bitmap*, %struct.sub_bitmap** %3, align 8
  %35 = getelementptr inbounds %struct.sub_bitmap, %struct.sub_bitmap* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %41 = call i32 @mp_image_copy(%struct.mp_image* %40, %struct.mp_image* %6)
  %42 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %43 = load double, double* %4, align 8
  %44 = call i32 @mp_image_sw_blur_scale(%struct.mp_image* %6, %struct.mp_image* %42, double %43)
  br label %45

45:                                               ; preds = %17, %2
  %46 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %47 = call i32 @talloc_free(%struct.mp_image* %46)
  ret void
}

declare dso_local %struct.mp_image* @mp_image_alloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_image_setfmt(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i32, i32) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @mp_image_sw_blur_scale(%struct.mp_image*, %struct.mp_image*, double) #1

declare dso_local i32 @talloc_free(%struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
