; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_caps_gl_ctx_test_viewport_subpixel_bits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_caps_gl_ctx_test_viewport_subpixel_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_color = type { float, float, float, float }
%struct.wined3d_caps_gl_ctx = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32*)*, i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32)*, i32 (i32)*, i32 (float, float, float, float)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32)*, i32 (i32, i32*)* }

@wined3d_caps_gl_ctx_test_viewport_subpixel_bits.red = internal constant %struct.wined3d_color { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, align 4
@wined3d_caps_gl_ctx_test_viewport_subpixel_bits.offset = internal constant float 0xBFDF800000000000, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_TEXTURE_MAX_LEVEL = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_BGRA = common dso_local global i32 0, align 4
@GL_UNSIGNED_INT_8_8_8_8_REV = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"create resources\00", align 1
@GL_COLOR_BUFFER_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"readback\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Readback colors are 0x%08x, 0x%08x, 0x%08x, 0x%08x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"delete resources\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wined3d_caps_gl_ctx_test_viewport_subpixel_bits(%struct.wined3d_caps_gl_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %4 = alloca %struct.wined3d_gl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_caps_gl_ctx** %3, align 8
  %9 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %9, i32 0, i32 0
  %11 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  store %struct.wined3d_gl_info* %11, %struct.wined3d_gl_info** %4, align 8
  %12 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 7
  %16 = load i32 (i32, i32*)*, i32 (i32, i32*)** %15, align 8
  %17 = call i32 %16(i32 1, i32* %5)
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* @GL_TEXTURE_2D, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %22(i32 %23, i32 %24)
  %26 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 6
  %30 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %29, align 8
  %31 = load i32, i32* @GL_TEXTURE_2D, align 4
  %32 = load i32, i32* @GL_TEXTURE_MAX_LEVEL, align 4
  %33 = call i32 %30(i32 %31, i32 %32, i32 0)
  %34 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 5
  %38 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %37, align 8
  %39 = load i32, i32* @GL_TEXTURE_2D, align 4
  %40 = load i32, i32* @GL_RGBA8, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i32* %41)
  %43 = load i32, i32* @GL_BGRA, align 4
  %44 = load i32, i32* @GL_UNSIGNED_INT_8_8_8_8_REV, align 4
  %45 = call i32 %38(i32 %39, i32 0, i32 %40, i32 %42, i32 1, i32 0, i32 %43, i32 %44, i32* null)
  %46 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i32 (i32, i32*)*, i32 (i32, i32*)** %48, align 8
  %50 = call i32 %49(i32 1, i32* %6)
  %51 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %52 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (i32, i32)*, i32 (i32, i32)** %53, align 8
  %55 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 %54(i32 %55, i32 %56)
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %59 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %60, align 8
  %62 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %63 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %64 = load i32, i32* @GL_TEXTURE_2D, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 %61(i32 %62, i32 %63, i32 %64, i32 %65, i32 0)
  %67 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %68 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %69 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  %72 = load i32 (float, float, float, float)*, i32 (float, float, float, float)** %71, align 8
  %73 = call i32 %72(float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)
  %74 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %75 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32 (i32)*, i32 (i32)** %77, align 8
  %79 = load i32, i32* @GL_COLOR_BUFFER_BIT, align 4
  %80 = call i32 %78(i32 %79)
  %81 = call i32 @glViewportIndexedf(i32 0, float 0xBFDF800000000000, float 0xBFDF800000000000, float 4.000000e+00, float 1.000000e+00)
  %82 = call i32 @GL_EXTCALL(i32 %81)
  %83 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %3, align 8
  %84 = call i32 @draw_test_quad(%struct.wined3d_caps_gl_ctx* %83, i32* null, %struct.wined3d_color* @wined3d_caps_gl_ctx_test_viewport_subpixel_bits.red)
  %85 = call i32 @checkGLcall(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %87 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32 (i32, i32)*, i32 (i32, i32)** %89, align 8
  %91 = load i32, i32* @GL_TEXTURE_2D, align 4
  %92 = load i32, i32* %5, align 4
  %93 = call i32 %90(i32 %91, i32 %92)
  %94 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %95 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32*)** %97, align 8
  %99 = load i32, i32* @GL_TEXTURE_2D, align 4
  %100 = load i32, i32* @GL_BGRA, align 4
  %101 = load i32, i32* @GL_UNSIGNED_INT_8_8_8_8_REV, align 4
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %103 = call i32 %98(i32 %99, i32 0, i32 %100, i32 %101, i32* %102)
  %104 = call i32 @checkGLcall(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %106 = load i32, i32* %105, align 16
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %106, i32 %108, i32 %110, i32 %112)
  %114 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %115 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32 (i32, i32*)*, i32 (i32, i32*)** %117, align 8
  %119 = call i32 %118(i32 1, i32* %5)
  %120 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %121 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32 (i32, i32*)*, i32 (i32, i32*)** %122, align 8
  %124 = call i32 %123(i32 1, i32* %6)
  %125 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %4, align 8
  %126 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32 (i32, i32)*, i32 (i32, i32)** %127, align 8
  %129 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %130 = call i32 %128(i32 %129, i32 0)
  %131 = call i32 @checkGLcall(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %146, %1
  %133 = load i32, i32* %8, align 4
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %135 = call i32 @ARRAY_SIZE(i32* %134)
  %136 = icmp ult i32 %133, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, -65536
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %2, align 4
  br label %151

145:                                              ; preds = %137
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %8, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %8, align 4
  br label %132

149:                                              ; preds = %132
  %150 = load i32, i32* @TRUE, align 4
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %149, %143
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glViewportIndexedf(i32, float, float, float, float) #1

declare dso_local i32 @draw_test_quad(%struct.wined3d_caps_gl_ctx*, i32*, %struct.wined3d_color*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
