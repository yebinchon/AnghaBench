; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_issue.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_fence = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64* }

@ARB_SYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"glDeleteSync\00", align 1
@GL_SYNC_GPU_COMMANDS_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"glFenceSync\00", align 1
@APPLE_FENCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"glSetFenceAPPLE\00", align 1
@NV_FENCE = common dso_local global i64 0, align 8
@GL_ALL_COMPLETED_NV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"glSetFenceNV\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_fence_issue(%struct.wined3d_fence* %0, %struct.wined3d_device* %1) #0 {
  %3 = alloca %struct.wined3d_fence*, align 8
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  store %struct.wined3d_fence* %0, %struct.wined3d_fence** %3, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_context* null, %struct.wined3d_context** %5, align 8
  %7 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %8 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %13 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %14 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = call %struct.wined3d_context* @context_reacquire(%struct.wined3d_device* %12, %struct.TYPE_6__* %15)
  store %struct.wined3d_context* %16, %struct.wined3d_context** %5, align 8
  %17 = icmp ne %struct.wined3d_context* %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %11
  %19 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %20 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @ARB_SYNC, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %32 = call i32 @context_free_fence(%struct.wined3d_fence* %31)
  br label %33

33:                                               ; preds = %30, %18, %11, %2
  %34 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %35 = icmp ne %struct.wined3d_context* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %38 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %37, i32* null, i32 0)
  store %struct.wined3d_context* %38, %struct.wined3d_context** %5, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %41 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %40, i32 0, i32 0
  %42 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %41, align 8
  store %struct.wined3d_gl_info* %42, %struct.wined3d_gl_info** %6, align 8
  %43 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %44 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %49 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %50 = call i32 @context_alloc_fence(%struct.wined3d_context* %48, %struct.wined3d_fence* %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %53 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @ARB_SYNC, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %61 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %67 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @glDeleteSync(i64 %69)
  %71 = call i64 @GL_EXTCALL(i32 %70)
  br label %72

72:                                               ; preds = %65, %59
  %73 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @GL_SYNC_GPU_COMMANDS_COMPLETE, align 4
  %75 = call i32 @glFenceSync(i32 %74, i32 0)
  %76 = call i64 @GL_EXTCALL(i32 %75)
  %77 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %78 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = call i32 @checkGLcall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %116

81:                                               ; preds = %51
  %82 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %83 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* @APPLE_FENCE, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %91 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @glSetFenceAPPLE(i32 %93)
  %95 = call i64 @GL_EXTCALL(i32 %94)
  %96 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %115

97:                                               ; preds = %81
  %98 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %99 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* @NV_FENCE, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load %struct.wined3d_fence*, %struct.wined3d_fence** %3, align 8
  %107 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @GL_ALL_COMPLETED_NV, align 4
  %111 = call i32 @glSetFenceNV(i32 %109, i32 %110)
  %112 = call i64 @GL_EXTCALL(i32 %111)
  %113 = call i32 @checkGLcall(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %105, %97
  br label %115

115:                                              ; preds = %114, %89
  br label %116

116:                                              ; preds = %115, %72
  %117 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %118 = call i32 @context_release(%struct.wined3d_context* %117)
  ret void
}

declare dso_local %struct.wined3d_context* @context_reacquire(%struct.wined3d_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @context_free_fence(%struct.wined3d_fence*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @context_alloc_fence(%struct.wined3d_context*, %struct.wined3d_fence*) #1

declare dso_local i64 @GL_EXTCALL(i32) #1

declare dso_local i32 @glDeleteSync(i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @glFenceSync(i32, i32) #1

declare dso_local i32 @glSetFenceAPPLE(i32) #1

declare dso_local i32 @glSetFenceNV(i32, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
