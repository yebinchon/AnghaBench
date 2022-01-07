; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_clean_fbo_attachments.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_clean_fbo_attachments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (i32, i64, i32, i32, i32)* }
%struct.TYPE_3__ = type { i32 }

@GL_COLOR_ATTACHMENT0 = common dso_local global i64 0, align 8
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"glFramebufferTexture2D()\00", align 1
@GL_DEPTH_ATTACHMENT = common dso_local global i64 0, align 8
@GL_STENCIL_ATTACHMENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i32)* @context_clean_fbo_attachments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_clean_fbo_attachments(%struct.wined3d_gl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_gl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %26, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %6
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (i32, i64, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32)** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = load i32, i32* @GL_TEXTURE_2D, align 4
  %24 = call i32 %17(i32 %18, i64 %22, i32 %23, i32 0, i32 0)
  %25 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %6

29:                                               ; preds = %6
  %30 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %31 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (i32, i64, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32)** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i64, i64* @GL_DEPTH_ATTACHMENT, align 8
  %36 = load i32, i32* @GL_TEXTURE_2D, align 4
  %37 = call i32 %33(i32 %34, i64 %35, i32 %36, i32 0, i32 0)
  %38 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (i32, i64, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32)** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* @GL_STENCIL_ATTACHMENT, align 8
  %45 = load i32, i32* @GL_TEXTURE_2D, align 4
  %46 = call i32 %42(i32 %43, i64 %44, i32 %45, i32 0, i32 0)
  %47 = call i32 @checkGLcall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
