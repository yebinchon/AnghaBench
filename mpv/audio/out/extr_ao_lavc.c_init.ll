; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_lavc.c_init.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_lavc.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_17__, i32, i32, %struct.priv* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.priv = type { i32, i32, i32, i32, i32, i8*, i8*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.mp_chmap_sel = type { i32 }

@STREAM_AUDIO = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@on_ready = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@AV_NUM_DATA_POINTERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ao*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(%struct.ao* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ao*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mp_chmap_sel, align 4
  store %struct.ao* %0, %struct.ao** %3, align 8
  %9 = load %struct.ao*, %struct.ao** %3, align 8
  %10 = getelementptr inbounds %struct.ao, %struct.ao* %9, i32 0, i32 7
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %4, align 8
  %12 = load %struct.ao*, %struct.ao** %3, align 8
  %13 = getelementptr inbounds %struct.ao, %struct.ao* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = load i32, i32* @STREAM_AUDIO, align 4
  %16 = load %struct.ao*, %struct.ao** %3, align 8
  %17 = getelementptr inbounds %struct.ao, %struct.ao* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_16__* @encoder_context_alloc(%struct.TYPE_12__* %14, i32 %15, i32 %18)
  %20 = load %struct.priv*, %struct.priv** %4, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 7
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %21, align 8
  %22 = load %struct.priv*, %struct.priv** %4, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 7
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %206

27:                                               ; preds = %1
  %28 = load %struct.priv*, %struct.priv** %4, align 8
  %29 = load %struct.priv*, %struct.priv** %4, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 7
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = call i32 @talloc_steal(%struct.priv* %28, %struct.TYPE_16__* %31)
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 7
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %5, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  store %struct.TYPE_15__* %40, %struct.TYPE_15__** %6, align 8
  %41 = load %struct.ao*, %struct.ao** %3, align 8
  %42 = getelementptr inbounds %struct.ao, %struct.ao* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @af_select_best_samplerate(i32 %43, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %27
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ao*, %struct.ao** %3, align 8
  %53 = getelementptr inbounds %struct.ao, %struct.ao* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %27
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.ao*, %struct.ao** %3, align 8
  %59 = getelementptr inbounds %struct.ao, %struct.ao* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ao*, %struct.ao** %3, align 8
  %65 = getelementptr inbounds %struct.ao, %struct.ao* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = bitcast %struct.mp_chmap_sel* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %69, i8 0, i64 4, i1 false)
  %70 = call i32 @mp_chmap_sel_add_any(%struct.mp_chmap_sel* %8)
  %71 = load %struct.ao*, %struct.ao** %3, align 8
  %72 = load %struct.ao*, %struct.ao** %3, align 8
  %73 = getelementptr inbounds %struct.ao, %struct.ao* %72, i32 0, i32 4
  %74 = call i32 @ao_chmap_sel_adjust2(%struct.ao* %71, %struct.mp_chmap_sel* %8, %struct.TYPE_17__* %73, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %54
  br label %198

77:                                               ; preds = %54
  %78 = load %struct.ao*, %struct.ao** %3, align 8
  %79 = getelementptr inbounds %struct.ao, %struct.ao* %78, i32 0, i32 4
  %80 = call i32 @mp_chmap_reorder_to_lavc(%struct.TYPE_17__* %79)
  %81 = load %struct.ao*, %struct.ao** %3, align 8
  %82 = getelementptr inbounds %struct.ao, %struct.ao* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.ao*, %struct.ao** %3, align 8
  %88 = getelementptr inbounds %struct.ao, %struct.ao* %87, i32 0, i32 4
  %89 = call i32 @mp_chmap_to_lavc(%struct.TYPE_17__* %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ao*, %struct.ao** %3, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = call i32 @select_format(%struct.ao* %95, %struct.TYPE_15__* %96)
  %98 = load %struct.ao*, %struct.ao** %3, align 8
  %99 = getelementptr inbounds %struct.ao, %struct.ao* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @af_fmt_to_bytes(i32 %100)
  %102 = load %struct.priv*, %struct.priv** %4, align 8
  %103 = getelementptr inbounds %struct.priv, %struct.priv* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load %struct.ao*, %struct.ao** %3, align 8
  %105 = getelementptr inbounds %struct.ao, %struct.ao* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @af_to_avformat(i32 %106)
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.priv*, %struct.priv** %4, align 8
  %111 = getelementptr inbounds %struct.priv, %struct.priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %112, 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 8
  %116 = load %struct.priv*, %struct.priv** %4, align 8
  %117 = getelementptr inbounds %struct.priv, %struct.priv* %116, i32 0, i32 7
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = load i32, i32* @on_ready, align 4
  %120 = load %struct.ao*, %struct.ao** %3, align 8
  %121 = call i32 @encoder_init_codec_and_muxer(%struct.TYPE_16__* %118, i32 %119, %struct.ao* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %77
  br label %198

124:                                              ; preds = %77
  %125 = load %struct.priv*, %struct.priv** %4, align 8
  %126 = getelementptr inbounds %struct.priv, %struct.priv* %125, i32 0, i32 1
  store i32 0, i32* %126, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp sle i32 %129, 1
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @av_get_bits_per_sample(i32 %134)
  %136 = sdiv i32 %135, 8
  %137 = load %struct.priv*, %struct.priv** %4, align 8
  %138 = getelementptr inbounds %struct.priv, %struct.priv* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %131, %124
  %140 = load %struct.priv*, %struct.priv** %4, align 8
  %141 = getelementptr inbounds %struct.priv, %struct.priv* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.priv*, %struct.priv** %4, align 8
  %146 = getelementptr inbounds %struct.priv, %struct.priv* %145, i32 0, i32 2
  store i32 16384, i32* %146, align 8
  br label %153

147:                                              ; preds = %139
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.priv*, %struct.priv** %4, align 8
  %152 = getelementptr inbounds %struct.priv, %struct.priv* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %147, %144
  %154 = load %struct.ao*, %struct.ao** %3, align 8
  %155 = getelementptr inbounds %struct.ao, %struct.ao* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sitofp i32 %156 to double
  %158 = fmul double %157, 2.500000e-01
  %159 = load %struct.priv*, %struct.priv** %4, align 8
  %160 = getelementptr inbounds %struct.priv, %struct.priv* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = sitofp i32 %161 to double
  %163 = fdiv double %158, %162
  %164 = call i32 @ceil(double %163)
  %165 = load %struct.priv*, %struct.priv** %4, align 8
  %166 = getelementptr inbounds %struct.priv, %struct.priv* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.priv*, %struct.priv** %4, align 8
  %168 = getelementptr inbounds %struct.priv, %struct.priv* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @MPMAX(i32 %169, i32 1)
  %171 = load %struct.priv*, %struct.priv** %4, align 8
  %172 = getelementptr inbounds %struct.priv, %struct.priv* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 4
  %173 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %174 = load %struct.priv*, %struct.priv** %4, align 8
  %175 = getelementptr inbounds %struct.priv, %struct.priv* %174, i32 0, i32 6
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %177 = load %struct.priv*, %struct.priv** %4, align 8
  %178 = getelementptr inbounds %struct.priv, %struct.priv* %177, i32 0, i32 5
  store i8* %176, i8** %178, align 8
  %179 = load %struct.ao*, %struct.ao** %3, align 8
  %180 = getelementptr inbounds %struct.ao, %struct.ao* %179, i32 0, i32 1
  store i32 1, i32* %180, align 4
  %181 = load %struct.priv*, %struct.priv** %4, align 8
  %182 = getelementptr inbounds %struct.priv, %struct.priv* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.priv*, %struct.priv** %4, align 8
  %185 = getelementptr inbounds %struct.priv, %struct.priv* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = mul nsw i32 %183, %186
  %188 = load %struct.ao*, %struct.ao** %3, align 8
  %189 = getelementptr inbounds %struct.ao, %struct.ao* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.ao*, %struct.ao** %3, align 8
  %191 = getelementptr inbounds %struct.ao, %struct.ao* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @AV_NUM_DATA_POINTERS, align 8
  %195 = icmp sgt i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %153
  br label %198

197:                                              ; preds = %153
  store i32 0, i32* %2, align 4
  br label %206

198:                                              ; preds = %196, %123, %76
  %199 = load %struct.ao*, %struct.ao** %3, align 8
  %200 = getelementptr inbounds %struct.ao, %struct.ao* %199, i32 0, i32 3
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = call i32 @pthread_mutex_unlock(i32* %202)
  %204 = load %struct.priv*, %struct.priv** %4, align 8
  %205 = getelementptr inbounds %struct.priv, %struct.priv* %204, i32 0, i32 4
  store i32 1, i32* %205, align 8
  store i32 -1, i32* %2, align 4
  br label %206

206:                                              ; preds = %198, %197, %26
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.TYPE_16__* @encoder_context_alloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @talloc_steal(%struct.priv*, %struct.TYPE_16__*) #1

declare dso_local i32 @af_select_best_samplerate(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mp_chmap_sel_add_any(%struct.mp_chmap_sel*) #1

declare dso_local i32 @ao_chmap_sel_adjust2(%struct.ao*, %struct.mp_chmap_sel*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mp_chmap_reorder_to_lavc(%struct.TYPE_17__*) #1

declare dso_local i32 @mp_chmap_to_lavc(%struct.TYPE_17__*) #1

declare dso_local i32 @select_format(%struct.ao*, %struct.TYPE_15__*) #1

declare dso_local i32 @af_fmt_to_bytes(i32) #1

declare dso_local i32 @af_to_avformat(i32) #1

declare dso_local i32 @encoder_init_codec_and_muxer(%struct.TYPE_16__*, i32, %struct.ao*) #1

declare dso_local i32 @av_get_bits_per_sample(i32) #1

declare dso_local i32 @ceil(double) #1

declare dso_local i32 @MPMAX(i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
