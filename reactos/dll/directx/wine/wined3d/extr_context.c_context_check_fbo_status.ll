; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_check_fbo_status.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_check_fbo_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 (i64)* }

@d3d = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"FBO complete.\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"FBO status %s (%#x).\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"FBO 0 is incomplete, driver bug?\0A\00", align 1
@GL_DEPTH_ATTACHMENT = common dso_local global i64 0, align 8
@GL_STENCIL_ATTACHMENT = common dso_local global i64 0, align 8
@GL_COLOR_ATTACHMENT0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_check_fbo_status(%struct.wined3d_context* %0, i64 %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %8, i32 0, i32 1
  %10 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %9, align 8
  store %struct.wined3d_gl_info* %10, %struct.wined3d_gl_info** %5, align 8
  %11 = load i32, i32* @d3d, align 4
  %12 = call i32 @FIXME_ON(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64 (i64)*, i64 (i64)** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 %19(i64 %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @GL_FRAMEBUFFER_COMPLETE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %66

27:                                               ; preds = %15
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @debug_fbostatus(i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %29, i64 %30)
  %32 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %66

38:                                               ; preds = %27
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @GL_DEPTH_ATTACHMENT, align 8
  %42 = call i32 @context_dump_fbo_attachment(%struct.wined3d_gl_info* %39, i64 %40, i64 %41)
  %43 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @GL_STENCIL_ATTACHMENT, align 8
  %46 = call i32 @context_dump_fbo_attachment(%struct.wined3d_gl_info* %43, i64 %44, i64 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %62, %38
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %50 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %48, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @context_dump_fbo_attachment(%struct.wined3d_gl_info* %55, i64 %56, i64 %60)
  br label %62

62:                                               ; preds = %54
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %47

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %14, %36, %65, %25
  ret void
}

declare dso_local i32 @FIXME_ON(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FIXME(i8*, i32, i64) #1

declare dso_local i32 @debug_fbostatus(i64) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @context_dump_fbo_attachment(%struct.wined3d_gl_info*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
