; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_init_event_handlers.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_init_event_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_22__, i32, %struct.TYPE_15__, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32*, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i8*, i32*, i32, i32, i32 (i32, i64)*, i32* }

@ngx_rtmp_init_event_handlers.pm_events = internal global [5 x i64] [i64 128, i64 138, i64 137, i64 136, i64 129], align 16
@ngx_rtmp_init_event_handlers.amf_events = internal global [6 x i64] [i64 132, i64 131, i64 130, i64 135, i64 134, i64 133], align 16
@ngx_rtmp_protocol_message_handler = common dso_local global i32 0, align 4
@ngx_rtmp_amf_message_handler = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_USER = common dso_local global i64 0, align 8
@ngx_rtmp_user_message_handler = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_AGGREGATE = common dso_local global i64 0, align 8
@ngx_rtmp_aggregate_message_handler = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_cacheline_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"amf_hash\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_17__*)* @ngx_rtmp_init_event_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_init_event_handlers(%struct.TYPE_21__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i64, i64* %10, align 8
  %14 = icmp ult i64 %13, 5
  br i1 %14, label %15, label %30

15:                                               ; preds = %12
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds [5 x i64], [5 x i64]* @ngx_rtmp_init_event_handlers.pm_events, i64 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i64 %21
  %23 = call i8* @ngx_array_push(%struct.TYPE_22__* %22)
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %7, align 8
  %25 = load i32, i32* @ngx_rtmp_protocol_message_handler, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %15
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %10, align 8
  br label %12

30:                                               ; preds = %12
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %32, 6
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds [6 x i64], [6 x i64]* @ngx_rtmp_init_event_handlers.amf_events, i64 0, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i64 %40
  %42 = call i8* @ngx_array_push(%struct.TYPE_22__* %41)
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %7, align 8
  %44 = load i32, i32* @ngx_rtmp_amf_message_handler, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %34
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %31

49:                                               ; preds = %31
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %51, align 8
  %53 = load i64, i64* @NGX_RTMP_MSG_USER, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i64 %53
  %55 = call i8* @ngx_array_push(%struct.TYPE_22__* %54)
  %56 = bitcast i8* %55 to i32*
  store i32* %56, i32** %7, align 8
  %57 = load i32, i32* @ngx_rtmp_user_message_handler, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = load i64, i64* @NGX_RTMP_MSG_AGGREGATE, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i64 %62
  %64 = call i8* @ngx_array_push(%struct.TYPE_22__* %63)
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %7, align 8
  %66 = load i32, i32* @ngx_rtmp_aggregate_message_handler, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ngx_array_init(%struct.TYPE_22__* %69, i32 %72, i32 1, i32 32)
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %8, align 8
  store i64 0, i64* %10, align 8
  br label %78

78:                                               ; preds = %182, %49
  %79 = load i64, i64* %10, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %187

85:                                               ; preds = %78
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  store %struct.TYPE_19__* %89, %struct.TYPE_19__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %90

90:                                               ; preds = %124, %85
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %90
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %97
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ngx_strncmp(i32 %111, i32 %115, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %107
  br label %129

123:                                              ; preds = %107, %97
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %11, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 1
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %9, align 8
  br label %90

129:                                              ; preds = %122, %90
  %130 = load i64, i64* %11, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %130, %134
  br i1 %135, label %136, label %171

136:                                              ; preds = %129
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = call i8* @ngx_array_push(%struct.TYPE_22__* %138)
  %140 = bitcast i8* %139 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %140, %struct.TYPE_19__** %9, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = bitcast %struct.TYPE_16__* %142 to i8*
  %146 = bitcast %struct.TYPE_16__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 16, i1 false)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @ngx_hash_key_lc(i32 %150, i64 %154)
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32* @ngx_array_create(i32 %160, i32 1, i32 4)
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 0
  store i32* %161, i32** %163, align 8
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %136
  %169 = load i64, i64* @NGX_ERROR, align 8
  store i64 %169, i64* %3, align 8
  br label %216

170:                                              ; preds = %136
  br label %171

171:                                              ; preds = %170, %129
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = bitcast i32* %174 to %struct.TYPE_22__*
  %176 = call i8* @ngx_array_push(%struct.TYPE_22__* %175)
  %177 = bitcast i8* %176 to i32*
  store i32* %177, i32** %7, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %7, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %171
  %183 = load i64, i64* %10, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %10, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 1
  store %struct.TYPE_18__* %186, %struct.TYPE_18__** %8, align 8
  br label %78

187:                                              ; preds = %78
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 6
  store i32* %189, i32** %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  store i32 (i32, i64)* @ngx_hash_key_lc, i32 (i32, i64)** %191, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i32 512, i32* %192, align 8
  %193 = load i32, i32* @ngx_cacheline_size, align 4
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 4
  store i32 %193, i32* %194, align 4
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %195, align 8
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 3
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 2
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %203, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i64 @ngx_hash_init(%struct.TYPE_20__* %6, %struct.TYPE_19__* %204, i64 %208)
  %210 = load i64, i64* @NGX_OK, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %187
  %213 = load i64, i64* @NGX_ERROR, align 8
  store i64 %213, i64* %3, align 8
  br label %216

214:                                              ; preds = %187
  %215 = load i64, i64* @NGX_OK, align 8
  store i64 %215, i64* %3, align 8
  br label %216

216:                                              ; preds = %214, %212, %168
  %217 = load i64, i64* %3, align 8
  ret i64 %217
}

declare dso_local i8* @ngx_array_push(%struct.TYPE_22__*) #1

declare dso_local i32 @ngx_array_init(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local i32 @ngx_strncmp(i32, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_hash_key_lc(i32, i64) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_20__*, %struct.TYPE_19__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
