; ModuleID = '/home/carl/AnghaBench/mpv/video/filter/extr_vf_format.c_vf_format_process.c'
source_filename = "/home/carl/AnghaBench/mpv/video/filter/extr_vf_format.c_vf_format_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { i32*, %struct.priv* }
%struct.priv = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.mp_frame = type { i64, %struct.mp_image* }
%struct.mp_image = type { i32, %struct.mp_image_params }
%struct.mp_image_params = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MP_FRAME_VIDEO = common dso_local global i64 0, align 8
@MP_CSP_RGB = common dso_local global i64 0, align 8
@MP_CSP_AUTO = common dso_local global i64 0, align 8
@MP_CSP_LEVELS_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_filter*)* @vf_format_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf_format_process(%struct.mp_filter* %0) #0 {
  %2 = alloca %struct.mp_filter*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.mp_frame, align 8
  %5 = alloca %struct.mp_image*, align 8
  %6 = alloca %struct.mp_image_params, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_frame, align 8
  %9 = alloca %struct.mp_image*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %2, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %11 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %3, align 8
  %13 = load %struct.priv*, %struct.priv** %3, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %23 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @mp_pin_can_transfer_data(i32 %21, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %117

29:                                               ; preds = %1
  %30 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %31 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call { i64, %struct.mp_image* } @mp_pin_out_read(i32 %34)
  %36 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %37 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %36, i32 0, i32 0
  %38 = extractvalue { i64, %struct.mp_image* } %35, 0
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %36, i32 0, i32 1
  %40 = extractvalue { i64, %struct.mp_image* } %35, 1
  store %struct.mp_image* %40, %struct.mp_image** %39, align 8
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %101

47:                                               ; preds = %29
  %48 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %101

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %4, i32 0, i32 1
  %54 = load %struct.mp_image*, %struct.mp_image** %53, align 8
  store %struct.mp_image* %54, %struct.mp_image** %5, align 8
  %55 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %56 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %55, i32 0, i32 1
  %57 = bitcast %struct.mp_image_params* %6 to i8*
  %58 = bitcast %struct.mp_image_params* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %57, i8* align 8 %58, i64 24, i1 false)
  %59 = load %struct.priv*, %struct.priv** %3, align 8
  %60 = getelementptr inbounds %struct.priv, %struct.priv* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %7, align 4
  %64 = load %struct.mp_image*, %struct.mp_image** %5, align 8
  %65 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @mp_imgfmt_get_forced_csp(i32 %66)
  %68 = load i64, i64* @MP_CSP_RGB, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %52
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @mp_imgfmt_get_forced_csp(i32 %74)
  %76 = load i64, i64* @MP_CSP_AUTO, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @MP_CSP_LEVELS_TV, align 4
  %80 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %6, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %73, %70, %52
  %83 = load %struct.priv*, %struct.priv** %3, align 8
  %84 = getelementptr inbounds %struct.priv, %struct.priv* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = call i32 @set_params(%struct.TYPE_7__* %85, %struct.mp_image_params* %6)
  %87 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i32, i32* %7, align 4
  %93 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %6, i32 0, i32 0
  store i32 %92, i32* %93, align 8
  %94 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %6, i32 0, i32 1
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %82
  %96 = call i32 @mp_image_params_guess_csp(%struct.mp_image_params* %6)
  %97 = load %struct.priv*, %struct.priv** %3, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call i32 @mp_autoconvert_set_target_image_params(%struct.TYPE_8__* %99, %struct.mp_image_params* %6)
  br label %101

101:                                              ; preds = %95, %47, %29
  %102 = load %struct.priv*, %struct.priv** %3, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = bitcast %struct.mp_frame* %4 to { i64, %struct.mp_image* }*
  %112 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %111, i32 0, i32 1
  %115 = load %struct.mp_image*, %struct.mp_image** %114, align 8
  %116 = call i32 @mp_pin_in_write(i32 %110, i64 %113, %struct.mp_image* %115)
  br label %117

117:                                              ; preds = %101, %1
  %118 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %119 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.priv*, %struct.priv** %3, align 8
  %124 = getelementptr inbounds %struct.priv, %struct.priv* %123, i32 0, i32 1
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @mp_pin_can_transfer_data(i32 %122, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %185

134:                                              ; preds = %117
  %135 = load %struct.priv*, %struct.priv** %3, align 8
  %136 = getelementptr inbounds %struct.priv, %struct.priv* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = call { i64, %struct.mp_image* } @mp_pin_out_read(i32 %143)
  %145 = bitcast %struct.mp_frame* %8 to { i64, %struct.mp_image* }*
  %146 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %145, i32 0, i32 0
  %147 = extractvalue { i64, %struct.mp_image* } %144, 0
  store i64 %147, i64* %146, align 8
  %148 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %145, i32 0, i32 1
  %149 = extractvalue { i64, %struct.mp_image* } %144, 1
  store %struct.mp_image* %149, %struct.mp_image** %148, align 8
  %150 = load %struct.priv*, %struct.priv** %3, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %173, label %156

156:                                              ; preds = %134
  %157 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MP_FRAME_VIDEO, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.mp_frame, %struct.mp_frame* %8, i32 0, i32 1
  %163 = load %struct.mp_image*, %struct.mp_image** %162, align 8
  store %struct.mp_image* %163, %struct.mp_image** %9, align 8
  %164 = load %struct.priv*, %struct.priv** %3, align 8
  %165 = getelementptr inbounds %struct.priv, %struct.priv* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  %168 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %167, i32 0, i32 1
  %169 = call i32 @set_params(%struct.TYPE_7__* %166, %struct.mp_image_params* %168)
  %170 = load %struct.mp_image*, %struct.mp_image** %9, align 8
  %171 = getelementptr inbounds %struct.mp_image, %struct.mp_image* %170, i32 0, i32 1
  %172 = call i32 @mp_image_params_guess_csp(%struct.mp_image_params* %171)
  br label %173

173:                                              ; preds = %161, %156, %134
  %174 = load %struct.mp_filter*, %struct.mp_filter** %2, align 8
  %175 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = bitcast %struct.mp_frame* %8 to { i64, %struct.mp_image* }*
  %180 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds { i64, %struct.mp_image* }, { i64, %struct.mp_image* }* %179, i32 0, i32 1
  %183 = load %struct.mp_image*, %struct.mp_image** %182, align 8
  %184 = call i32 @mp_pin_in_write(i32 %178, i64 %181, %struct.mp_image* %183)
  br label %185

185:                                              ; preds = %173, %117
  ret void
}

declare dso_local i64 @mp_pin_can_transfer_data(i32, i32) #1

declare dso_local { i64, %struct.mp_image* } @mp_pin_out_read(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @mp_imgfmt_get_forced_csp(i32) #1

declare dso_local i32 @set_params(%struct.TYPE_7__*, %struct.mp_image_params*) #1

declare dso_local i32 @mp_image_params_guess_csp(%struct.mp_image_params*) #1

declare dso_local i32 @mp_autoconvert_set_target_image_params(%struct.TYPE_8__*, %struct.mp_image_params*) #1

declare dso_local i32 @mp_pin_in_write(i32, i64, %struct.mp_image*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
