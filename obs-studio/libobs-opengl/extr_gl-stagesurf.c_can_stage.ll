; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_can_stage.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_can_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_stage_surface = type { i64, i64, i64 }
%struct.gs_texture_2d = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Source texture is NULL\00", align 1
@GS_TEXTURE_2D = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Source texture must be a 2D texture\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Destination surface is NULL\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Source and destination formats do not match\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"Source and destination must have the same dimensions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_stage_surface*, %struct.gs_texture_2d*)* @can_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_stage(%struct.gs_stage_surface* %0, %struct.gs_texture_2d* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_stage_surface*, align 8
  %5 = alloca %struct.gs_texture_2d*, align 8
  store %struct.gs_stage_surface* %0, %struct.gs_stage_surface** %4, align 8
  store %struct.gs_texture_2d* %1, %struct.gs_texture_2d** %5, align 8
  %6 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %5, align 8
  %7 = icmp ne %struct.gs_texture_2d* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @LOG_ERROR, align 4
  %10 = call i32 @blog(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %5, align 8
  %13 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @GS_TEXTURE_2D, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @LOG_ERROR, align 4
  %20 = call i32 @blog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

21:                                               ; preds = %11
  %22 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %4, align 8
  %23 = icmp ne %struct.gs_stage_surface* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @LOG_ERROR, align 4
  %26 = call i32 @blog(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

27:                                               ; preds = %21
  %28 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %5, align 8
  %29 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %4, align 8
  %33 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @LOG_ERROR, align 4
  %38 = call i32 @blog(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

39:                                               ; preds = %27
  %40 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %5, align 8
  %41 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %4, align 8
  %44 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.gs_texture_2d*, %struct.gs_texture_2d** %5, align 8
  %49 = getelementptr inbounds %struct.gs_texture_2d, %struct.gs_texture_2d* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %4, align 8
  %52 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47, %39
  %56 = load i32, i32* @LOG_ERROR, align 4
  %57 = call i32 @blog(i32 %56, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %47
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %36, %24, %18, %8
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
