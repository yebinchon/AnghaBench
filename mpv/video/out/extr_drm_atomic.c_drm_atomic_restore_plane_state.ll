; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_atomic_restore_plane_state.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_atomic.c_drm_atomic_restore_plane_state.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.drm_object*, %struct.drm_atomic_plane_state*)* @drm_atomic_restore_plane_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_atomic_restore_plane_state(i32* %0, %struct.drm_object* %1, %struct.drm_atomic_plane_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drm_object*, align 8
  %7 = alloca %struct.drm_atomic_plane_state*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.drm_object* %1, %struct.drm_object** %6, align 8
  store %struct.drm_atomic_plane_state* %2, %struct.drm_atomic_plane_state** %7, align 8
  %9 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %10 = icmp ne %struct.drm_object* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %110

12:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %15 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %16 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @drm_object_set_property(i32* %13, %struct.drm_object* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = icmp sgt i64 0, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %24 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %25 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @drm_object_set_property(i32* %22, %struct.drm_object* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp sgt i64 0, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %33 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %34 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @drm_object_set_property(i32* %31, %struct.drm_object* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = icmp sgt i64 0, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %42 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %43 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @drm_object_set_property(i32* %40, %struct.drm_object* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = icmp sgt i64 0, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %51 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %52 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @drm_object_set_property(i32* %49, %struct.drm_object* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = icmp sgt i64 0, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %60 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %61 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @drm_object_set_property(i32* %58, %struct.drm_object* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = icmp sgt i64 0, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %69 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %70 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @drm_object_set_property(i32* %67, %struct.drm_object* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = icmp sgt i64 0, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %75

75:                                               ; preds = %74, %66
  %76 = load i32*, i32** %5, align 8
  %77 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %78 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %79 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @drm_object_set_property(i32* %76, %struct.drm_object* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  %82 = icmp sgt i64 0, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %75
  %85 = load i32*, i32** %5, align 8
  %86 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %87 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %88 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @drm_object_set_property(i32* %85, %struct.drm_object* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %89)
  %91 = icmp sgt i64 0, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %92, %84
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %96 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %97 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @drm_object_set_property(i32* %94, %struct.drm_object* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %98)
  %100 = icmp sgt i64 0, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %8, align 4
  br label %102

102:                                              ; preds = %101, %93
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.drm_object*, %struct.drm_object** %6, align 8
  %105 = load %struct.drm_atomic_plane_state*, %struct.drm_atomic_plane_state** %7, align 8
  %106 = getelementptr inbounds %struct.drm_atomic_plane_state, %struct.drm_atomic_plane_state* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @drm_object_set_property(i32* %103, %struct.drm_object* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %102, %11
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @drm_object_set_property(i32*, %struct.drm_object*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
