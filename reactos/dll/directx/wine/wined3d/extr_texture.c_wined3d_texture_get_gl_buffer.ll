; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_get_gl_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_texture.c_wined3d_texture_get_gl_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_texture = type { %struct.wined3d_swapchain* }
%struct.wined3d_swapchain = type { %struct.wined3d_texture**, %struct.wined3d_texture* }

@.str = private unnamed_addr constant [13 x i8] c"texture %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Texture %p is not part of a swapchain.\0A\00", align 1
@GL_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Returning GL_FRONT.\0A\00", align 1
@GL_FRONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Returning GL_BACK.\0A\00", align 1
@GL_BACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Higher back buffer, returning GL_BACK.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_texture_get_gl_buffer(%struct.wined3d_texture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_texture*, align 8
  %4 = alloca %struct.wined3d_swapchain*, align 8
  store %struct.wined3d_texture* %0, %struct.wined3d_texture** %3, align 8
  %5 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %6 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %5, i32 0, i32 0
  %7 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %6, align 8
  store %struct.wined3d_swapchain* %7, %struct.wined3d_swapchain** %4, align 8
  %8 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %9 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.wined3d_texture* %8)
  %10 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %4, align 8
  %11 = icmp ne %struct.wined3d_swapchain* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %14 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_texture* %13)
  %15 = load i32, i32* @GL_NONE, align 4
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %18 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %18, i32 0, i32 1
  %20 = load %struct.wined3d_texture*, %struct.wined3d_texture** %19, align 8
  %21 = icmp eq %struct.wined3d_texture* %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @GL_FRONT, align 4
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %16
  %26 = load %struct.wined3d_texture*, %struct.wined3d_texture** %3, align 8
  %27 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %27, i32 0, i32 0
  %29 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %28, align 8
  %30 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %29, i64 0
  %31 = load %struct.wined3d_texture*, %struct.wined3d_texture** %30, align 8
  %32 = icmp eq %struct.wined3d_texture* %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @GL_BACK, align 4
  store i32 %35, i32* %2, align 4
  br label %39

36:                                               ; preds = %25
  %37 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %38 = load i32, i32* @GL_BACK, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %33, %22, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ERR(i8*, %struct.wined3d_texture*) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
