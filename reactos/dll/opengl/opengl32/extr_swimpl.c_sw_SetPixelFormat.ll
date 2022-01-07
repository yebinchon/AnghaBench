; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_SetPixelFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_SetPixelFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wgl_dc_data = type { %struct.sw_framebuffer* }
%struct.sw_framebuffer = type { i32, i32, i32, %struct.pixel_format* }
%struct.pixel_format = type { i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"OpenGL software implementation START for hdc %p, format %i!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"HeapAlloc FAILED!\0A\00", align 1
@PFD_TYPE_RGBA = common dso_local global i64 0, align 8
@PFD_DOUBLEBUFFER = common dso_local global i32 0, align 4
@STENCIL_BITS = common dso_local global i32 0, align 4
@PFD_TYPE_COLORINDEX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate a GL visual.\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to allocate the mesa framebuffer structure.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sw_SetPixelFormat(i32 %0, %struct.wgl_dc_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.wgl_dc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sw_framebuffer*, align 8
  %9 = alloca %struct.pixel_format*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.wgl_dc_data* %1, %struct.wgl_dc_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.pixel_format* @get_format(i32 %13, i32* null)
  store %struct.pixel_format* %14, %struct.pixel_format** %9, align 8
  %15 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %16 = icmp ne %struct.pixel_format* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %4, align 4
  br label %165

19:                                               ; preds = %3
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %22 = call %struct.sw_framebuffer* @HeapAlloc(i32 %20, i32 %21, i32 24)
  store %struct.sw_framebuffer* %22, %struct.sw_framebuffer** %8, align 8
  %23 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %24 = icmp ne %struct.sw_framebuffer* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %165

28:                                               ; preds = %19
  %29 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %30 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %31 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %30, i32 0, i32 3
  store %struct.pixel_format* %29, %struct.pixel_format** %31, align 8
  %32 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %33 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PFD_TYPE_RGBA, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %39 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %44 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @PFD_DOUBLEBUFFER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %51 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @STENCIL_BITS, align 4
  %54 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %55 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %58 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @max(i32 %56, i32 %59)
  %61 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %62 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @max(i32 %60, i32 %63)
  %65 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %66 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @max(i32 %64, i32 %67)
  %69 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %70 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PFD_TYPE_COLORINDEX, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %28
  %75 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %76 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  br label %79

78:                                               ; preds = %28
  br label %79

79:                                               ; preds = %78, %74
  %80 = phi i32 [ %77, %74 ], [ 0, %78 ]
  %81 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %82 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = shl i64 1, %83
  %85 = sub i64 %84, 1
  %86 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %87 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = shl i64 1, %88
  %90 = sub i64 %89, 1
  %91 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %92 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = shl i64 1, %93
  %95 = sub i64 %94, 1
  %96 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %97 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %79
  %101 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %102 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = shl i64 1, %103
  %105 = sub i64 %104, 1
  %106 = uitofp i64 %105 to float
  br label %108

107:                                              ; preds = %79
  br label %108

108:                                              ; preds = %107, %100
  %109 = phi float [ %106, %100 ], [ 2.550000e+02, %107 ]
  %110 = fptoui float %109 to i64
  %111 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %112 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %115 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %118 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.pixel_format*, %struct.pixel_format** %9, align 8
  %121 = getelementptr inbounds %struct.pixel_format, %struct.pixel_format* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @gl_create_visual(i32 %37, i32 %42, i32 %49, i32 %52, i32 %53, i32 %68, i32 %80, i64 %85, i64 %90, i64 %95, i64 %110, i64 %113, i64 %116, i64 %119, i64 %122)
  %124 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %125 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %127 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %108
  %131 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %132 = call i32 (...) @GetProcessHeap()
  %133 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %134 = call i32 @HeapFree(i32 %132, i32 0, %struct.sw_framebuffer* %133)
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %4, align 4
  br label %165

136:                                              ; preds = %108
  %137 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %138 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @gl_create_framebuffer(i32 %139)
  %141 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %142 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %144 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %136
  %148 = call i32 @ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %150 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @gl_destroy_visual(i32 %151)
  %153 = call i32 (...) @GetProcessHeap()
  %154 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %155 = call i32 @HeapFree(i32 %153, i32 0, %struct.sw_framebuffer* %154)
  %156 = load i32, i32* @FALSE, align 4
  store i32 %156, i32* %4, align 4
  br label %165

157:                                              ; preds = %136
  %158 = load i32, i32* %5, align 4
  %159 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %160 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %8, align 8
  %162 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %6, align 8
  %163 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %162, i32 0, i32 0
  store %struct.sw_framebuffer* %161, %struct.sw_framebuffer** %163, align 8
  %164 = load i32, i32* @TRUE, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %157, %147, %130, %25, %17
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local %struct.pixel_format* @get_format(i32, i32*) #1

declare dso_local %struct.sw_framebuffer* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @gl_create_visual(i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.sw_framebuffer*) #1

declare dso_local i32 @gl_create_framebuffer(i32) #1

declare dso_local i32 @gl_destroy_visual(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
