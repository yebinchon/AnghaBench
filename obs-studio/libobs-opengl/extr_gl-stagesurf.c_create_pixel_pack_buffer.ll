; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_create_pixel_pack_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-stagesurf.c_create_pixel_pack_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_stage_surface = type { i32, i32, i32, i32 }

@GL_PIXEL_PACK_BUFFER = common dso_local global i32 0, align 4
@GL_DYNAMIC_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"glBufferData\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gs_stage_surface*)* @create_pixel_pack_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pixel_pack_buffer(%struct.gs_stage_surface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_stage_surface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gs_stage_surface* %0, %struct.gs_stage_surface** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %3, align 8
  %7 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %6, i32 0, i32 3
  %8 = call i32 @gl_gen_buffers(i32 1, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

11:                                               ; preds = %1
  %12 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %13 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %3, align 8
  %14 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gl_bind_buffer(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %49

19:                                               ; preds = %11
  %20 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %3, align 8
  %21 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %3, align 8
  %24 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 3
  %29 = and i32 %28, -4
  store i32 %29, i32* %4, align 4
  %30 = load %struct.gs_stage_surface*, %struct.gs_stage_surface** %3, align 8
  %31 = getelementptr inbounds %struct.gs_stage_surface, %struct.gs_stage_surface* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @GL_DYNAMIC_READ, align 4
  %38 = call i32 @glBufferData(i32 %35, i32 %36, i32 0, i32 %37)
  %39 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* @GL_PIXEL_PACK_BUFFER, align 4
  %44 = call i32 @gl_bind_buffer(i32 %43, i32 0)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %18, %10
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @gl_gen_buffers(i32, i32*) #1

declare dso_local i32 @gl_bind_buffer(i32, i32) #1

declare dso_local i32 @glBufferData(i32, i32, i32, i32) #1

declare dso_local i32 @gl_success(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
