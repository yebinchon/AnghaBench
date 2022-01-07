; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_create_properties.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_object_create_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.drm_object = type { i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to retrieve properties for object id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_object_create_properties(%struct.mp_log* %0, i32 %1, %struct.drm_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_log*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_object*, align 8
  %8 = alloca i32, align 4
  store %struct.mp_log* %0, %struct.mp_log** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_object* %2, %struct.drm_object** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %11 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %14 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_2__* @drmModeObjectGetProperties(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %18 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %17, i32 0, i32 1
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %18, align 8
  %19 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %20 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %74

23:                                               ; preds = %3
  %24 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %25 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call i32* @talloc_zero_size(i32* null, i32 %31)
  %33 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %34 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %36 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %70

39:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %43 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %51 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @drmModeGetProperty(i32 %49, i32 %58)
  %60 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %61 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %40

69:                                               ; preds = %40
  br label %73

70:                                               ; preds = %23
  %71 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %72 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %81

73:                                               ; preds = %69
  br label %80

74:                                               ; preds = %3
  %75 = load %struct.mp_log*, %struct.mp_log** %5, align 8
  %76 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %77 = getelementptr inbounds %struct.drm_object, %struct.drm_object* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.mp_log*, i8*, ...) @mp_err(%struct.mp_log* %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %81

80:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %84

81:                                               ; preds = %74, %70
  %82 = load %struct.drm_object*, %struct.drm_object** %7, align 8
  %83 = call i32 @drm_object_free_properties(%struct.drm_object* %82)
  store i32 -1, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %80
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_2__* @drmModeObjectGetProperties(i32, i32, i32) #1

declare dso_local i32* @talloc_zero_size(i32*, i32) #1

declare dso_local i32 @drmModeGetProperty(i32, i32) #1

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, ...) #1

declare dso_local i32 @drm_object_free_properties(%struct.drm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
