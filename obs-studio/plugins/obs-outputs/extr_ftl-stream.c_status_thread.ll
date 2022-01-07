; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_status_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_status_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, float, i32, i64, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64, float, i64 }
%struct.TYPE_9__ = type { i32, i32 }

@FTL_STATUS_TIMEOUT = common dso_local global i64 0, align 8
@FTL_QUEUE_EMPTY = common dso_local global i64 0, align 8
@FTL_NOT_INITIALIZED = common dso_local global i64 0, align 8
@FTL_STATUS_EVENT = common dso_local global i32 0, align 4
@RET_EXIT = common dso_local global i32 0, align 4
@RET_BREAK = common dso_local global i32 0, align 4
@FTL_STATUS_LOG = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"[%d] %s\00", align 1
@FTL_STATUS_VIDEO_PACKETS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Avg packet send per second %3.1f, total nack requests %d\00", align 1
@FTL_STATUS_VIDEO_PACKETS_INSTANT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"avg transmit delay %dms (min: %d, max: %d), avg rtt %dms (min: %d, max: %d)\00", align 1
@FTL_STATUS_VIDEO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [124 x i8] c"Queue an average of %3.2f fps (%3.1f kbps), sent an average of %3.2f fps (%3.1f kbps), queue fullness %d, max frame size %d\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Status:  Got Status message of type %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"status_thread:  Exited\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @status_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @status_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ftl_stream*, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.ftl_stream*
  store %struct.ftl_stream* %15, %struct.ftl_stream** %4, align 8
  br label %16

16:                                               ; preds = %239, %32, %1
  %17 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %18 = call i32 @disconnected(%struct.ftl_stream* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %240

21:                                               ; preds = %16
  %22 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %23 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %22, i32 0, i32 3
  %24 = call i64 @ftl_ingest_get_status(i32* %23, %struct.TYPE_12__* %5, i32 1000)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @FTL_STATUS_TIMEOUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @FTL_QUEUE_EMPTY, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %21
  br label %16

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @FTL_NOT_INITIALIZED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %240

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FTL_STATUS_EVENT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %39
  %45 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %46 = call i32 @ftl_event(%struct.ftl_stream* %45, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %5)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @RET_EXIT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* null, i8** %2, align 8
  br label %247

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @RET_BREAK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %240

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  br label %239

58:                                               ; preds = %39
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @FTL_STATUS_LOG, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* @LOG_INFO, align 4
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @blog(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %72)
  br label %238

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FTL_STATUS_VIDEO_PACKETS, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %126

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %8, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %86 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %90 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %99 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %79
  %105 = load i32, i32* @LOG_INFO, align 4
  br label %108

106:                                              ; preds = %79
  %107 = load i32, i32* @LOG_DEBUG, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to float
  %115 = fmul float %114, 1.000000e+03
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load float, float* %117, align 8
  %119 = fdiv float %115, %118
  %120 = fpext float %119 to double
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i32, i8*, ...) @blog(i32 %110, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), double %120, i32 %124)
  br label %237

126:                                              ; preds = %74
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @FTL_STATUS_VIDEO_PACKETS_INSTANT, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %164

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store %struct.TYPE_14__* %133, %struct.TYPE_14__** %10, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 20
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @LOG_INFO, align 4
  br label %142

140:                                              ; preds = %131
  %141 = load i32, i32* @LOG_DEBUG, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  store i32 %143, i32* %11, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, ...) @blog(i32 %144, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %147, i32 %150, i32 %153, i32 %156, i32 %159, i32 %162)
  br label %236

164:                                              ; preds = %126
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @FTL_STATUS_VIDEO, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %230

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store %struct.TYPE_11__* %171, %struct.TYPE_11__** %12, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp sgt i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* @LOG_INFO, align 4
  br label %180

178:                                              ; preds = %169
  %179 = load i32, i32* @LOG_DEBUG, align 4
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi i32 [ %177, %176 ], [ %179, %178 ]
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = sitofp i64 %185 to float
  %187 = fmul float %186, 1.000000e+03
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load float, float* %189, align 8
  %191 = fdiv float %187, %190
  %192 = fpext float %191 to double
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = sitofp i64 %195 to float
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load float, float* %198, align 8
  %200 = fdiv float %196, %199
  %201 = fmul float %200, 8.000000e+00
  %202 = fpext float %201 to double
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 4
  %205 = load i64, i64* %204, align 8
  %206 = sitofp i64 %205 to float
  %207 = fmul float %206, 1.000000e+03
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load float, float* %209, align 8
  %211 = fdiv float %207, %210
  %212 = fpext float %211 to double
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = sitofp i64 %215 to float
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load float, float* %218, align 8
  %220 = fdiv float %216, %219
  %221 = fmul float %220, 8.000000e+00
  %222 = fpext float %221 to double
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i8*, ...) @blog(i32 %182, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), double %192, double %202, double %212, double %222, i64 %225, i32 %228)
  br label %235

230:                                              ; preds = %164
  %231 = load i32, i32* @LOG_DEBUG, align 4
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 (i32, i8*, ...) @blog(i32 %231, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %230, %180
  br label %236

236:                                              ; preds = %235, %142
  br label %237

237:                                              ; preds = %236, %108
  br label %238

238:                                              ; preds = %237, %63
  br label %239

239:                                              ; preds = %238, %57
  br label %16

240:                                              ; preds = %55, %37, %16
  %241 = load i32, i32* @LOG_DEBUG, align 4
  %242 = call i32 (i32, i8*, ...) @blog(i32 %241, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %243 = load %struct.ftl_stream*, %struct.ftl_stream** %4, align 8
  %244 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @pthread_detach(i32 %245)
  store i8* null, i8** %2, align 8
  br label %247

247:                                              ; preds = %240, %50
  %248 = load i8*, i8** %2, align 8
  ret i8* %248
}

declare dso_local i32 @disconnected(%struct.ftl_stream*) #1

declare dso_local i64 @ftl_ingest_get_status(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ftl_event(%struct.ftl_stream*, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8) #1

declare dso_local i32 @blog(i32, i8*, ...) #1

declare dso_local i32 @pthread_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
