; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_draw_test_quad.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_draw_test_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_vec3 = type { float, float, float, i32 }
%struct.wined3d_caps_gl_ctx = type { i8*, i32, %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)*, i32 (...)*, i32 (i32*)*, i32 (i32, i32, i32, i32)*, i32 (i32)*, i32 (...)*, i32 (i32)*, i32 (i32)* }
%struct.wined3d_color = type { i32, i32, i32, i32 }

@draw_test_quad.default_geometry = internal constant [4 x %struct.wined3d_vec3] [%struct.wined3d_vec3 { float -1.000000e+00, float -1.000000e+00, float 0.000000e+00, i32 0 }, %struct.wined3d_vec3 { float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, i32 0 }, %struct.wined3d_vec3 { float -1.000000e+00, float 1.000000e+00, float 0.000000e+00, i32 0 }, %struct.wined3d_vec3 { float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, i32 0 }], align 16
@draw_test_quad.vs_core_header = internal constant [63 x i8] c"#version 150\0Ain vec4 pos;\0Ain vec4 color;\0Aout vec4 out_color;\0A\0A\00", align 16
@draw_test_quad.vs_legacy_header = internal constant [81 x i8] c"#version 120\0Aattribute vec4 pos;\0Aattribute vec4 color;\0Avarying vec4 out_color;\0A\0A\00", align 16
@draw_test_quad.vs_body = internal constant [63 x i8] c"void main()\0A{\0A    gl_Position = pos;\0A    out_color = color;\0A}\0A\00", align 16
@draw_test_quad.fs_core = internal constant [107 x i8] c"#version 150\0Ain vec4 out_color;\0Aout vec4 fragment_color;\0A\0Avoid main()\0A{\0A    fragment_color = out_color;\0A}\0A\00", align 16
@draw_test_quad.fs_legacy = internal constant [87 x i8] c"#version 120\0Avarying vec4 out_color;\0A\0Avoid main()\0A{\0A    gl_FragData[0] = out_color;\0A}\0A\00", align 16
@ARB_VERTEX_BUFFER_OBJECT = common dso_local global i64 0, align 8
@ARB_VERTEX_SHADER = common dso_local global i64 0, align 8
@ARB_FRAGMENT_SHADER = common dso_local global i64 0, align 8
@GL_LIGHTING = common dso_local global i32 0, align 4
@GL_MODELVIEW = common dso_local global i32 0, align 4
@GL_PROJECTION = common dso_local global i32 0, align 4
@GL_TRIANGLE_STRIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"draw quad\00", align 1
@GL_ARRAY_BUFFER = common dso_local global i32 0, align 4
@GL_STREAM_DRAW = common dso_local global i32 0, align 4
@GL_FLOAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fragment_color\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_caps_gl_ctx*, %struct.wined3d_vec3*, %struct.wined3d_color*)* @draw_test_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_test_quad(%struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_vec3* %1, %struct.wined3d_color* %2) #0 {
  %4 = alloca %struct.wined3d_caps_gl_ctx*, align 8
  %5 = alloca %struct.wined3d_vec3*, align 8
  %6 = alloca %struct.wined3d_color*, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_caps_gl_ctx* %0, %struct.wined3d_caps_gl_ctx** %4, align 8
  store %struct.wined3d_vec3* %1, %struct.wined3d_vec3** %5, align 8
  store %struct.wined3d_color* %2, %struct.wined3d_color** %6, align 8
  %13 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %13, i32 0, i32 2
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %7, align 8
  %16 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %5, align 8
  %17 = icmp ne %struct.wined3d_vec3* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.wined3d_vec3* getelementptr inbounds ([4 x %struct.wined3d_vec3], [4 x %struct.wined3d_vec3]* @draw_test_quad.default_geometry, i64 0, i64 0), %struct.wined3d_vec3** %5, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %21 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @ARB_VERTEX_BUFFER_OBJECT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %19
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @ARB_VERTEX_SHADER, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %37 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @ARB_FRAGMENT_SHADER, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %128, label %43

43:                                               ; preds = %35, %27, %19
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 7
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = load i32, i32* @GL_LIGHTING, align 4
  %50 = call i32 %48(i32 %49)
  %51 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 6
  %55 = load i32 (i32)*, i32 (i32)** %54, align 8
  %56 = load i32, i32* @GL_MODELVIEW, align 4
  %57 = call i32 %55(i32 %56)
  %58 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %59 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i32 (...)*, i32 (...)** %61, align 8
  %63 = call i32 (...) %62()
  %64 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %65 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  %68 = load i32 (i32)*, i32 (i32)** %67, align 8
  %69 = load i32, i32* @GL_PROJECTION, align 4
  %70 = call i32 %68(i32 %69)
  %71 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %72 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 5
  %75 = load i32 (...)*, i32 (...)** %74, align 8
  %76 = call i32 (...) %75()
  %77 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %78 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 4
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %83 = call i32 %81(i32 %82)
  %84 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %85 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %87, align 8
  %89 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %90 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %93 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %96 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %99 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %88(i32 %91, i32 %94, i32 %97, i32 %100)
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %117, %43
  %103 = load i32, i32* %11, align 4
  %104 = icmp ult i32 %103, 4
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %107 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  %110 = load i32 (i32*)*, i32 (i32*)** %109, align 8
  %111 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %5, align 8
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %111, i64 %113
  %115 = getelementptr inbounds %struct.wined3d_vec3, %struct.wined3d_vec3* %114, i32 0, i32 3
  %116 = call i32 %110(i32* %115)
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %11, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %102

120:                                              ; preds = %102
  %121 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %122 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i32 (...)*, i32 (...)** %124, align 8
  %126 = call i32 (...) %125()
  %127 = call i32 @checkGLcall(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %294

128:                                              ; preds = %35
  %129 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %130 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %128
  %134 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %135 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %134, i32 0, i32 1
  %136 = call i32 @glGenBuffers(i32 1, i32* %135)
  %137 = call i8* @GL_EXTCALL(i32 %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %140 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %141 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @glBindBuffer(i32 %139, i32 %142)
  %144 = call i8* @GL_EXTCALL(i32 %143)
  %145 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %146 = load %struct.wined3d_vec3*, %struct.wined3d_vec3** %5, align 8
  %147 = load i32, i32* @GL_STREAM_DRAW, align 4
  %148 = call i32 @glBufferData(i32 %145, i32 64, %struct.wined3d_vec3* %146, i32 %147)
  %149 = call i8* @GL_EXTCALL(i32 %148)
  %150 = load i32, i32* @GL_FLOAT, align 4
  %151 = load i32, i32* @FALSE, align 4
  %152 = call i32 @glVertexAttribPointer(i32 0, i32 3, i32 %150, i32 %151, i32 0, i32* null)
  %153 = call i8* @GL_EXTCALL(i32 %152)
  %154 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %155 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %158 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %161 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %164 = getelementptr inbounds %struct.wined3d_color, %struct.wined3d_color* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @glVertexAttrib4f(i32 1, i32 %156, i32 %159, i32 %162, i32 %165)
  %167 = call i8* @GL_EXTCALL(i32 %166)
  %168 = call i32 @glEnableVertexAttribArray(i32 0)
  %169 = call i8* @GL_EXTCALL(i32 %168)
  %170 = call i32 @glDisableVertexAttribArray(i32 1)
  %171 = call i8* @GL_EXTCALL(i32 %170)
  %172 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %173 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %273, label %176

176:                                              ; preds = %138
  %177 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %178 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @MAKEDWORD_VERSION(i32 1, i32 50)
  %181 = icmp sge i64 %179, %180
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %12, align 4
  %183 = call i32 (...) @glCreateProgram()
  %184 = call i8* @GL_EXTCALL(i32 %183)
  %185 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %186 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %188 = call i32 @glCreateShader(i32 %187)
  %189 = call i8* @GL_EXTCALL(i32 %188)
  store i8* %189, i8** %9, align 8
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @draw_test_quad.vs_core_header, i64 0, i64 0), i8* getelementptr inbounds ([81 x i8], [81 x i8]* @draw_test_quad.vs_legacy_header, i64 0, i64 0)
  %194 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8* %193, i8** %194, align 16
  %195 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @draw_test_quad.vs_body, i64 0, i64 0), i8** %195, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %198 = call i32 @glShaderSource(i8* %196, i32 2, i8** %197, i32* null)
  %199 = call i8* @GL_EXTCALL(i32 %198)
  %200 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %201 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 @glAttachShader(i8* %202, i8* %203)
  %205 = call i8* @GL_EXTCALL(i32 %204)
  %206 = load i8*, i8** %9, align 8
  %207 = call i32 @glDeleteShader(i8* %206)
  %208 = call i8* @GL_EXTCALL(i32 %207)
  %209 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %210 = call i32 @glCreateShader(i32 %209)
  %211 = call i8* @GL_EXTCALL(i32 %210)
  store i8* %211, i8** %10, align 8
  %212 = load i32, i32* %12, align 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @draw_test_quad.fs_core, i64 0, i64 0), i8* getelementptr inbounds ([87 x i8], [87 x i8]* @draw_test_quad.fs_legacy, i64 0, i64 0)
  %216 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8* %215, i8** %216, align 16
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %219 = call i32 @glShaderSource(i8* %217, i32 1, i8** %218, i32* null)
  %220 = call i8* @GL_EXTCALL(i32 %219)
  %221 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %222 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 @glAttachShader(i8* %223, i8* %224)
  %226 = call i8* @GL_EXTCALL(i32 %225)
  %227 = load i8*, i8** %10, align 8
  %228 = call i32 @glDeleteShader(i8* %227)
  %229 = call i8* @GL_EXTCALL(i32 %228)
  %230 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %231 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = call i32 @glBindAttribLocation(i8* %232, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %234 = call i8* @GL_EXTCALL(i32 %233)
  %235 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %236 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @glBindAttribLocation(i8* %237, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %239 = call i8* @GL_EXTCALL(i32 %238)
  %240 = load i32, i32* %12, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %176
  %243 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %244 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @glBindFragDataLocation(i8* %245, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %247 = call i8* @GL_EXTCALL(i32 %246)
  br label %248

248:                                              ; preds = %242, %176
  %249 = load i8*, i8** %9, align 8
  %250 = call i32 @glCompileShader(i8* %249)
  %251 = call i8* @GL_EXTCALL(i32 %250)
  %252 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %253 = load i8*, i8** %9, align 8
  %254 = load i32, i32* @FALSE, align 4
  %255 = call i32 @print_glsl_info_log(%struct.wined3d_gl_info* %252, i8* %253, i32 %254)
  %256 = load i8*, i8** %10, align 8
  %257 = call i32 @glCompileShader(i8* %256)
  %258 = call i8* @GL_EXTCALL(i32 %257)
  %259 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %260 = load i8*, i8** %10, align 8
  %261 = load i32, i32* @FALSE, align 4
  %262 = call i32 @print_glsl_info_log(%struct.wined3d_gl_info* %259, i8* %260, i32 %261)
  %263 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %264 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @glLinkProgram(i8* %265)
  %267 = call i8* @GL_EXTCALL(i32 %266)
  %268 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %269 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %270 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @shader_glsl_validate_link(%struct.wined3d_gl_info* %268, i8* %271)
  br label %273

273:                                              ; preds = %248, %138
  %274 = load %struct.wined3d_caps_gl_ctx*, %struct.wined3d_caps_gl_ctx** %4, align 8
  %275 = getelementptr inbounds %struct.wined3d_caps_gl_ctx, %struct.wined3d_caps_gl_ctx* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @glUseProgram(i8* %276)
  %278 = call i8* @GL_EXTCALL(i32 %277)
  %279 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %7, align 8
  %280 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 0
  %283 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %282, align 8
  %284 = load i32, i32* @GL_TRIANGLE_STRIP, align 4
  %285 = call i32 %283(i32 %284, i32 0, i32 4)
  %286 = call i32 @glUseProgram(i8* null)
  %287 = call i8* @GL_EXTCALL(i32 %286)
  %288 = call i32 @glDisableVertexAttribArray(i32 0)
  %289 = call i8* @GL_EXTCALL(i32 %288)
  %290 = load i32, i32* @GL_ARRAY_BUFFER, align 4
  %291 = call i32 @glBindBuffer(i32 %290, i32 0)
  %292 = call i8* @GL_EXTCALL(i32 %291)
  %293 = call i32 @checkGLcall(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %294

294:                                              ; preds = %273, %120
  ret void
}

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i8* @GL_EXTCALL(i32) #1

declare dso_local i32 @glGenBuffers(i32, i32*) #1

declare dso_local i32 @glBindBuffer(i32, i32) #1

declare dso_local i32 @glBufferData(i32, i32, %struct.wined3d_vec3*, i32) #1

declare dso_local i32 @glVertexAttribPointer(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @glVertexAttrib4f(i32, i32, i32, i32, i32) #1

declare dso_local i32 @glEnableVertexAttribArray(i32) #1

declare dso_local i32 @glDisableVertexAttribArray(i32) #1

declare dso_local i64 @MAKEDWORD_VERSION(i32, i32) #1

declare dso_local i32 @glCreateProgram(...) #1

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @glShaderSource(i8*, i32, i8**, i32*) #1

declare dso_local i32 @glAttachShader(i8*, i8*) #1

declare dso_local i32 @glDeleteShader(i8*) #1

declare dso_local i32 @glBindAttribLocation(i8*, i32, i8*) #1

declare dso_local i32 @glBindFragDataLocation(i8*, i32, i8*) #1

declare dso_local i32 @glCompileShader(i8*) #1

declare dso_local i32 @print_glsl_info_log(%struct.wined3d_gl_info*, i8*, i32) #1

declare dso_local i32 @glLinkProgram(i8*) #1

declare dso_local i32 @shader_glsl_validate_link(%struct.wined3d_gl_info*, i8*) #1

declare dso_local i32 @glUseProgram(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
