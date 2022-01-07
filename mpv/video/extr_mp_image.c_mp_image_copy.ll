; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_copy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_mp_image.c_mp_image_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_image = type { i64, i64, i64, i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32*, i32 }

@MP_IMGFLAG_PAL = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_image_copy(%struct.mp_image* %0, %struct.mp_image* %1) #0 {
  %3 = alloca %struct.mp_image*, align 8
  %4 = alloca %struct.mp_image*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mp_image* %0, %struct.mp_image** %3, align 8
  store %struct.mp_image* %1, %struct.mp_image** %4, align 8
  %8 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %9 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %12 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %18 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %21 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %26 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %29 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br label %32

32:                                               ; preds = %24, %2
  %33 = phi i1 [ false, %2 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %37 = call i32 @mp_image_is_writeable(%struct.mp_image* %36)
  %38 = call i32 @assert(i32 %37)
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %94, %32
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %42 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %97

45:                                               ; preds = %39
  %46 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @mp_image_plane_w(%struct.mp_image* %46, i32 %47)
  %49 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %50 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %48, %56
  %58 = add nsw i32 %57, 7
  %59 = sdiv i32 %58, 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @mp_image_plane_h(%struct.mp_image* %60, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %64 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %71 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %80 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %87 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @memcpy_pic(i32 %69, i32 %76, i32 %77, i32 %78, i32 %85, i32 %92)
  br label %94

94:                                               ; preds = %45
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %39

97:                                               ; preds = %39
  %98 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %99 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MP_IMGFLAG_PAL, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %97
  %106 = load %struct.mp_image*, %struct.mp_image** %3, align 8
  %107 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mp_image*, %struct.mp_image** %4, align 8
  %112 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AVPALETTE_SIZE, align 4
  %117 = call i32 @memcpy(i32 %110, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %105, %97
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_image_is_writeable(%struct.mp_image*) #1

declare dso_local i32 @mp_image_plane_w(%struct.mp_image*, i32) #1

declare dso_local i32 @mp_image_plane_h(%struct.mp_image*, i32) #1

declare dso_local i32 @memcpy_pic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
