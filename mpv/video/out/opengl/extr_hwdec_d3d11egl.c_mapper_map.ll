; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_d3d11egl.c_mapper_map.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_d3d11egl.c_mapper_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32*, i32, %struct.TYPE_6__*, %struct.priv*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64* }
%struct.priv = type { i32*, i32 }
%struct.TYPE_5__ = type { %struct.priv_owner* }
%struct.priv_owner = type { i32, i32 (i32, i32)*, i32 (i32, i32, i8*, i32*)* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ra_tex_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EGL_D3D_TEXTURE_SUBRESOURCE_ID_ANGLE = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*)* @mapper_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mapper_map(%struct.ra_hwdec_mapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca %struct.priv_owner*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.TYPE_7__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ra_tex_params, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  %12 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %13 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %12, i32 0, i32 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.priv_owner*, %struct.priv_owner** %15, align 8
  store %struct.priv_owner* %16, %struct.priv_owner** %4, align 8
  %17 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %18 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %17, i32 0, i32 3
  %19 = load %struct.priv*, %struct.priv** %18, align 8
  store %struct.priv* %19, %struct.priv** %5, align 8
  %20 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %21 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %6, align 8
  %29 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %30 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %170

40:                                               ; preds = %1
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %42 = load i32, i32* @EGL_D3D_TEXTURE_SUBRESOURCE_ID_ANGLE, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds i32, i32* %41, i64 1
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds i32, i32* %43, i64 1
  %46 = load i32, i32* @EGL_NONE, align 4
  store i32 %46, i32* %45, align 4
  %47 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %48 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %47, i32 0, i32 2
  %49 = load i32 (i32, i32, i8*, i32*)*, i32 (i32, i32, i8*, i32*)** %48, align 8
  %50 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %51 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.priv*, %struct.priv** %5, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %59 = call i32 %49(i32 %52, i32 %55, i8* %57, i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %40
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 13227
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 15019, i32 13227
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %66, i32* %67, align 4
  %68 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %69 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %68, i32 0, i32 2
  %70 = load i32 (i32, i32, i8*, i32*)*, i32 (i32, i32, i8*, i32*)** %69, align 8
  %71 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %72 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.priv*, %struct.priv** %5, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = bitcast i32* %77 to i8*
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %80 = call i32 %70(i32 %73, i32 %76, i8* %78, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %170

83:                                               ; preds = %61
  br label %84

84:                                               ; preds = %83, %40
  %85 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %86 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %85, i32 0, i32 1
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %86, align 8
  %88 = load %struct.priv_owner*, %struct.priv_owner** %4, align 8
  %89 = getelementptr inbounds %struct.priv_owner, %struct.priv_owner* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.priv*, %struct.priv** %5, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %87(i32 %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %84
  store i32 -1, i32* %2, align 4
  br label %170

97:                                               ; preds = %84
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @ID3D11Texture2D_GetDesc(i32* %98, %struct.TYPE_7__* %9)
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %166, %97
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %169

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 0
  store i32 2, i32* %104, align 4
  %105 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 2, i32 1
  %112 = sdiv i32 %107, %111
  store i32 %112, i32* %105, align 4
  %113 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 2, i32 1
  %120 = sdiv i32 %115, %119
  store i32 %120, i32* %113, align 4
  %121 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 3
  store i32 1, i32* %121, align 4
  %122 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 4
  store i32 1, i32* %122, align 4
  %123 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 5
  store i32 1, i32* %123, align 4
  %124 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 6
  store i32 1, i32* %124, align 4
  %125 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 7
  %126 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %127 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 2, i32 1
  %133 = call i32 @ra_find_unorm_format(i32 %128, i32 1, i32 %132)
  store i32 %133, i32* %125, align 4
  %134 = getelementptr inbounds %struct.ra_tex_params, %struct.ra_tex_params* %11, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %103
  store i32 -1, i32* %2, align 4
  br label %170

138:                                              ; preds = %103
  %139 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %140 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.priv*, %struct.priv** %5, align 8
  %143 = getelementptr inbounds %struct.priv, %struct.priv* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ra_create_wrapped_tex(i32 %141, %struct.ra_tex_params* %11, i32 %148)
  %150 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %151 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %157 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %138
  store i32 -1, i32* %2, align 4
  br label %170

165:                                              ; preds = %138
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %100

169:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %164, %137, %96, %82, %39
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @ID3D11Texture2D_GetDesc(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @ra_find_unorm_format(i32, i32, i32) #1

declare dso_local i32 @ra_create_wrapped_tex(i32, %struct.ra_tex_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
