; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_av.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_codec_module.c_ngx_rtmp_codec_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32*, i32* }
%struct.TYPE_28__ = type { i32, i32, i32, i64, i32, %struct.TYPE_29__*, %struct.TYPE_29__* }

@ngx_rtmp_codec_av.sample_rates = internal global [4 x i32] [i32 5512, i32 11025, i32 22050, i32 44100], align 16
@NGX_RTMP_MSG_AUDIO = common dso_local global i64 0, align 8
@NGX_RTMP_MSG_VIDEO = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_RTMP_AUDIO_AAC = common dso_local global i32 0, align 4
@NGX_RTMP_VIDEO_H264 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_29__*)* @ngx_rtmp_codec_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_codec_av(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, %struct.TYPE_29__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_29__**, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %7, align 8
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NGX_RTMP_MSG_AUDIO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @NGX_OK, align 4
  store i32 %24, i32* %4, align 4
  br label %190

25:                                               ; preds = %17, %3
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %27 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %28 = call %struct.TYPE_28__* @ngx_rtmp_get_module_ctx(%struct.TYPE_26__* %26, i32 %27)
  store %struct.TYPE_28__* %28, %struct.TYPE_28__** %9, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %30 = icmp eq %struct.TYPE_28__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_28__* @ngx_pcalloc(i32 %36, i32 48)
  store %struct.TYPE_28__* %37, %struct.TYPE_28__** %9, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %40 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %41 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_26__* %38, %struct.TYPE_28__* %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %25
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = ptrtoint i32* %47 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = icmp slt i64 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* @NGX_OK, align 4
  store i32 %59, i32* %4, align 4
  br label %190

60:                                               ; preds = %42
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %11, align 4
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NGX_RTMP_MSG_AUDIO, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %106

73:                                               ; preds = %60
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 240
  %76 = ashr i32 %75, 4
  %77 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 1
  %81 = add nsw i32 %80, 1
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 2
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 2, i32 1
  %89 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %73
  %96 = load i32, i32* %11, align 4
  %97 = and i32 %96, 12
  %98 = ashr i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* @ngx_rtmp_codec_av.sample_rates, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %95, %73
  br label %111

106:                                              ; preds = %60
  %107 = load i32, i32* %11, align 4
  %108 = and i32 %107, 15
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %105
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = ptrtoint i32* %116 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = icmp slt i64 %125, 3
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = load i32, i32* @NGX_OK, align 4
  store i32 %128, i32* %4, align 4
  br label %190

129:                                              ; preds = %111
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %131 = call i32 @ngx_rtmp_is_codec_header(%struct.TYPE_29__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @NGX_OK, align 4
  store i32 %134, i32* %4, align 4
  br label %190

135:                                              ; preds = %129
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %137 = load i32, i32* @ngx_rtmp_core_module, align 4
  %138 = call i32* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_26__* %136, i32 %137)
  store i32* %138, i32** %8, align 8
  store %struct.TYPE_29__** null, %struct.TYPE_29__*** %10, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NGX_RTMP_MSG_AUDIO, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %157

144:                                              ; preds = %135
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @NGX_RTMP_AUDIO_AAC, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 6
  store %struct.TYPE_29__** %152, %struct.TYPE_29__*** %10, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %155 = call i32 @ngx_rtmp_codec_parse_aac_header(%struct.TYPE_26__* %153, %struct.TYPE_29__* %154)
  br label %156

156:                                              ; preds = %150, %144
  br label %170

157:                                              ; preds = %135
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @NGX_RTMP_VIDEO_H264, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 5
  store %struct.TYPE_29__** %165, %struct.TYPE_29__*** %10, align 8
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %168 = call i32 @ngx_rtmp_codec_parse_avc_header(%struct.TYPE_26__* %166, %struct.TYPE_29__* %167)
  br label %169

169:                                              ; preds = %163, %157
  br label %170

170:                                              ; preds = %169, %156
  %171 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %10, align 8
  %172 = icmp eq %struct.TYPE_29__** %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @NGX_OK, align 4
  store i32 %174, i32* %4, align 4
  br label %190

175:                                              ; preds = %170
  %176 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %10, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %176, align 8
  %178 = icmp ne %struct.TYPE_29__* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load i32*, i32** %8, align 8
  %181 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %10, align 8
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %181, align 8
  %183 = call i32 @ngx_rtmp_free_shared_chain(i32* %180, %struct.TYPE_29__* %182)
  br label %184

184:                                              ; preds = %179, %175
  %185 = load i32*, i32** %8, align 8
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %187 = call %struct.TYPE_29__* @ngx_rtmp_append_shared_bufs(i32* %185, i32* null, %struct.TYPE_29__* %186)
  %188 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %10, align 8
  store %struct.TYPE_29__* %187, %struct.TYPE_29__** %188, align 8
  %189 = load i32, i32* @NGX_OK, align 4
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %184, %173, %133, %127, %58, %23
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local %struct.TYPE_28__* @ngx_rtmp_get_module_ctx(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @ngx_rtmp_is_codec_header(%struct.TYPE_29__*) #1

declare dso_local i32* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_rtmp_codec_parse_aac_header(%struct.TYPE_26__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ngx_rtmp_codec_parse_avc_header(%struct.TYPE_26__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ngx_rtmp_free_shared_chain(i32*, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @ngx_rtmp_append_shared_bufs(i32*, i32*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
