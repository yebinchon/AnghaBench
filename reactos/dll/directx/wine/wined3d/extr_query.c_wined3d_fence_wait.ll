; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_wait.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_fence = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }

@.str = private unnamed_addr constant [22 x i8] c"fence %p, device %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Fence not issued.\0A\00", align 1
@WINED3D_FENCE_NOT_STARTED = common dso_local global i32 0, align 4
@ARB_SYNC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Fence finished from wrong thread.\0A\00", align 1
@WINED3D_FENCE_WRONG_THREAD = common dso_local global i32 0, align 4
@GL_SYNC_FLUSH_COMMANDS_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"glClientWaitSync\00", align 1
@WINED3D_FENCE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"glClientWaitSync returned %#x.\0A\00", align 1
@WINED3D_FENCE_ERROR = common dso_local global i32 0, align 4
@APPLE_FENCE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"glFinishFenceAPPLE\00", align 1
@NV_FENCE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"glFinishFenceNV\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Fence created without GL support.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_fence_wait(%struct.wined3d_fence* %0, %struct.wined3d_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_fence*, align 8
  %5 = alloca %struct.wined3d_device*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wined3d_fence* %0, %struct.wined3d_fence** %4, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %5, align 8
  %10 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %11 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %12 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.wined3d_fence* %10, %struct.wined3d_device* %11)
  %13 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @WINED3D_FENCE_NOT_STARTED, align 4
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %2
  %21 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %24, align 8
  store %struct.wined3d_gl_info* %25, %struct.wined3d_gl_info** %6, align 8
  %26 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %27 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = call %struct.wined3d_context* @context_reacquire(%struct.wined3d_device* %26, %struct.TYPE_4__* %29)
  store %struct.wined3d_context* %30, %struct.wined3d_context** %7, align 8
  %31 = icmp ne %struct.wined3d_context* %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %20
  %33 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %34 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @ARB_SYNC, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @WINED3D_FENCE_WRONG_THREAD, align 4
  store i32 %42, i32* %3, align 4
  br label %121

43:                                               ; preds = %32
  %44 = load %struct.wined3d_device*, %struct.wined3d_device** %5, align 8
  %45 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %44, i32* null, i32 0)
  store %struct.wined3d_context* %45, %struct.wined3d_context** %7, align 8
  br label %46

46:                                               ; preds = %43, %20
  %47 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %48 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %47, i32 0, i32 0
  %49 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %48, align 8
  store %struct.wined3d_gl_info* %49, %struct.wined3d_gl_info** %6, align 8
  %50 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %51 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @ARB_SYNC, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %46
  %58 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %59 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GL_SYNC_FLUSH_COMMANDS_BIT, align 4
  %63 = call i32 @glClientWaitSync(i32 %61, i32 %62, i32 -1)
  %64 = call i32 @GL_EXTCALL(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* %9, align 4
  switch i32 %66, label %69 [
    i32 129, label %67
    i32 128, label %67
  ]

67:                                               ; preds = %57, %57
  %68 = load i32, i32* @WINED3D_FENCE_OK, align 4
  store i32 %68, i32* %8, align 4
  br label %73

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @WINED3D_FENCE_ERROR, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %67
  br label %117

74:                                               ; preds = %46
  %75 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %76 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %75, i32 0, i32 0
  %77 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %76, align 8
  %78 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @APPLE_FENCE, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %74
  %85 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %86 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @glFinishFenceAPPLE(i32 %88)
  %90 = call i32 @GL_EXTCALL(i32 %89)
  %91 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @WINED3D_FENCE_OK, align 4
  store i32 %92, i32* %8, align 4
  br label %116

93:                                               ; preds = %74
  %94 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %95 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %94, i32 0, i32 0
  %96 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %95, align 8
  %97 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i64, i64* @NV_FENCE, align 8
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %93
  %104 = load %struct.wined3d_fence*, %struct.wined3d_fence** %4, align 8
  %105 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @glFinishFenceNV(i32 %107)
  %109 = call i32 @GL_EXTCALL(i32 %108)
  %110 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i32, i32* @WINED3D_FENCE_OK, align 4
  store i32 %111, i32* %8, align 4
  br label %115

112:                                              ; preds = %93
  %113 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %114 = load i32, i32* @WINED3D_FENCE_ERROR, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115, %84
  br label %117

117:                                              ; preds = %116, %73
  %118 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %119 = call i32 @context_release(%struct.wined3d_context* %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %40, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.wined3d_context* @context_reacquire(%struct.wined3d_device*, %struct.TYPE_4__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glClientWaitSync(i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @glFinishFenceAPPLE(i32) #1

declare dso_local i32 @glFinishFenceNV(i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
