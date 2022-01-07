; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_d3d_size_dependent_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_d3d_size_dependent_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (i32, i32)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32*)*, i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32*)*, i32 (i32, i32*)* }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Couldn't get swap chain: %s\0A\00", align 1
@IID_IDirect3DSwapChain9Ex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Obtained swap chain is not IDirect3DSwapChain9Ex: %s\0A\00", align 1
@D3DBACKBUFFER_TYPE_MONO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Couldn't get backbuffer: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"DX_interop backbuffer size: %ux%u\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"DX_interop backbuffer format: %u\0A\00", align 1
@D3DMULTISAMPLE_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Couldn't create rendertarget: %s\0A\00", align 1
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@WGL_ACCESS_WRITE_DISCARD_NV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Couldn't share rendertarget with OpenGL: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Couldn't lock rendertarget: %s\0A\00", align 1
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @d3d_size_dependent_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d_size_dependent_create(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %5, align 8
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IDirect3DDevice9Ex_GetSwapChain(i32 %17, i32 0, i32** %7)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @FAILED(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @mp_HRESULT_to_str(i32 %26)
  %28 = call i32 @MP_ERR(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %2, align 4
  br label %201

29:                                               ; preds = %1
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.priv*, %struct.priv** %4, align 8
  %32 = getelementptr inbounds %struct.priv, %struct.priv* %31, i32 0, i32 7
  %33 = bitcast i32* %32 to i8**
  %34 = call i32 @IDirect3DSwapChain9_QueryInterface(i32* %30, i32* @IID_IDirect3DSwapChain9Ex, i8** %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @FAILED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %29
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @SAFE_RELEASE(i32* %39)
  %41 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mp_HRESULT_to_str(i32 %44)
  %46 = call i32 @MP_ERR(i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %2, align 4
  br label %201

47:                                               ; preds = %29
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @SAFE_RELEASE(i32* %48)
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @D3DBACKBUFFER_TYPE_MONO, align 4
  %54 = load %struct.priv*, %struct.priv** %4, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 6
  %56 = call i32 @IDirect3DSwapChain9Ex_GetBackBuffer(i32 %52, i32 0, i32 %53, i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @FAILED(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @mp_HRESULT_to_str(i32 %64)
  %66 = call i32 @MP_ERR(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %2, align 4
  br label %201

67:                                               ; preds = %47
  %68 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %68, i8 0, i64 32, i1 false)
  %69 = load %struct.priv*, %struct.priv** %4, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @IDirect3DSurface9_GetDesc(i32 %71, %struct.TYPE_5__* %8)
  %73 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i32, i8*, i32, ...) @MP_VERBOSE(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i32, i8*, i32, ...) @MP_VERBOSE(i32 %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  store i32* null, i32** %9, align 8
  %90 = load %struct.priv*, %struct.priv** %4, align 8
  %91 = getelementptr inbounds %struct.priv, %struct.priv* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* @D3DMULTISAMPLE_NONE, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = load %struct.priv*, %struct.priv** %4, align 8
  %102 = getelementptr inbounds %struct.priv, %struct.priv* %101, i32 0, i32 4
  %103 = call i32 @IDirect3DDevice9Ex_CreateRenderTarget(i32 %92, i64 %94, i64 %96, i64 %98, i32 %99, i32 0, i32 %100, i32* %102, i32** %9)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @FAILED(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %67
  %108 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @mp_HRESULT_to_str(i32 %111)
  %113 = call i32 @MP_ERR(i32 %110, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  store i32 -1, i32* %2, align 4
  br label %201

114:                                              ; preds = %67
  %115 = load i32*, i32** %9, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 5
  %120 = load i32 (i32, i32*)*, i32 (i32, i32*)** %119, align 8
  %121 = load %struct.priv*, %struct.priv** %4, align 8
  %122 = getelementptr inbounds %struct.priv, %struct.priv* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = call i32 %120(i32 %123, i32* %124)
  br label %126

126:                                              ; preds = %117, %114
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i32 (i32, i32*)*, i32 (i32, i32*)** %128, align 8
  %130 = load %struct.priv*, %struct.priv** %4, align 8
  %131 = getelementptr inbounds %struct.priv, %struct.priv* %130, i32 0, i32 0
  %132 = call i32 %129(i32 1, i32* %131)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  %135 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %134, align 8
  %136 = load %struct.priv*, %struct.priv** %4, align 8
  %137 = getelementptr inbounds %struct.priv, %struct.priv* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.priv*, %struct.priv** %4, align 8
  %140 = getelementptr inbounds %struct.priv, %struct.priv* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.priv*, %struct.priv** %4, align 8
  %143 = getelementptr inbounds %struct.priv, %struct.priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @GL_TEXTURE_2D, align 4
  %146 = load i32, i32* @WGL_ACCESS_WRITE_DISCARD_NV, align 4
  %147 = call i32 %135(i32 %138, i32 %141, i32 %144, i32 %145, i32 %146)
  %148 = load %struct.priv*, %struct.priv** %4, align 8
  %149 = getelementptr inbounds %struct.priv, %struct.priv* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.priv*, %struct.priv** %4, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %126
  %155 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %156 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (...) @mp_LastError_to_str()
  %159 = call i32 @MP_ERR(i32 %157, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %158)
  store i32 -1, i32* %2, align 4
  br label %201

160:                                              ; preds = %126
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %162, align 8
  %164 = load %struct.priv*, %struct.priv** %4, align 8
  %165 = getelementptr inbounds %struct.priv, %struct.priv* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.priv*, %struct.priv** %4, align 8
  %168 = getelementptr inbounds %struct.priv, %struct.priv* %167, i32 0, i32 2
  %169 = call i32 %163(i32 %166, i32 1, i32* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %160
  %172 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %173 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (...) @mp_LastError_to_str()
  %176 = call i32 @MP_ERR(i32 %174, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  store i32 -1, i32* %2, align 4
  br label %201

177:                                              ; preds = %160
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32 (i32, i32)*, i32 (i32, i32)** %179, align 8
  %181 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %182 = load %struct.priv*, %struct.priv** %4, align 8
  %183 = getelementptr inbounds %struct.priv, %struct.priv* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 %180(i32 %181, i32 %184)
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32 (i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32)** %187, align 8
  %189 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %190 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  %191 = load i32, i32* @GL_TEXTURE_2D, align 4
  %192 = load %struct.priv*, %struct.priv** %4, align 8
  %193 = getelementptr inbounds %struct.priv, %struct.priv* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %188(i32 %189, i32 %190, i32 %191, i32 %194, i32 0)
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i32 (i32, i32)*, i32 (i32, i32)** %197, align 8
  %199 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %200 = call i32 %198(i32 %199, i32 0)
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %177, %171, %154, %107, %60, %38, %22
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local i32 @IDirect3DDevice9Ex_GetSwapChain(i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(i32, i8*, i32) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i32 @IDirect3DSwapChain9_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @SAFE_RELEASE(i32*) #1

declare dso_local i32 @IDirect3DSwapChain9Ex_GetBackBuffer(i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @IDirect3DSurface9_GetDesc(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @MP_VERBOSE(i32, i8*, i32, ...) #1

declare dso_local i32 @IDirect3DDevice9Ex_CreateRenderTarget(i32, i64, i64, i64, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @mp_LastError_to_str(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
