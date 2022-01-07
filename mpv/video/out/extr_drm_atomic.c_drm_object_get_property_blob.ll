; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_get_property_blob.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_get_property_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @drm_object_get_property_blob(%struct.drm_object* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.drm_object*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_object* %0, %struct.drm_object** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @drm_object_get_property(%struct.drm_object* %7, i8* %8, i32* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %13 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32* @drmModeGetPropertyBlob(i32 %14, i32 %15)
  store i32* %16, i32** %3, align 8
  br label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %18

18:                                               ; preds = %17, %11
  %19 = load i32*, i32** %3, align 8
  ret i32* %19
}

declare dso_local i32 @drm_object_get_property(%struct.drm_object*, i8*, i32*) #1

declare dso_local i32* @drmModeGetPropertyBlob(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
