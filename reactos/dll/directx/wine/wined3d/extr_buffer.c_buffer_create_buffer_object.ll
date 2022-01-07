; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_create_buffer_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_buffer.c_buffer_create_buffer_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_buffer = type { i32, i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_6__, i64* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (...)* }

@GL_STATIC_DRAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"Creating an OpenGL buffer object for wined3d_buffer %p with usage %s.\0A\00", align 1
@GL_NO_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to create a BO with error %s (%#x).\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to bind the BO with error %s (%#x).\0A\00", align 1
@WINED3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Buffer has WINED3DUSAGE_DYNAMIC set.\0A\00", align 1
@GL_STREAM_DRAW_ARB = common dso_local global i64 0, align 8
@APPLE_FLUSH_BUFFER_RANGE = common dso_local global i64 0, align 8
@GL_BUFFER_FLUSHING_UNMAP_APPLE = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@GL_BUFFER_SERIALIZED_MODIFY_APPLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"glBufferParameteriAPPLE\00", align 1
@WINED3D_BUFFER_APPLESYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"glBufferData failed with error %s (%#x).\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [81 x i8] c"Failed to create a buffer object. Continuing, but performance issues may occur.\0A\00", align 1
@WINED3D_BUFFER_USE_BO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_buffer*, %struct.wined3d_context*)* @buffer_create_buffer_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buffer_create_buffer_object(%struct.wined3d_buffer* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_buffer*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_gl_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wined3d_buffer* %0, %struct.wined3d_buffer** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %6, align 8
  %12 = load i64, i64* @GL_STATIC_DRAW, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %14 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @debug_d3dusage(i32 %17)
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %struct.wined3d_buffer* %13, i32 %18)
  br label %20

20:                                               ; preds = %29, %2
  %21 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %22 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64 (...)*, i64 (...)** %24, align 8
  %26 = call i64 (...) %25()
  %27 = load i64, i64* @GL_NO_ERROR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %20

30:                                               ; preds = %20
  %31 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %31, i32 0, i32 4
  %33 = call i32 @glGenBuffers(i32 1, i32* %32)
  %34 = call i32 @GL_EXTCALL(i32 %33)
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64 (...)*, i64 (...)** %38, align 8
  %40 = call i64 (...) %39()
  store i64 %40, i64* %8, align 8
  %41 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @GL_NO_ERROR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45, %30
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @debug_glerror(i64 %50)
  %52 = load i64, i64* %8, align 8
  %53 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %52)
  br label %144

54:                                               ; preds = %45
  %55 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %56 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %57 = call i32 @buffer_bind(%struct.wined3d_buffer* %55, %struct.wined3d_context* %56)
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64 (...)*, i64 (...)** %61, align 8
  %63 = call i64 (...) %62()
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @GL_NO_ERROR, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %54
  %68 = load i64, i64* %8, align 8
  %69 = call i32 @debug_glerror(i64 %68)
  %70 = load i64, i64* %8, align 8
  %71 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %69, i64 %70)
  br label %144

72:                                               ; preds = %54
  %73 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %74 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @WINED3DUSAGE_DYNAMIC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %72
  %81 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i64, i64* @GL_STREAM_DRAW_ARB, align 8
  store i64 %82, i64* %7, align 8
  %83 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %84 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @APPLE_FLUSH_BUFFER_RANGE, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %111

90:                                               ; preds = %80
  %91 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %92 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @GL_BUFFER_FLUSHING_UNMAP_APPLE, align 4
  %95 = load i32, i32* @GL_FALSE, align 4
  %96 = call i32 @glBufferParameteriAPPLE(i32 %93, i32 %94, i32 %95)
  %97 = call i32 @GL_EXTCALL(i32 %96)
  %98 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %99 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GL_BUFFER_SERIALIZED_MODIFY_APPLE, align 4
  %102 = load i32, i32* @GL_FALSE, align 4
  %103 = call i32 @glBufferParameteriAPPLE(i32 %100, i32 %101, i32 %102)
  %104 = call i32 @GL_EXTCALL(i32 %103)
  %105 = call i32 @checkGLcall(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @WINED3D_BUFFER_APPLESYNC, align 4
  %107 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %108 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %90, %80
  br label %112

112:                                              ; preds = %111, %72
  %113 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %114 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %117 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @glBufferData(i32 %115, i32 %119, i32* null, i64 %120)
  %122 = call i32 @GL_EXTCALL(i32 %121)
  %123 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %6, align 8
  %124 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i64 (...)*, i64 (...)** %126, align 8
  %128 = call i64 (...) %127()
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* @GL_NO_ERROR, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %112
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @debug_glerror(i64 %133)
  %135 = load i64, i64* %8, align 8
  %136 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %134, i64 %135)
  br label %144

137:                                              ; preds = %112
  %138 = load i64, i64* %7, align 8
  %139 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %140 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  %141 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %142 = call i32 @buffer_invalidate_bo_range(%struct.wined3d_buffer* %141, i32 0, i32 0)
  %143 = load i32, i32* @TRUE, align 4
  store i32 %143, i32* %3, align 4
  br label %158

144:                                              ; preds = %132, %67, %49
  %145 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  %146 = load i32, i32* @WINED3D_BUFFER_USE_BO, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %149 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %153 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %154 = call i32 @buffer_destroy_buffer_object(%struct.wined3d_buffer* %152, %struct.wined3d_context* %153)
  %155 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %4, align 8
  %156 = call i32 @buffer_clear_dirty_areas(%struct.wined3d_buffer* %155)
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %144, %137
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debug_d3dusage(i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @debug_glerror(i64) #1

declare dso_local i32 @buffer_bind(%struct.wined3d_buffer*, %struct.wined3d_context*) #1

declare dso_local i32 @glBufferParameteriAPPLE(i32, i32, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @glBufferData(i32, i32, i32*, i64) #1

declare dso_local i32 @buffer_invalidate_bo_range(%struct.wined3d_buffer*, i32, i32) #1

declare dso_local i32 @buffer_destroy_buffer_object(%struct.wined3d_buffer*, %struct.wined3d_context*) #1

declare dso_local i32 @buffer_clear_dirty_areas(%struct.wined3d_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
