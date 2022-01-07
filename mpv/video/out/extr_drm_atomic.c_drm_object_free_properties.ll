; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_free_properties.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_free_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_object = type { %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_object_free_properties(%struct.drm_object* %0) #0 {
  %2 = alloca %struct.drm_object*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_object* %0, %struct.drm_object** %2, align 8
  %4 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %5 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %42, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %12 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %9
  %18 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %19 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %28 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @drmModeFreeProperty(i32* %33)
  %35 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %36 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %26, %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %47 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %46, i32 0, i32 1
  %48 = load i32**, i32*** %47, align 8
  %49 = call i32 @talloc_free(i32** %48)
  %50 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %51 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %50, i32 0, i32 1
  store i32** null, i32*** %51, align 8
  %52 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %53 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @drmModeFreeObjectProperties(%struct.TYPE_2__* %54)
  %56 = load %struct.drm_object*, %struct.drm_object** %2, align 8
  %57 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %56, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %57, align 8
  br label %58

58:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @drmModeFreeProperty(i32*) #1

declare dso_local i32 @talloc_free(i32**) #1

declare dso_local i32 @drmModeFreeObjectProperties(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
