; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_draw_buffers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_apply_draw_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_5__, i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i64)* }

@MAX_RENDER_TARGET_VIEWS = common dso_local global i32 0, align 4
@GL_NONE = common dso_local global i64 0, align 8
@wined3d_settings = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ORM_FBO = common dso_local global i64 0, align 8
@GL_COLOR_ATTACHMENT0 = common dso_local global i64 0, align 8
@ARB_DRAW_BUFFERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Unexpected draw buffers mask with backbuffer ORM.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"apply draw buffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i32)* @context_apply_draw_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_apply_draw_buffers(%struct.wined3d_context* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %5, align 8
  %12 = load i32, i32* @MAX_RENDER_TARGET_VIEWS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %20 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (i64)*, i32 (i64)** %22, align 8
  %24 = load i64, i64* @GL_NONE, align 8
  %25 = call i32 %23(i64 %24)
  br label %95

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @is_rt_mask_onscreen(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %32 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (i64)*, i32 (i64)** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @draw_buffer_from_rt_mask(i32 %36)
  %38 = call i32 %35(i64 %37)
  br label %94

39:                                               ; preds = %26
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @wined3d_settings, i32 0, i32 0), align 8
  %41 = load i64, i64* @ORM_FBO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %91

43:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %64, %43
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* @GL_COLOR_ATTACHMENT0, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %15, i64 %57
  store i64 %55, i64* %58, align 8
  br label %64

59:                                               ; preds = %47
  %60 = load i64, i64* @GL_NONE, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %15, i64 %62
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %51
  %65 = load i32, i32* %4, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %44

69:                                               ; preds = %44
  %70 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %71 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @ARB_DRAW_BUFFERS, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %69
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @glDrawBuffers(i32 %78, i64* %15)
  %80 = call i32 @GL_EXTCALL(i32 %79)
  br label %90

81:                                               ; preds = %69
  %82 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %83 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (i64)*, i32 (i64)** %85, align 8
  %87 = getelementptr inbounds i64, i64* %15, i64 0
  %88 = load i64, i64* %87, align 16
  %89 = call i32 %86(i64 %88)
  br label %90

90:                                               ; preds = %81, %77
  br label %93

91:                                               ; preds = %39
  %92 = call i32 @ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %90
  br label %94

94:                                               ; preds = %93, %30
  br label %95

95:                                               ; preds = %94, %18
  %96 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @is_rt_mask_onscreen(i32) #2

declare dso_local i64 @draw_buffer_from_rt_mask(i32) #2

declare dso_local i32 @GL_EXTCALL(i32) #2

declare dso_local i32 @glDrawBuffers(i32, i64*) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @checkGLcall(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
