; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_tex_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_ra_d3d11.c_tex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra = type { %struct.ra_d3d11* }
%struct.ra_d3d11 = type { i64, i32 }
%struct.ra_tex = type { %struct.ra_tex_params, %struct.d3d_tex* }
%struct.ra_tex_params = type { i32, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.d3d_tex = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@D3D11_SRV_DIMENSION_TEXTURE1DARRAY = common dso_local global i32 0, align 4
@D3D11_SRV_DIMENSION_TEXTURE1D = common dso_local global i32 0, align 4
@D3D11_SRV_DIMENSION_TEXTURE2DARRAY = common dso_local global i32 0, align 4
@D3D11_SRV_DIMENSION_TEXTURE2D = common dso_local global i32 0, align 4
@D3D11_SRV_DIMENSION_TEXTURE3D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to create SRV: %s\0A\00", align 1
@D3D11_TEXTURE_ADDRESS_CLAMP = common dso_local global i32 0, align 4
@D3D11_FLOAT32_MAX = common dso_local global i32 0, align 4
@D3D11_COMPARISON_NEVER = common dso_local global i32 0, align 4
@D3D11_FILTER_MIN_MAG_MIP_LINEAR = common dso_local global i32 0, align 4
@D3D11_TEXTURE_ADDRESS_WRAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to create sampler: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to create RTV: %s\0A\00", align 1
@D3D_FEATURE_LEVEL_11_0 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to create UAV: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra*, %struct.ra_tex*)* @tex_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tex_init(%struct.ra* %0, %struct.ra_tex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra*, align 8
  %5 = alloca %struct.ra_tex*, align 8
  %6 = alloca %struct.ra_d3d11*, align 8
  %7 = alloca %struct.d3d_tex*, align 8
  %8 = alloca %struct.ra_tex_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 4
  %11 = alloca %struct.TYPE_16__, align 4
  store %struct.ra* %0, %struct.ra** %4, align 8
  store %struct.ra_tex* %1, %struct.ra_tex** %5, align 8
  %12 = load %struct.ra*, %struct.ra** %4, align 8
  %13 = getelementptr inbounds %struct.ra, %struct.ra* %12, i32 0, i32 0
  %14 = load %struct.ra_d3d11*, %struct.ra_d3d11** %13, align 8
  store %struct.ra_d3d11* %14, %struct.ra_d3d11** %6, align 8
  %15 = load %struct.ra_tex*, %struct.ra_tex** %5, align 8
  %16 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %15, i32 0, i32 1
  %17 = load %struct.d3d_tex*, %struct.d3d_tex** %16, align 8
  store %struct.d3d_tex* %17, %struct.d3d_tex** %7, align 8
  %18 = load %struct.ra_tex*, %struct.ra_tex** %5, align 8
  %19 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %18, i32 0, i32 0
  store %struct.ra_tex_params* %19, %struct.ra_tex_params** %8, align 8
  %20 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %21 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %26 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %109

29:                                               ; preds = %24, %2
  %30 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 44, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  %32 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %33 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @fmt_to_dxgi(i32 %34)
  store i32 %35, i32* %31, align 4
  %36 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %37 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %90 [
    i32 1, label %39
    i32 2, label %62
    i32 3, label %85
  ]

39:                                               ; preds = %29
  %40 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %41 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load i32, i32* @D3D11_SRV_DIMENSION_TEXTURE1DARRAY, align 4
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %50 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %61

56:                                               ; preds = %39
  %57 = load i32, i32* @D3D11_SRV_DIMENSION_TEXTURE1D, align 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %44
  br label %90

62:                                               ; preds = %29
  %63 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %64 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load i32, i32* @D3D11_SRV_DIMENSION_TEXTURE2DARRAY, align 4
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  store i32 1, i32* %71, align 4
  %72 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %73 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %84

79:                                               ; preds = %62
  %80 = load i32, i32* @D3D11_SRV_DIMENSION_TEXTURE2D, align 4
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  br label %84

84:                                               ; preds = %79, %67
  br label %90

85:                                               ; preds = %29
  %86 = load i32, i32* @D3D11_SRV_DIMENSION_TEXTURE3D, align 4
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %29, %85, %84, %61
  %91 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %92 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %95 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %98 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %97, i32 0, i32 4
  %99 = call i32 @ID3D11Device_CreateShaderResourceView(i32 %93, i32 %96, %struct.TYPE_15__* %10, i32* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i64 @FAILED(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load %struct.ra*, %struct.ra** %4, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @mp_HRESULT_to_str(i32 %105)
  %107 = call i32 @MP_ERR(%struct.ra* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %221

108:                                              ; preds = %90
  br label %109

109:                                              ; preds = %108, %24
  %110 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %111 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %110, i32 0, i32 6
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %161

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 1, i32* %115, align 4
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %117 = load i32, i32* @D3D11_TEXTURE_ADDRESS_CLAMP, align 4
  store i32 %117, i32* %116, align 4
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %119 = load i32, i32* @D3D11_TEXTURE_ADDRESS_CLAMP, align 4
  store i32 %119, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %121 = load i32, i32* @D3D11_TEXTURE_ADDRESS_CLAMP, align 4
  store i32 %121, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  store i32 0, i32* %122, align 4
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 5
  %124 = load i32, i32* @D3D11_FLOAT32_MAX, align 4
  store i32 %124, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 6
  store i32 0, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 7
  %127 = load i32, i32* @D3D11_COMPARISON_NEVER, align 4
  store i32 %127, i32* %126, align 4
  %128 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %129 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %114
  %133 = load i32, i32* @D3D11_FILTER_MIN_MAG_MIP_LINEAR, align 4
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 4
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %114
  %136 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %137 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* @D3D11_TEXTURE_ADDRESS_WRAP, align 4
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i32 %141, i32* %142, align 4
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %147 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %150 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %149, i32 0, i32 3
  %151 = call i32 @ID3D11Device_CreateSamplerState(i32 %148, %struct.TYPE_16__* %11, i32* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @FAILED(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load %struct.ra*, %struct.ra** %4, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @mp_HRESULT_to_str(i32 %157)
  %159 = call i32 @MP_ERR(%struct.ra* %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %221

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %109
  %162 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %163 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %168 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %166, %161
  %172 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %173 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %176 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %179 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %178, i32 0, i32 2
  %180 = call i32 @ID3D11Device_CreateRenderTargetView(i32 %174, i32 %177, i32* null, i32* %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i64 @FAILED(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %171
  %185 = load %struct.ra*, %struct.ra** %4, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @mp_HRESULT_to_str(i32 %186)
  %188 = call i32 @MP_ERR(%struct.ra* %185, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %187)
  br label %221

189:                                              ; preds = %171
  br label %190

190:                                              ; preds = %189, %166
  %191 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %192 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @D3D_FEATURE_LEVEL_11_0, align 8
  %195 = icmp sge i64 %193, %194
  br i1 %195, label %196, label %220

196:                                              ; preds = %190
  %197 = load %struct.ra_tex_params*, %struct.ra_tex_params** %8, align 8
  %198 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %196
  %202 = load %struct.ra_d3d11*, %struct.ra_d3d11** %6, align 8
  %203 = getelementptr inbounds %struct.ra_d3d11, %struct.ra_d3d11* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %206 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.d3d_tex*, %struct.d3d_tex** %7, align 8
  %209 = getelementptr inbounds %struct.d3d_tex, %struct.d3d_tex* %208, i32 0, i32 0
  %210 = call i32 @ID3D11Device_CreateUnorderedAccessView(i32 %204, i32 %207, i32* null, i32* %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i64 @FAILED(i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %201
  %215 = load %struct.ra*, %struct.ra** %4, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @mp_HRESULT_to_str(i32 %216)
  %218 = call i32 @MP_ERR(%struct.ra* %215, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  br label %221

219:                                              ; preds = %201
  br label %220

220:                                              ; preds = %219, %196, %190
  store i32 1, i32* %3, align 4
  br label %222

221:                                              ; preds = %214, %184, %155, %103
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %221, %220
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fmt_to_dxgi(i32) #2

declare dso_local i32 @ID3D11Device_CreateShaderResourceView(i32, i32, %struct.TYPE_15__*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @MP_ERR(%struct.ra*, i8*, i32) #2

declare dso_local i32 @mp_HRESULT_to_str(i32) #2

declare dso_local i32 @ID3D11Device_CreateSamplerState(i32, %struct.TYPE_16__*, i32*) #2

declare dso_local i32 @ID3D11Device_CreateRenderTargetView(i32, i32, i32*, i32*) #2

declare dso_local i32 @ID3D11Device_CreateUnorderedAccessView(i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
