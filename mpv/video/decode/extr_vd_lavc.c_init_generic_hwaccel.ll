; ModuleID = '/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_init_generic_hwaccel.c'
source_filename = "/home/carl/AnghaBench/mpv/video/decode/extr_vd_lavc.c_init_generic_hwaccel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.lavc_ctx* }
%struct.lavc_ctx = type { %struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_13__*, i32, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i64, i32, i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.hwcontext_fns = type { i32 (%struct.TYPE_16__*)* }

@.str = private unnamed_addr constant [25 x i8] c"Missing device context.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Hardware decoding of this stream is unsupported?\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to allocate hw frames.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, i32)* @init_generic_hwaccel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_generic_hwaccel(%struct.mp_filter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lavc_ctx*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.hwcontext_fns*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %12 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %11, i32 0, i32 0
  %13 = load %struct.lavc_ctx*, %struct.lavc_ctx** %12, align 8
  store %struct.lavc_ctx* %13, %struct.lavc_ctx** %6, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  %14 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %194

20:                                               ; preds = %2
  %21 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %27 = call i32 @MP_ERR(%struct.lavc_ctx* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %189

28:                                               ; preds = %20
  %29 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %29, i32 0, i32 1
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %32 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @avcodec_get_hw_frames_parameters(%struct.TYPE_17__* %31, i32 %34, i32 %35, %struct.TYPE_16__** %7)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %40 = call i32 @MP_VERBOSE(%struct.lavc_ctx* %39, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %189

41:                                               ; preds = %28
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = bitcast i8* %45 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %8, align 8
  %47 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %41
  %54 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %54, i32 0, i32 2
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @imgfmt2pixfmt(i64 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %53, %41
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %69 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %67, %62
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.hwcontext_fns* @hwdec_get_hwcontext_fns(i32 %83)
  store %struct.hwcontext_fns* %84, %struct.hwcontext_fns** %9, align 8
  %85 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %9, align 8
  %86 = icmp ne %struct.hwcontext_fns* %85, null
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %9, align 8
  %89 = getelementptr inbounds %struct.hwcontext_fns, %struct.hwcontext_fns* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %89, align 8
  %91 = icmp ne i32 (%struct.TYPE_16__*)* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = load %struct.hwcontext_fns*, %struct.hwcontext_fns** %9, align 8
  %94 = getelementptr inbounds %struct.hwcontext_fns, %struct.hwcontext_fns* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %94, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = call i32 %95(%struct.TYPE_16__* %96)
  br label %98

98:                                               ; preds = %92, %87, %78
  %99 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %100 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = icmp ne %struct.TYPE_16__* %101, null
  br i1 %102, label %103, label %155

103:                                              ; preds = %98
  %104 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %105 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = bitcast i8* %109 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %110, %struct.TYPE_15__** %10, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %150, label %118

118:                                              ; preds = %103
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %121, %124
  br i1 %125, label %150, label %126

126:                                              ; preds = %118
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %129, %132
  br i1 %133, label %150, label %134

134:                                              ; preds = %126
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %134
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %142, %134, %126, %118, %103
  %151 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %152 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %151, i32 0, i32 0
  %153 = call i32 @av_buffer_unref(%struct.TYPE_16__** %152)
  br label %154

154:                                              ; preds = %150, %142
  br label %155

155:                                              ; preds = %154, %98
  %156 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %157 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %156, i32 0, i32 0
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = icmp ne %struct.TYPE_16__* %158, null
  br i1 %159, label %171, label %160

160:                                              ; preds = %155
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %162 = call i64 @av_hwframe_ctx_init(%struct.TYPE_16__* %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %166 = call i32 @MP_ERR(%struct.lavc_ctx* %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %189

167:                                              ; preds = %160
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %169 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %170 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %169, i32 0, i32 0
  store %struct.TYPE_16__* %168, %struct.TYPE_16__** %170, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %7, align 8
  br label %171

171:                                              ; preds = %167, %155
  %172 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %173 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %172, i32 0, i32 0
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = call i32 @av_buffer_ref(%struct.TYPE_16__* %174)
  %176 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %177 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %176, i32 0, i32 1
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 4
  %180 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %181 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %180, i32 0, i32 1
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %171
  br label %189

187:                                              ; preds = %171
  %188 = call i32 @av_buffer_unref(%struct.TYPE_16__** %7)
  store i32 0, i32* %3, align 4
  br label %194

189:                                              ; preds = %186, %164, %38, %25
  %190 = call i32 @av_buffer_unref(%struct.TYPE_16__** %7)
  %191 = load %struct.lavc_ctx*, %struct.lavc_ctx** %6, align 8
  %192 = getelementptr inbounds %struct.lavc_ctx, %struct.lavc_ctx* %191, i32 0, i32 0
  %193 = call i32 @av_buffer_unref(%struct.TYPE_16__** %192)
  store i32 -1, i32* %3, align 4
  br label %194

194:                                              ; preds = %189, %187, %19
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @MP_ERR(%struct.lavc_ctx*, i8*) #1

declare dso_local i64 @avcodec_get_hw_frames_parameters(%struct.TYPE_17__*, i32, i32, %struct.TYPE_16__**) #1

declare dso_local i32 @MP_VERBOSE(%struct.lavc_ctx*, i8*) #1

declare dso_local i64 @imgfmt2pixfmt(i64) #1

declare dso_local %struct.hwcontext_fns* @hwdec_get_hwcontext_fns(i32) #1

declare dso_local i32 @av_buffer_unref(%struct.TYPE_16__**) #1

declare dso_local i64 @av_hwframe_ctx_init(%struct.TYPE_16__*) #1

declare dso_local i32 @av_buffer_ref(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
