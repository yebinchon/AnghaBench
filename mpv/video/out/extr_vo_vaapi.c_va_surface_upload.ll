; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_upload.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vaapi.c_va_surface_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i32 }
%struct.mp_image = type { i64, i64, i32 }
%struct.va_surface = type { i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"vaPutImage()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.priv*, %struct.mp_image*, %struct.mp_image*)* @va_surface_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @va_surface_upload(%struct.priv* %0, %struct.mp_image* %1, %struct.mp_image* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  %6 = alloca %struct.mp_image*, align 8
  %7 = alloca %struct.mp_image*, align 8
  %8 = alloca %struct.va_surface*, align 8
  %9 = alloca %struct.mp_image, align 8
  %10 = alloca i32, align 4
  store %struct.priv* %0, %struct.priv** %5, align 8
  store %struct.mp_image* %1, %struct.mp_image** %6, align 8
  store %struct.mp_image* %2, %struct.mp_image** %7, align 8
  %11 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %12 = call %struct.va_surface* @va_surface_in_mp_image(%struct.mp_image* %11)
  store %struct.va_surface* %12, %struct.va_surface** %8, align 8
  %13 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %14 = icmp ne %struct.va_surface* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %111

16:                                               ; preds = %3
  %17 = load %struct.priv*, %struct.priv** %5, align 8
  %18 = load %struct.mp_image*, %struct.mp_image** %6, align 8
  %19 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %20 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @va_surface_alloc_imgfmt(%struct.priv* %17, %struct.mp_image* %18, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %111

25:                                               ; preds = %16
  %26 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %27 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %30 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %29, i32 0, i32 2
  %31 = call i32 @va_image_map(i32 %28, %struct.TYPE_3__* %30, %struct.mp_image* %9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %111

34:                                               ; preds = %25
  %35 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %36 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sle i64 %37, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %43 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %44, %46
  br label %48

48:                                               ; preds = %41, %34
  %49 = phi i1 [ false, %34 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %53 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %56 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @mp_image_set_size(%struct.mp_image* %9, i64 %54, i64 %57)
  %59 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %60 = call i32 @mp_image_copy(%struct.mp_image* %9, %struct.mp_image* %59)
  %61 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %62 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %65 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %64, i32 0, i32 2
  %66 = call i32 @va_image_unmap(i32 %63, %struct.TYPE_3__* %65)
  %67 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %68 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %102, label %71

71:                                               ; preds = %48
  %72 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %73 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %76 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %79 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %83 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %86 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %89 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mp_image*, %struct.mp_image** %7, align 8
  %92 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @vaPutImage(i32 %74, i32 %77, i32 %81, i32 0, i32 0, i64 %84, i64 %87, i32 0, i32 0, i64 %90, i64 %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %96 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @CHECK_VA_STATUS(i32 %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %111

101:                                              ; preds = %71
  br label %102

102:                                              ; preds = %101, %48
  %103 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %104 = getelementptr inbounds %struct.va_surface, %struct.va_surface* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.va_surface*, %struct.va_surface** %8, align 8
  %109 = call i32 @va_surface_image_destroy(%struct.va_surface* %108)
  br label %110

110:                                              ; preds = %107, %102
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %100, %33, %24, %15
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.va_surface* @va_surface_in_mp_image(%struct.mp_image*) #1

declare dso_local i64 @va_surface_alloc_imgfmt(%struct.priv*, %struct.mp_image*, i32) #1

declare dso_local i32 @va_image_map(i32, %struct.TYPE_3__*, %struct.mp_image*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mp_image_set_size(%struct.mp_image*, i64, i64) #1

declare dso_local i32 @mp_image_copy(%struct.mp_image*, %struct.mp_image*) #1

declare dso_local i32 @va_image_unmap(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @vaPutImage(i32, i32, i32, i32, i32, i64, i64, i32, i32, i64, i64) #1

declare dso_local i32 @CHECK_VA_STATUS(i32, i8*) #1

declare dso_local i32 @va_surface_image_destroy(%struct.va_surface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
