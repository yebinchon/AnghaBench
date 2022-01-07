; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_d3d11va.c_mapper_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_hwdec_d3d11va.c_mapper_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.priv*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.priv = type { i32, i32, i32, i32* }
%struct.TYPE_7__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ra_imgfmt_desc = type { i32, i32*, i32 }
%struct.mp_image = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@DXGI_FORMAT_NV12 = common dso_local global i32 0, align 4
@DXGI_FORMAT_P010 = common dso_local global i32 0, align 4
@D3D11_BIND_SHADER_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Could not create shader resource texture\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not create RA texture view\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_init(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv_owner*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ra_imgfmt_desc, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mp_image, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__, align 4
  %12 = alloca i32, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %13 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %14 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %13, i32 0, i32 5
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.priv_owner*, %struct.priv_owner** %16, align 8
  store %struct.priv_owner* %17, %struct.priv_owner** %4, align 8
  %18 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %19 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %18, i32 0, i32 4
  %20 = load %struct.priv*, %struct.priv** %19, align 8
  store %struct.priv* %20, %struct.priv** %5, align 8
  %21 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %22 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %21, i32 0, i32 2
  %23 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %24 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %23, i32 0, i32 3
  %25 = bitcast %struct.TYPE_11__* %22 to i8*
  %26 = bitcast %struct.TYPE_11__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 16, i1 false)
  %27 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %28 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %32 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %35 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = bitcast %struct.ra_imgfmt_desc* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 24, i1 false)
  %38 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %39 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %42 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ra_get_imgfmt_desc(i32 %40, i32 %44, %struct.ra_imgfmt_desc* %7)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %180

48:                                               ; preds = %1
  %49 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %50 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %49, i32 0, i32 2
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.priv*, %struct.priv** %5, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %78, %55
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %7, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.priv*, %struct.priv** %5, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %60

81:                                               ; preds = %60
  br label %179

82:                                               ; preds = %48
  %83 = bitcast %struct.mp_image* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %83, i8 0, i64 4, i1 false)
  %84 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %85 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %84, i32 0, i32 2
  %86 = call i32 @mp_image_set_params(%struct.mp_image* %9, %struct.TYPE_11__* %85)
  %87 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %88 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %95 [
    i32 129, label %91
    i32 128, label %93
  ]

91:                                               ; preds = %82
  %92 = load i32, i32* @DXGI_FORMAT_NV12, align 4
  store i32 %92, i32* %10, align 4
  br label %96

93:                                               ; preds = %82
  %94 = load i32, i32* @DXGI_FORMAT_P010, align 4
  store i32 %94, i32* %10, align 4
  br label %96

95:                                               ; preds = %82
  store i32 -1, i32* %2, align 4
  br label %180

96:                                               ; preds = %93, %91
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %100 = load i32, i32* @D3D11_BIND_SHADER_RESOURCE, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 5
  %106 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %107 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %105, align 4
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  %111 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %112 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %110, align 4
  %115 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %116 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.priv*, %struct.priv** %5, align 8
  %119 = getelementptr inbounds %struct.priv, %struct.priv* %118, i32 0, i32 2
  %120 = call i32 @ID3D11Device_CreateTexture2D(i32 %117, %struct.TYPE_10__* %11, i32* null, i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i64 @FAILED(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %96
  %125 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %126 = call i32 @MP_FATAL(%struct.ra_hwdec_mapper* %125, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %180

127:                                              ; preds = %96
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %169, %127
  %129 = load i32, i32* %12, align 4
  %130 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %7, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %129, %131
  br i1 %132, label %133, label %172

133:                                              ; preds = %128
  %134 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %135 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.priv*, %struct.priv** %5, align 8
  %138 = getelementptr inbounds %struct.priv, %struct.priv* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @mp_image_plane_w(%struct.mp_image* %9, i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @mp_image_plane_h(%struct.mp_image* %9, i32 %142)
  %144 = getelementptr inbounds %struct.ra_imgfmt_desc, %struct.ra_imgfmt_desc* %7, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ra_d3d11_wrap_tex_video(i32 %136, i32 %139, i32 %141, i32 %143, i32 0, i32 %149)
  %151 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %152 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %158 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %133
  %166 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %167 = call i32 @MP_FATAL(%struct.ra_hwdec_mapper* %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %180

168:                                              ; preds = %133
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %128

172:                                              ; preds = %128
  %173 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %174 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.priv*, %struct.priv** %5, align 8
  %177 = getelementptr inbounds %struct.priv, %struct.priv* %176, i32 0, i32 1
  %178 = call i32 @ID3D11Device1_GetImmediateContext1(i32 %175, i32* %177)
  br label %179

179:                                              ; preds = %172, %81
  store i32 0, i32* %2, align 4
  br label %180

180:                                              ; preds = %179, %165, %124, %95, %47
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ra_get_imgfmt_desc(i32, i32, %struct.ra_imgfmt_desc*) #2

declare dso_local i32 @mp_image_set_params(%struct.mp_image*, %struct.TYPE_11__*) #2

declare dso_local i32 @ID3D11Device_CreateTexture2D(i32, %struct.TYPE_10__*, i32*, i32*) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @MP_FATAL(%struct.ra_hwdec_mapper*, i8*) #2

declare dso_local i32 @ra_d3d11_wrap_tex_video(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @mp_image_plane_w(%struct.mp_image*, i32) #2

declare dso_local i32 @mp_image_plane_h(%struct.mp_image*, i32) #2

declare dso_local i32 @ID3D11Device1_GetImmediateContext1(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
