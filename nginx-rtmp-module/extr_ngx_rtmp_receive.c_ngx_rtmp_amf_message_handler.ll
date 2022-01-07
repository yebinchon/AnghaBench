; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_receive.c_ngx_rtmp_amf_message_handler.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_receive.c_ngx_rtmp_amf_message_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_31__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64*, i64* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_31__*, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)* }

@ngx_rtmp_amf_message_handler.func = internal global [128 x i32] zeroinitializer, align 16
@ngx_rtmp_amf_message_handler.elts = internal global [1 x %struct.TYPE_33__] [%struct.TYPE_33__ { i32 129, i32 128, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @ngx_rtmp_amf_message_handler.func, i32 0, i32 0), i32 512, i32 0 }], align 16
@NGX_RTMP_MSG_AMF_SHARED = common dso_local global i64 0, align 8
@NGX_RTMP_MSG_AMF3_SHARED = common dso_local global i64 0, align 8
@NGX_RTMP_AMF_TYPELESS = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_AMF3_META = common dso_local global i64 0, align 8
@NGX_RTMP_MSG_AMF3_CMD = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"AMF3 prefix: %ui\00", align 1
@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"AMF cmd failed\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"AMF func '%s' passed to handler %d/%d\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"AMF cmd '%s' no handler\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_rtmp_amf_message_handler(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1, %struct.TYPE_31__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %7, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NGX_RTMP_MSG_AMF_SHARED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NGX_RTMP_MSG_AMF3_SHARED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19, %3
  %26 = load i32, i32* @NGX_RTMP_AMF_TYPELESS, align 4
  %27 = load i32, i32* getelementptr inbounds ([1 x %struct.TYPE_33__], [1 x %struct.TYPE_33__]* @ngx_rtmp_amf_message_handler.elts, i64 0, i64 0, i32 1), align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* getelementptr inbounds ([1 x %struct.TYPE_33__], [1 x %struct.TYPE_33__]* @ngx_rtmp_amf_message_handler.elts, i64 0, i64 0, i32 1), align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i32, i32* @NGX_RTMP_AMF_TYPELESS, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* getelementptr inbounds ([1 x %struct.TYPE_33__], [1 x %struct.TYPE_33__]* @ngx_rtmp_amf_message_handler.elts, i64 0, i64 0, i32 1), align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* getelementptr inbounds ([1 x %struct.TYPE_33__], [1 x %struct.TYPE_33__]* @ngx_rtmp_amf_message_handler.elts, i64 0, i64 0, i32 1), align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NGX_RTMP_MSG_AMF3_SHARED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NGX_RTMP_MSG_AMF3_META, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NGX_RTMP_MSG_AMF3_CMD, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %46, %40, %34
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = icmp ugt i64* %57, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %52
  %65 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @ngx_log_debug1(i32 %65, i32 %70, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i32 1
  store i64* %84, i64** %82, align 8
  br label %85

85:                                               ; preds = %64, %52, %46
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %87 = load i32, i32* @ngx_rtmp_core_module, align 4
  %88 = call %struct.TYPE_32__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_29__* %86, i32 %87)
  store %struct.TYPE_32__* %88, %struct.TYPE_32__** %9, align 8
  %89 = call i32 @ngx_memzero(%struct.TYPE_25__* %8, i32 24)
  %90 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  store %struct.TYPE_31__* %90, %struct.TYPE_31__** %91, align 8
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  %98 = call i32 @memset(i32* getelementptr inbounds ([128 x i32], [128 x i32]* @ngx_rtmp_amf_message_handler.func, i64 0, i64 0), i32 0, i32 512)
  %99 = call i64 @ngx_rtmp_amf_read(%struct.TYPE_25__* %8, %struct.TYPE_33__* getelementptr inbounds ([1 x %struct.TYPE_33__], [1 x %struct.TYPE_33__]* @ngx_rtmp_amf_message_handler.elts, i64 0, i64 0), i32 1)
  %100 = load i64, i64* @NGX_OK, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %85
  %103 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ngx_log_debug0(i32 %103, i32 %108, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 130, i32* %4, align 4
  br label %187

110:                                              ; preds = %85
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %111, align 8
  store %struct.TYPE_31__* %112, %struct.TYPE_31__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = sext i32 %114 to i64
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  store i64* %121, i64** %118, align 8
  %122 = call i64 @ngx_strlen(i32* getelementptr inbounds ([128 x i32], [128 x i32]* @ngx_rtmp_amf_message_handler.func, i64 0, i64 0))
  store i64 %122, i64* %12, align 8
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @ngx_hash_strlow(i32* getelementptr inbounds ([128 x i32], [128 x i32]* @ngx_rtmp_amf_message_handler.func, i64 0, i64 0), i32* getelementptr inbounds ([128 x i32], [128 x i32]* @ngx_rtmp_amf_message_handler.func, i64 0, i64 0), i64 %125)
  %127 = load i64, i64* %12, align 8
  %128 = call %struct.TYPE_26__* @ngx_hash_find(i32* %124, i32 %126, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @ngx_rtmp_amf_message_handler.func, i64 0, i64 0), i64 %127)
  store %struct.TYPE_26__* %128, %struct.TYPE_26__** %10, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %130 = icmp ne %struct.TYPE_26__* %129, null
  br i1 %130, label %131, label %176

131:                                              ; preds = %110
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %131
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)** %138, align 8
  %140 = bitcast i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)* %139 to i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)**
  store i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)** %140, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)*** %11, align 8
  store i64 0, i64* %13, align 8
  br label %141

141:                                              ; preds = %170, %136
  %142 = load i64, i64* %13, align 8
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ult i64 %142, %145
  br i1 %146, label %147, label %175

147:                                              ; preds = %141
  %148 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i64, i64* %13, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @ngx_log_debug3(i32 %148, i32 %153, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([128 x i32], [128 x i32]* @ngx_rtmp_amf_message_handler.func, i64 0, i64 0), i64 %154, i64 %157)
  %159 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)**, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)*** %11, align 8
  %160 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)** %159, align 8
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %162 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %164 = call i32 %160(%struct.TYPE_29__* %161, %struct.TYPE_30__* %162, %struct.TYPE_31__* %163)
  switch i32 %164, label %169 [
    i32 130, label %165
    i32 131, label %166
  ]

165:                                              ; preds = %147
  store i32 130, i32* %4, align 4
  br label %187

166:                                              ; preds = %147
  %167 = load i64, i64* @NGX_OK, align 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %4, align 4
  br label %187

169:                                              ; preds = %147
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %13, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %13, align 8
  %173 = load i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)**, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)*** %11, align 8
  %174 = getelementptr inbounds i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)*, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)** %173, i32 1
  store i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)** %174, i32 (%struct.TYPE_29__*, %struct.TYPE_30__*, %struct.TYPE_31__*)*** %11, align 8
  br label %141

175:                                              ; preds = %141
  br label %184

176:                                              ; preds = %131, %110
  %177 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @ngx_log_debug1(i32 %177, i32 %182, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 ptrtoint ([128 x i32]* @ngx_rtmp_amf_message_handler.func to i32))
  br label %184

184:                                              ; preds = %176, %175
  %185 = load i64, i64* @NGX_OK, align 8
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %184, %166, %165, %102
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @ngx_rtmp_amf_read(%struct.TYPE_25__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_strlen(i32*) #1

declare dso_local %struct.TYPE_26__* @ngx_hash_find(i32*, i32, i32*, i64) #1

declare dso_local i32 @ngx_hash_strlow(i32*, i32*, i64) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
