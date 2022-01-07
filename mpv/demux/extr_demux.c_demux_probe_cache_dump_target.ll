; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_probe_cache_dump_target.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_probe_cache_dump_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, i32, %struct.TYPE_2__**, %struct.demuxer* }
%struct.TYPE_2__ = type { %struct.demux_stream* }
%struct.demux_stream = type { i64 }
%struct.demux_cached_range = type { double, %struct.demux_queue** }
%struct.demux_queue = type { i32 }
%struct.demux_packet = type { %struct.demux_packet*, i64, i32, i32 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@STREAM_TYPE_COUNT = common dso_local global i32 0, align 4
@STREAM_VIDEO = common dso_local global i64 0, align 8
@STREAM_AUDIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @demux_probe_cache_dump_target(%struct.demuxer* %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.demux_internal*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.demux_cached_range*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.demux_stream*, align 8
  %18 = alloca %struct.demux_queue*, align 8
  %19 = alloca %struct.demux_packet*, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  store %struct.demuxer* %0, %struct.demuxer** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %24 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %23, i32 0, i32 0
  %25 = load %struct.demux_internal*, %struct.demux_internal** %24, align 8
  store %struct.demux_internal* %25, %struct.demux_internal** %8, align 8
  %26 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %27 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %28 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %27, i32 0, i32 4
  %29 = load %struct.demuxer*, %struct.demuxer** %28, align 8
  %30 = icmp eq %struct.demuxer* %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %33, double* %9, align 8
  %34 = load double, double* %6, align 8
  %35 = load double, double* @MP_NOPTS_VALUE, align 8
  %36 = fcmp oeq double %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load double, double* %6, align 8
  store double %38, double* %4, align 8
  br label %232

39:                                               ; preds = %3
  %40 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %41 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %40, i32 0, i32 1
  %42 = call i32 @pthread_mutex_lock(i32* %41)
  %43 = load double, double* %6, align 8
  %44 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %45 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 0, %46
  %48 = call double @MP_ADD_PTS(double %43, i32 %47)
  store double %48, double* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load double, double* %6, align 8
  %53 = fsub double %52, 1.000000e-03
  br label %56

54:                                               ; preds = %39
  %55 = load double, double* %6, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi double [ %53, %51 ], [ %55, %54 ]
  store double %57, double* %10, align 8
  store i32 0, i32* %11, align 4
  %58 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %59 = load double, double* %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call %struct.demux_cached_range* @find_cache_seek_range(%struct.demux_internal* %58, double %59, i32 %60)
  store %struct.demux_cached_range* %61, %struct.demux_cached_range** %12, align 8
  %62 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %63 = icmp ne %struct.demux_cached_range* %62, null
  br i1 %63, label %64, label %222

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %69 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %70 = call i32 @adjust_cache_seek_target(%struct.demux_internal* %68, %struct.demux_cached_range* %69, double* %6, i32* %11)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %13, align 8
  %75 = alloca double, i64 %73, align 16
  store i64 %73, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %85, %71
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load double, double* @MP_NOPTS_VALUE, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %75, i64 %83
  store double %81, double* %84, align 8
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %15, align 4
  br label %76

88:                                               ; preds = %76
  store i32 0, i32* %16, align 4
  br label %89

89:                                               ; preds = %183, %88
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %92 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %186

95:                                               ; preds = %89
  %96 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %97 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %96, i32 0, i32 3
  %98 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %98, i64 %100
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load %struct.demux_stream*, %struct.demux_stream** %103, align 8
  store %struct.demux_stream* %104, %struct.demux_stream** %17, align 8
  %105 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %106 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %105, i32 0, i32 1
  %107 = load %struct.demux_queue**, %struct.demux_queue*** %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %107, i64 %109
  %111 = load %struct.demux_queue*, %struct.demux_queue** %110, align 8
  store %struct.demux_queue* %111, %struct.demux_queue** %18, align 8
  %112 = load %struct.demux_queue*, %struct.demux_queue** %18, align 8
  %113 = load double, double* %6, align 8
  %114 = load i32, i32* %11, align 4
  %115 = call %struct.demux_packet* @find_seek_target(%struct.demux_queue* %112, double %113, i32 %114)
  store %struct.demux_packet* %115, %struct.demux_packet** %19, align 8
  %116 = load %struct.demux_packet*, %struct.demux_packet** %19, align 8
  %117 = icmp ne %struct.demux_packet* %116, null
  br i1 %117, label %118, label %182

118:                                              ; preds = %95
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %162

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %146, %121
  %123 = load %struct.demux_packet*, %struct.demux_packet** %19, align 8
  %124 = icmp ne %struct.demux_packet* %123, null
  br i1 %124, label %125, label %161

125:                                              ; preds = %122
  %126 = load %struct.demux_packet*, %struct.demux_packet** %19, align 8
  %127 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.demux_packet*, %struct.demux_packet** %19, align 8
  %130 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call double @MP_PTS_OR_DEF(i32 %128, i32 %131)
  store double %132, double* %20, align 8
  %133 = load double, double* %20, align 8
  %134 = load double, double* @MP_NOPTS_VALUE, align 8
  %135 = fcmp une double %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %125
  %137 = load double, double* %20, align 8
  %138 = load double, double* %6, align 8
  %139 = fcmp oge double %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load %struct.demux_packet*, %struct.demux_packet** %19, align 8
  %142 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %161

146:                                              ; preds = %140, %136, %125
  %147 = load %struct.demux_stream*, %struct.demux_stream** %17, align 8
  %148 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds double, double* %75, i64 %149
  %151 = load double, double* %150, align 8
  %152 = load double, double* %20, align 8
  %153 = call double @MP_PTS_MAX(double %151, double %152)
  %154 = load %struct.demux_stream*, %struct.demux_stream** %17, align 8
  %155 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds double, double* %75, i64 %156
  store double %153, double* %157, align 8
  %158 = load %struct.demux_packet*, %struct.demux_packet** %19, align 8
  %159 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %158, i32 0, i32 0
  %160 = load %struct.demux_packet*, %struct.demux_packet** %159, align 8
  store %struct.demux_packet* %160, %struct.demux_packet** %19, align 8
  br label %122

161:                                              ; preds = %145, %122
  br label %181

162:                                              ; preds = %118
  %163 = load %struct.demux_packet*, %struct.demux_packet** %19, align 8
  %164 = call i32 @compute_keyframe_times(%struct.demux_packet* %163, double* %21, i32* null)
  %165 = load double, double* %21, align 8
  %166 = load %struct.demux_cached_range*, %struct.demux_cached_range** %12, align 8
  %167 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %166, i32 0, i32 0
  %168 = load double, double* %167, align 8
  %169 = call double @MP_PTS_MAX(double %165, double %168)
  store double %169, double* %21, align 8
  %170 = load %struct.demux_stream*, %struct.demux_stream** %17, align 8
  %171 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds double, double* %75, i64 %172
  %174 = load double, double* %173, align 8
  %175 = load double, double* %21, align 8
  %176 = call double @MP_PTS_MAX(double %174, double %175)
  %177 = load %struct.demux_stream*, %struct.demux_stream** %17, align 8
  %178 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds double, double* %75, i64 %179
  store double %176, double* %180, align 8
  br label %181

181:                                              ; preds = %162, %161
  br label %182

182:                                              ; preds = %181, %95
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %16, align 4
  br label %89

186:                                              ; preds = %89
  %187 = load i64, i64* @STREAM_VIDEO, align 8
  %188 = getelementptr inbounds double, double* %75, i64 %187
  %189 = load double, double* %188, align 8
  store double %189, double* %9, align 8
  %190 = load double, double* %9, align 8
  %191 = load double, double* @MP_NOPTS_VALUE, align 8
  %192 = fcmp oeq double %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i64, i64* @STREAM_AUDIO, align 8
  %195 = getelementptr inbounds double, double* %75, i64 %194
  %196 = load double, double* %195, align 8
  store double %196, double* %9, align 8
  br label %197

197:                                              ; preds = %193, %186
  %198 = load double, double* %9, align 8
  %199 = load double, double* @MP_NOPTS_VALUE, align 8
  %200 = fcmp oeq double %198, %199
  br i1 %200, label %201, label %220

201:                                              ; preds = %197
  store i32 0, i32* %22, align 4
  br label %202

202:                                              ; preds = %216, %201
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* @STREAM_TYPE_COUNT, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %219

206:                                              ; preds = %202
  %207 = load i32, i32* %22, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %75, i64 %208
  %210 = load double, double* %209, align 8
  store double %210, double* %9, align 8
  %211 = load double, double* %9, align 8
  %212 = load double, double* @MP_NOPTS_VALUE, align 8
  %213 = fcmp une double %211, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %219

215:                                              ; preds = %206
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %22, align 4
  br label %202

219:                                              ; preds = %214, %202
  br label %220

220:                                              ; preds = %219, %197
  %221 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %221)
  br label %222

222:                                              ; preds = %220, %56
  %223 = load double, double* %9, align 8
  %224 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %225 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call double @MP_ADD_PTS(double %223, i32 %226)
  store double %227, double* %9, align 8
  %228 = load %struct.demux_internal*, %struct.demux_internal** %8, align 8
  %229 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %228, i32 0, i32 1
  %230 = call i32 @pthread_mutex_unlock(i32* %229)
  %231 = load double, double* %9, align 8
  store double %231, double* %4, align 8
  br label %232

232:                                              ; preds = %222, %37
  %233 = load double, double* %4, align 8
  ret double %233
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local double @MP_ADD_PTS(double, i32) #1

declare dso_local %struct.demux_cached_range* @find_cache_seek_range(%struct.demux_internal*, double, i32) #1

declare dso_local i32 @adjust_cache_seek_target(%struct.demux_internal*, %struct.demux_cached_range*, double*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.demux_packet* @find_seek_target(%struct.demux_queue*, double, i32) #1

declare dso_local double @MP_PTS_OR_DEF(i32, i32) #1

declare dso_local double @MP_PTS_MAX(double, double) #1

declare dso_local i32 @compute_keyframe_times(%struct.demux_packet*, double*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
