; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_create_and_bind_fbo_attachment.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_create_and_bind_fbo_attachment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (...)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32*)* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32 (i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)* }

@WINED3DFMT_FLAG_DEPTH = common dso_local global i32 0, align 4
@GL_DEPTH_ATTACHMENT = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_TEXTURE_1D = common dso_local global i32 0, align 4
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@GL_NEAREST = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@WINED3DFMT_FLAG_STENCIL = common dso_local global i32 0, align 4
@GL_STENCIL_ATTACHMENT = common dso_local global i32 0, align 4
@GL_TEXTURE_3D = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = common dso_local global i32 0, align 4
@GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = common dso_local global i32 0, align 4
@GL_RENDERBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i32, i32, i32*, i32, i32, i32)* @create_and_bind_fbo_attachment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_and_bind_fbo_attachment(%struct.wined3d_gl_info* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @WINED3DFMT_FLAG_DEPTH, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %7
  %21 = load i32, i32* @GL_DEPTH_ATTACHMENT, align 4
  br label %24

22:                                               ; preds = %7
  %23 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %10, align 4
  switch i32 %26, label %412 [
    i32 132, label %27
    i32 131, label %98
    i32 128, label %98
    i32 130, label %175
    i32 129, label %242
    i32 133, label %363
    i32 135, label %411
    i32 134, label %411
  ]

27:                                               ; preds = %24
  %28 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %29 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load i32 (i32, i32*)*, i32 (i32, i32*)** %31, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 %32(i32 1, i32* %33)
  %35 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %36 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32 (i32, i32)*, i32 (i32, i32)** %38, align 8
  %40 = load i32, i32* @GL_TEXTURE_1D, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %39(i32 %40, i32 %42)
  %44 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %45 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32*)** %47, align 8
  %49 = load i32, i32* @GL_TEXTURE_1D, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 %48(i32 %49, i32 0, i32 %50, i32 16, i32 0, i32 %51, i32 %52, i32* null)
  %54 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %55 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %57, align 8
  %59 = load i32, i32* @GL_TEXTURE_1D, align 4
  %60 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %61 = load i32, i32* @GL_NEAREST, align 4
  %62 = call i32 %58(i32 %59, i32 %60, i32 %61)
  %63 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %64 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %66, align 8
  %68 = load i32, i32* @GL_TEXTURE_1D, align 4
  %69 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %70 = load i32, i32* @GL_NEAREST, align 4
  %71 = call i32 %67(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %73 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 6
  %75 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %74, align 8
  %76 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @GL_TEXTURE_1D, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 %75(i32 %76, i32 %77, i32 %78, i32 %80, i32 0)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %27
  %87 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %88 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 6
  %90 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %89, align 8
  %91 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %92 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %93 = load i32, i32* @GL_TEXTURE_1D, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 %90(i32 %91, i32 %92, i32 %93, i32 %95, i32 0)
  br label %97

97:                                               ; preds = %86, %27
  br label %412

98:                                               ; preds = %24, %24
  %99 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %100 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 4
  %103 = load i32 (i32, i32*)*, i32 (i32, i32*)** %102, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 %103(i32 1, i32* %104)
  %106 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %107 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 3
  %110 = load i32 (i32, i32)*, i32 (i32, i32)** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @wined3d_gl_type_to_enum(i32 %111)
  %113 = load i32*, i32** %11, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 %110(i32 %112, i32 %114)
  %116 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %117 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @wined3d_gl_type_to_enum(i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 %120(i32 %122, i32 0, i32 %123, i32 16, i32 16, i32 0, i32 %124, i32 %125, i32* null)
  %127 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %128 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @wined3d_gl_type_to_enum(i32 %132)
  %134 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %135 = load i32, i32* @GL_NEAREST, align 4
  %136 = call i32 %131(i32 %133, i32 %134, i32 %135)
  %137 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %138 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @wined3d_gl_type_to_enum(i32 %142)
  %144 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %145 = load i32, i32* @GL_NEAREST, align 4
  %146 = call i32 %141(i32 %143, i32 %144, i32 %145)
  %147 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %148 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %149, align 8
  %151 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @wined3d_gl_type_to_enum(i32 %153)
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = call i32 %150(i32 %151, i32 %152, i32 %154, i32 %156, i32 0)
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %98
  %163 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %164 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %165, align 8
  %167 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %168 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @wined3d_gl_type_to_enum(i32 %169)
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 %166(i32 %167, i32 %168, i32 %170, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %162, %98
  br label %412

175:                                              ; preds = %24
  %176 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %177 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 4
  %180 = load i32 (i32, i32*)*, i32 (i32, i32*)** %179, align 8
  %181 = load i32*, i32** %11, align 8
  %182 = call i32 %180(i32 1, i32* %181)
  %183 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %184 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = load i32 (i32, i32)*, i32 (i32, i32)** %186, align 8
  %188 = load i32, i32* @GL_TEXTURE_3D, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %189, align 4
  %191 = call i32 %187(i32 %188, i32 %190)
  %192 = load i32, i32* @GL_TEXTURE_3D, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @glTexImage3D(i32 %192, i32 0, i32 %193, i32 16, i32 16, i32 16, i32 0, i32 %194, i32 %195, i32* null)
  %197 = call i32 @GL_EXTCALL(i32 %196)
  %198 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %199 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %201, align 8
  %203 = load i32, i32* @GL_TEXTURE_3D, align 4
  %204 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %205 = load i32, i32* @GL_NEAREST, align 4
  %206 = call i32 %202(i32 %203, i32 %204, i32 %205)
  %207 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %208 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %210, align 8
  %212 = load i32, i32* @GL_TEXTURE_3D, align 4
  %213 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %214 = load i32, i32* @GL_NEAREST, align 4
  %215 = call i32 %211(i32 %212, i32 %213, i32 %214)
  %216 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %217 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 5
  %219 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %218, align 8
  %220 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* @GL_TEXTURE_3D, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = load i32, i32* %223, align 4
  %225 = call i32 %219(i32 %220, i32 %221, i32 %222, i32 %224, i32 0, i32 0)
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %175
  %231 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %232 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 5
  %234 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %233, align 8
  %235 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %236 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %237 = load i32, i32* @GL_TEXTURE_3D, align 4
  %238 = load i32*, i32** %11, align 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 %234(i32 %235, i32 %236, i32 %237, i32 %239, i32 0, i32 0)
  br label %241

241:                                              ; preds = %230, %175
  br label %412

242:                                              ; preds = %24
  %243 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %244 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 4
  %247 = load i32 (i32, i32*)*, i32 (i32, i32*)** %246, align 8
  %248 = load i32*, i32** %11, align 8
  %249 = call i32 %247(i32 1, i32* %248)
  %250 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %251 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  %254 = load i32 (i32, i32)*, i32 (i32, i32)** %253, align 8
  %255 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %256 = load i32*, i32** %11, align 8
  %257 = load i32, i32* %256, align 4
  %258 = call i32 %254(i32 %255, i32 %257)
  %259 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %260 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 2
  %263 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %262, align 8
  %264 = load i32, i32* @GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* %14, align 4
  %268 = call i32 %263(i32 %264, i32 0, i32 %265, i32 16, i32 16, i32 0, i32 %266, i32 %267, i32* null)
  %269 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %270 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 2
  %273 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %272, align 8
  %274 = load i32, i32* @GL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %13, align 4
  %277 = load i32, i32* %14, align 4
  %278 = call i32 %273(i32 %274, i32 0, i32 %275, i32 16, i32 16, i32 0, i32 %276, i32 %277, i32* null)
  %279 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %280 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 2
  %283 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %282, align 8
  %284 = load i32, i32* @GL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB, align 4
  %285 = load i32, i32* %12, align 4
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* %14, align 4
  %288 = call i32 %283(i32 %284, i32 0, i32 %285, i32 16, i32 16, i32 0, i32 %286, i32 %287, i32* null)
  %289 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %290 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 2
  %293 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %292, align 8
  %294 = load i32, i32* @GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB, align 4
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %14, align 4
  %298 = call i32 %293(i32 %294, i32 0, i32 %295, i32 16, i32 16, i32 0, i32 %296, i32 %297, i32* null)
  %299 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %300 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 2
  %303 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %302, align 8
  %304 = load i32, i32* @GL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB, align 4
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %13, align 4
  %307 = load i32, i32* %14, align 4
  %308 = call i32 %303(i32 %304, i32 0, i32 %305, i32 16, i32 16, i32 0, i32 %306, i32 %307, i32* null)
  %309 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %310 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 2
  %313 = load i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32*)** %312, align 8
  %314 = load i32, i32* @GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB, align 4
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* %13, align 4
  %317 = load i32, i32* %14, align 4
  %318 = call i32 %313(i32 %314, i32 0, i32 %315, i32 16, i32 16, i32 0, i32 %316, i32 %317, i32* null)
  %319 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %320 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 1
  %323 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %322, align 8
  %324 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %325 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %326 = load i32, i32* @GL_NEAREST, align 4
  %327 = call i32 %323(i32 %324, i32 %325, i32 %326)
  %328 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %329 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  %332 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %331, align 8
  %333 = load i32, i32* @GL_TEXTURE_CUBE_MAP_ARB, align 4
  %334 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %335 = load i32, i32* @GL_NEAREST, align 4
  %336 = call i32 %332(i32 %333, i32 %334, i32 %335)
  %337 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %338 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 4
  %340 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %339, align 8
  %341 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %342 = load i32, i32* %15, align 4
  %343 = load i32, i32* @GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB, align 4
  %344 = load i32*, i32** %11, align 8
  %345 = load i32, i32* %344, align 4
  %346 = call i32 %340(i32 %341, i32 %342, i32 %343, i32 %345, i32 0)
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %362

351:                                              ; preds = %242
  %352 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %353 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 4
  %355 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %354, align 8
  %356 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %357 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %358 = load i32, i32* @GL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB, align 4
  %359 = load i32*, i32** %11, align 8
  %360 = load i32, i32* %359, align 4
  %361 = call i32 %355(i32 %356, i32 %357, i32 %358, i32 %360, i32 0)
  br label %362

362:                                              ; preds = %351, %242
  br label %412

363:                                              ; preds = %24
  %364 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %365 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 3
  %367 = load i32 (i32, i32*)*, i32 (i32, i32*)** %366, align 8
  %368 = load i32*, i32** %11, align 8
  %369 = call i32 %367(i32 1, i32* %368)
  %370 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %371 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i32 0, i32 2
  %373 = load i32 (i32, i32)*, i32 (i32, i32)** %372, align 8
  %374 = load i32, i32* @GL_RENDERBUFFER, align 4
  %375 = load i32*, i32** %11, align 8
  %376 = load i32, i32* %375, align 4
  %377 = call i32 %373(i32 %374, i32 %376)
  %378 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %379 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 1
  %381 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %380, align 8
  %382 = load i32, i32* @GL_RENDERBUFFER, align 4
  %383 = load i32, i32* %12, align 4
  %384 = call i32 %381(i32 %382, i32 %383, i32 16, i32 16)
  %385 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %386 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  %388 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %387, align 8
  %389 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* @GL_RENDERBUFFER, align 4
  %392 = load i32*, i32** %11, align 8
  %393 = load i32, i32* %392, align 4
  %394 = call i32 %388(i32 %389, i32 %390, i32 %391, i32 %393)
  %395 = load i32, i32* %9, align 4
  %396 = load i32, i32* @WINED3DFMT_FLAG_STENCIL, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %410

399:                                              ; preds = %363
  %400 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %401 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 0
  %403 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %402, align 8
  %404 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %405 = load i32, i32* @GL_STENCIL_ATTACHMENT, align 4
  %406 = load i32, i32* @GL_RENDERBUFFER, align 4
  %407 = load i32*, i32** %11, align 8
  %408 = load i32, i32* %407, align 4
  %409 = call i32 %403(i32 %404, i32 %405, i32 %406, i32 %408)
  br label %410

410:                                              ; preds = %399, %363
  br label %412

411:                                              ; preds = %24, %24
  br label %412

412:                                              ; preds = %24, %411, %410, %362, %241, %174, %97
  br label %413

413:                                              ; preds = %421, %412
  %414 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %415 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 0
  %418 = load i64 (...)*, i64 (...)** %417, align 8
  %419 = call i64 (...) %418()
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %413
  br label %413

422:                                              ; preds = %413
  ret void
}

declare dso_local i32 @wined3d_gl_type_to_enum(i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glTexImage3D(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
