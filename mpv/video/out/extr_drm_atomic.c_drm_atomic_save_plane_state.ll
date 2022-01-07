; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_atomic_save_plane_state.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_atomic_save_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_object = type { i32 }
%struct.drm_atomic_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"FB_ID\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CRTC_ID\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"SRC_X\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"SRC_Y\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"SRC_W\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SRC_H\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"CRTC_X\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CRTC_Y\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"CRTC_W\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"CRTC_H\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ZPOS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_object*, %struct.drm_atomic_plane_state*)* @drm_atomic_save_plane_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_atomic_save_plane_state(%struct.drm_object* %0, %struct.drm_atomic_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_object*, align 8
  %5 = alloca %struct.drm_atomic_plane_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_object* %0, %struct.drm_object** %4, align 8
  store %struct.drm_atomic_plane_state* %1, %struct.drm_atomic_plane_state** %5, align 8
  %7 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %8 = icmp ne %struct.drm_object* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %86

10:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %11 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %12 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %13 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %12, i32 0, i32 10
  %14 = call i64 @drm_object_get_property(%struct.drm_object* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %13)
  %15 = icmp sgt i64 0, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %19 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %20 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %19, i32 0, i32 9
  %21 = call i64 @drm_object_get_property(%struct.drm_object* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %20)
  %22 = icmp sgt i64 0, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %17
  %25 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %26 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %27 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %26, i32 0, i32 8
  %28 = call i64 @drm_object_get_property(%struct.drm_object* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  %29 = icmp sgt i64 0, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %33 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %34 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %33, i32 0, i32 7
  %35 = call i64 @drm_object_get_property(%struct.drm_object* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %34)
  %36 = icmp sgt i64 0, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %40 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %40, i32 0, i32 6
  %42 = call i64 @drm_object_get_property(%struct.drm_object* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %41)
  %43 = icmp sgt i64 0, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %44, %38
  %46 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %47 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %48 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %47, i32 0, i32 5
  %49 = call i64 @drm_object_get_property(%struct.drm_object* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %48)
  %50 = icmp sgt i64 0, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %54 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %55 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %54, i32 0, i32 4
  %56 = call i64 @drm_object_get_property(%struct.drm_object* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %55)
  %57 = icmp sgt i64 0, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %61 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %62 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %61, i32 0, i32 3
  %63 = call i64 @drm_object_get_property(%struct.drm_object* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %62)
  %64 = icmp sgt i64 0, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %68 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %69 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %68, i32 0, i32 2
  %70 = call i64 @drm_object_get_property(%struct.drm_object* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32* %69)
  %71 = icmp sgt i64 0, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %66
  %74 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %75 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %76 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %75, i32 0, i32 1
  %77 = call i64 @drm_object_get_property(%struct.drm_object* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32* %76)
  %78 = icmp sgt i64 0, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %73
  %81 = load %struct.drm_object*, %struct.drm_object** %4, align 8
  %82 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %5, align 8
  %83 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %82, i32 0, i32 0
  %84 = call i64 @drm_object_get_property(%struct.drm_object* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %9
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @drm_object_get_property(%struct.drm_object*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
