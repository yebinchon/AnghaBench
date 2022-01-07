; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_alloc_planes.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_alloc_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { %struct.TYPE_3__**, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@MP_IMAGE_BYTE_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_image*)* @mp_image_alloc_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_image_alloc_planes(%struct.mp_image* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  %6 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %7 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %16 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %17, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @MP_IMAGE_BYTE_ALIGN, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %26 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %29 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %32 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mp_image_get_alloc_size(i32 %27, i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %40, %41
  %43 = call %struct.TYPE_3__* @av_buffer_alloc(i32 %42)
  %44 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %46, i64 0
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %47, align 8
  %48 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %49 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = icmp ne %struct.TYPE_3__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %81

55:                                               ; preds = %39
  %56 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %59 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %66 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %67, i64 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mp_image_fill_alloc(%struct.mp_image* %56, i32 %57, i32 %64, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %55
  %75 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %76 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %77, i64 0
  %79 = call i32 @av_buffer_unref(%struct.TYPE_3__** %78)
  store i32 0, i32* %2, align 4
  br label %81

80:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %74, %54, %38
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_image_get_alloc_size(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @av_buffer_alloc(i32) #1

declare dso_local i32 @mp_image_fill_alloc(%struct.mp_image*, i32, i32, i32) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_3__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
