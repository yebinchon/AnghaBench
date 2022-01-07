; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_test.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_query.c_wined3d_fence_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_fence = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.wined3d_device = type { i32 }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }

@.str = private unnamed_addr constant [33 x i8] c"fence %p, device %p, flags %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Fence not issued.\0A\00", align 1
@WINED3D_FENCE_NOT_STARTED = common dso_local global i32 0, align 4
@ARB_SYNC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Fence tested from wrong thread.\0A\00", align 1
@WINED3D_FENCE_WRONG_THREAD = common dso_local global i32 0, align 4
@WINED3DGETDATA_FLUSH = common dso_local global i32 0, align 4
@GL_SYNC_FLUSH_COMMANDS_BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"glClientWaitSync\00", align 1
@WINED3D_FENCE_OK = common dso_local global i32 0, align 4
@WINED3D_FENCE_WAITING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"glClientWaitSync returned %#x.\0A\00", align 1
@WINED3D_FENCE_ERROR = common dso_local global i32 0, align 4
@APPLE_FENCE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"glTestFenceAPPLE\00", align 1
@NV_FENCE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"glTestFenceNV\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Fence created despite lack of GL support.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_fence*, %struct.wined3d_device*, i32)* @wined3d_fence_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wined3d_fence_test(%struct.wined3d_fence* %0, %struct.wined3d_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wined3d_fence*, align 8
  %6 = alloca %struct.wined3d_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.wined3d_fence* %0, %struct.wined3d_fence** %5, align 8
  store %struct.wined3d_device* %1, %struct.wined3d_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.wined3d_fence*, %struct.wined3d_fence** %5, align 8
  %14 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.wined3d_fence* %13, %struct.wined3d_device* %14, i32 %15)
  %17 = load %struct.wined3d_fence*, %struct.wined3d_fence** %5, align 8
  %18 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @WINED3D_FENCE_NOT_STARTED, align 4
  store i32 %23, i32* %4, align 4
  br label %144

24:                                               ; preds = %3
  %25 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %26 = load %struct.wined3d_fence*, %struct.wined3d_fence** %5, align 8
  %27 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %26, i32 0, i32 1
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call %struct.wined3d_context* @context_reacquire(%struct.wined3d_device* %25, %struct.TYPE_6__* %28)
  store %struct.wined3d_context* %29, %struct.wined3d_context** %9, align 8
  %30 = icmp ne %struct.wined3d_context* %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %24
  %32 = load %struct.wined3d_fence*, %struct.wined3d_fence** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @ARB_SYNC, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @WINED3D_FENCE_WRONG_THREAD, align 4
  store i32 %45, i32* %4, align 4
  br label %144

46:                                               ; preds = %31
  %47 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %48 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %47, i32* null, i32 0)
  store %struct.wined3d_context* %48, %struct.wined3d_context** %9, align 8
  br label %49

49:                                               ; preds = %46, %24
  %50 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %51 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %50, i32 0, i32 0
  %52 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %51, align 8
  store %struct.wined3d_gl_info* %52, %struct.wined3d_gl_info** %8, align 8
  %53 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %54 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @ARB_SYNC, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %49
  %61 = load %struct.wined3d_fence*, %struct.wined3d_fence** %5, align 8
  %62 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @WINED3DGETDATA_FLUSH, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @GL_SYNC_FLUSH_COMMANDS_BIT, align 4
  br label %72

71:                                               ; preds = %60
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ]
  %74 = call i32 @glClientWaitSync(i32 %64, i32 %73, i32 0)
  %75 = call i8* @GL_EXTCALL(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %12, align 4
  %77 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* %12, align 4
  switch i32 %78, label %84 [
    i32 131, label %79
    i32 130, label %79
    i32 129, label %81
    i32 128, label %83
  ]

79:                                               ; preds = %72, %72
  %80 = load i32, i32* @WINED3D_FENCE_OK, align 4
  store i32 %80, i32* %10, align 4
  br label %88

81:                                               ; preds = %72
  %82 = load i32, i32* @WINED3D_FENCE_WAITING, align 4
  store i32 %82, i32* %10, align 4
  br label %88

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %72, %83
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @WINED3D_FENCE_ERROR, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %81, %79
  br label %140

89:                                               ; preds = %49
  %90 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %91 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* @APPLE_FENCE, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %89
  %98 = load %struct.wined3d_fence*, %struct.wined3d_fence** %5, align 8
  %99 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @glTestFenceAPPLE(i32 %101)
  %103 = call i8* @GL_EXTCALL(i32 %102)
  store i8* %103, i8** %11, align 8
  %104 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i8*, i8** %11, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* @WINED3D_FENCE_OK, align 4
  store i32 %108, i32* %10, align 4
  br label %111

109:                                              ; preds = %97
  %110 = load i32, i32* @WINED3D_FENCE_WAITING, align 4
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %109, %107
  br label %139

112:                                              ; preds = %89
  %113 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %114 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* @NV_FENCE, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %112
  %121 = load %struct.wined3d_fence*, %struct.wined3d_fence** %5, align 8
  %122 = getelementptr inbounds %struct.wined3d_fence, %struct.wined3d_fence* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @glTestFenceNV(i32 %124)
  %126 = call i8* @GL_EXTCALL(i32 %125)
  store i8* %126, i8** %11, align 8
  %127 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i8*, i8** %11, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @WINED3D_FENCE_OK, align 4
  store i32 %131, i32* %10, align 4
  br label %134

132:                                              ; preds = %120
  %133 = load i32, i32* @WINED3D_FENCE_WAITING, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %132, %130
  br label %138

135:                                              ; preds = %112
  %136 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* @WINED3D_FENCE_ERROR, align 4
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %135, %134
  br label %139

139:                                              ; preds = %138, %111
  br label %140

140:                                              ; preds = %139, %88
  %141 = load %struct.wined3d_context*, %struct.wined3d_context** %9, align 8
  %142 = call i32 @context_release(%struct.wined3d_context* %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %140, %43, %21
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.wined3d_context* @context_reacquire(%struct.wined3d_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i8* @GL_EXTCALL(i32) #1

declare dso_local i32 @glClientWaitSync(i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @glTestFenceAPPLE(i32) #1

declare dso_local i32 @glTestFenceNV(i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
