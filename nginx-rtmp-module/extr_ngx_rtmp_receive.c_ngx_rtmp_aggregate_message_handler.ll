; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_receive.c_ngx_rtmp_aggregate_message_handler.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_receive.c_ngx_rtmp_aggregate_message_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"RTMP aggregate %s (%d) len=%uD time=%uD (+%D) msid=%uD\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RTMP error parsing aggregate\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RTMP aggregate prev_size=%uD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_rtmp_aggregate_message_handler(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = bitcast %struct.TYPE_16__* %18 to i8*
  %21 = bitcast %struct.TYPE_16__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  store i64 1, i64* %12, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %182, %3
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %191

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %27 = call i64 @ngx_rtmp_fetch_uint8(%struct.TYPE_17__** %7, i64* %26)
  %28 = load i64, i64* @NGX_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @NGX_OK, align 8
  store i64 %31, i64* %4, align 8
  br label %193

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %34 = call i64 @ngx_rtmp_fetch_uint32(%struct.TYPE_17__** %7, i64* %33, i32 3)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %4, align 8
  br label %193

39:                                               ; preds = %32
  %40 = call i64 @ngx_rtmp_fetch_uint32(%struct.TYPE_17__** %7, i64* %9, i32 3)
  %41 = load i64, i64* @NGX_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @NGX_ERROR, align 8
  store i64 %44, i64* %4, align 8
  br label %193

45:                                               ; preds = %39
  %46 = getelementptr inbounds i64, i64* %9, i64 3
  %47 = call i64 @ngx_rtmp_fetch_uint8(%struct.TYPE_17__** %7, i64* %46)
  %48 = load i64, i64* @NGX_OK, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @NGX_ERROR, align 8
  store i64 %51, i64* %4, align 8
  br label %193

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %54 = call i64 @ngx_rtmp_fetch_uint32(%struct.TYPE_17__** %7, i64* %53, i32 3)
  %55 = load i64, i64* @NGX_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @NGX_ERROR, align 8
  store i64 %58, i64* %4, align 8
  br label %193

59:                                               ; preds = %52
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %9, align 8
  store i64 %63, i64* %8, align 8
  store i64 0, i64* %12, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ngx_rtmp_message_type(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %8, align 8
  %82 = sub i64 %80, %81
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ngx_log_debug6(i32 %65, i32 %70, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %75, i64 %77, i64 %79, i64 %82, i64 %84)
  store i64 0, i64* %11, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %16, align 8
  br label %87

87:                                               ; preds = %111, %64
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %89 = icmp ne %struct.TYPE_17__* %88, null
  br i1 %89, label %90, label %115

90:                                               ; preds = %87
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  store %struct.TYPE_18__* %93, %struct.TYPE_18__** %15, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = ptrtoint i32* %96 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = load i64, i64* %11, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ugt i64 %106, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %90
  br label %115

111:                                              ; preds = %90
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %16, align 8
  br label %87

115:                                              ; preds = %110, %87
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %117 = icmp eq %struct.TYPE_17__* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* @NGX_LOG_INFO, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ngx_log_error(i32 %119, i32 %124, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %126 = load i64, i64* @NGX_ERROR, align 8
  store i64 %126, i64* %4, align 8
  br label %193

127:                                              ; preds = %115
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %129, align 8
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %17, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %132, align 8
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %15, align 8
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  store i32* %138, i32** %13, align 8
  %139 = load i64, i64* %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %139, %141
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = sub i64 0, %142
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32* %147, i32** %144, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %9, align 8
  %152 = add i64 %150, %151
  %153 = load i64, i64* %8, align 8
  %154 = sub i64 %152, %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  store i64 %154, i64* %155, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = call i64 @ngx_rtmp_receive_message(%struct.TYPE_15__* %156, %struct.TYPE_16__* %18, %struct.TYPE_17__* %157)
  store i64 %158, i64* %14, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %159, %struct.TYPE_17__** %7, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  store %struct.TYPE_17__* %160, %struct.TYPE_17__** %162, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  store i32* %165, i32** %167, align 8
  %168 = load i32*, i32** %13, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  store i32* %168, i32** %170, align 8
  %171 = load i64, i64* %14, align 8
  %172 = load i64, i64* @NGX_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %127
  %175 = load i64, i64* %14, align 8
  store i64 %175, i64* %4, align 8
  br label %193

176:                                              ; preds = %127
  %177 = call i64 @ngx_rtmp_fetch_uint32(%struct.TYPE_17__** %7, i64* %10, i32 4)
  %178 = load i64, i64* @NGX_OK, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i64, i64* @NGX_OK, align 8
  store i64 %181, i64* %4, align 8
  br label %193

182:                                              ; preds = %176
  %183 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i64, i64* %10, align 8
  %190 = call i32 @ngx_log_debug1(i32 %183, i32 %188, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %189)
  br label %22

191:                                              ; preds = %22
  %192 = load i64, i64* @NGX_OK, align 8
  store i64 %192, i64* %4, align 8
  br label %193

193:                                              ; preds = %191, %180, %174, %118, %57, %50, %43, %37, %30
  %194 = load i64, i64* %4, align 8
  ret i64 %194
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ngx_rtmp_fetch_uint8(%struct.TYPE_17__**, i64*) #2

declare dso_local i64 @ngx_rtmp_fetch_uint32(%struct.TYPE_17__**, i64*, i32) #2

declare dso_local i32 @ngx_log_debug6(i32, i32, i32, i8*, i32, i64, i64, i64, i64, i64) #2

declare dso_local i32 @ngx_rtmp_message_type(i64) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #2

declare dso_local i64 @ngx_rtmp_receive_message(%struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_17__*) #2

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
