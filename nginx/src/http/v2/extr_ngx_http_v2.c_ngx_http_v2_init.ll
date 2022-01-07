; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_30__ = type { i32 (%struct.TYPE_30__*)*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_29__*, i32, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i64, %struct.TYPE_23__, i32*, i32*, %struct.TYPE_31__*, i32, i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_29__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_26__ = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"init http2 connection\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"processing HTTP/2 connection\00", align 1
@ngx_http_v2_module = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_24__* null, align 8
@NGX_HTTP_V2_DEFAULT_WINDOW = common dso_local global i8* null, align 8
@NGX_HTTP_V2_MAX_WINDOW = common dso_local global i8* null, align 8
@NGX_HTTP_V2_DEFAULT_FRAME_SIZE = common dso_local global i32 0, align 4
@ngx_http_v2_pool_cleanup = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_v2_state_proxy_protocol = common dso_local global i32 0, align 4
@ngx_http_v2_state_preface = common dso_local global i32 0, align 4
@ngx_http_v2_write_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_v2_init(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  %9 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_31__* %11, %struct.TYPE_31__** %3, align 8
  %12 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  store %struct.TYPE_29__* %14, %struct.TYPE_29__** %5, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %19 = call i32 @ngx_log_debug0(i32 %15, %struct.TYPE_22__* %18, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %23, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 10
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ngx_http_v2_module, align 4
  %28 = call %struct.TYPE_28__* @ngx_http_get_module_main_conf(i32 %26, i32 %27)
  store %struct.TYPE_28__* %28, %struct.TYPE_28__** %7, align 8
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %1
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** @ngx_cycle, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @ngx_palloc(i32 %36, i32 %39)
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %49 = call i32 @ngx_http_close_connection(%struct.TYPE_31__* %48)
  br label %209

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @ngx_pcalloc(i32 %54, i32 104)
  %56 = bitcast i8* %55 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %8, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %58 = icmp eq %struct.TYPE_29__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %61 = call i32 @ngx_http_close_connection(%struct.TYPE_31__* %60)
  br label %209

62:                                               ; preds = %51
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 7
  store %struct.TYPE_31__* %63, %struct.TYPE_31__** %65, align 8
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %67 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %67, i32 0, i32 15
  store %struct.TYPE_29__* %66, %struct.TYPE_29__** %68, align 8
  %69 = load i8*, i8** @NGX_HTTP_V2_DEFAULT_WINDOW, align 8
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 14
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @NGX_HTTP_V2_MAX_WINDOW, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 13
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** @NGX_HTTP_V2_DEFAULT_WINDOW, align 8
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 12
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @NGX_HTTP_V2_DEFAULT_FRAME_SIZE, align 4
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ngx_http_v2_module, align 4
  %85 = call %struct.TYPE_27__* @ngx_http_get_module_srv_conf(i32 %83, i32 %84)
  store %struct.TYPE_27__* %85, %struct.TYPE_27__** %6, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %102, align 8
  %104 = call i32* @ngx_create_pool(i32 %98, %struct.TYPE_22__* %103)
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %105, i32 0, i32 6
  store i32* %104, i32** %106, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %62
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %113 = call i32 @ngx_http_close_connection(%struct.TYPE_31__* %112)
  br label %209

114:                                              ; preds = %62
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call %struct.TYPE_26__* @ngx_pool_cleanup_add(i32 %117, i32 0)
  store %struct.TYPE_26__* %118, %struct.TYPE_26__** %4, align 8
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %120 = icmp eq %struct.TYPE_26__* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %123 = call i32 @ngx_http_close_connection(%struct.TYPE_31__* %122)
  br label %209

124:                                              ; preds = %114
  %125 = load i32, i32* @ngx_http_v2_pool_cleanup, align 4
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 0
  store %struct.TYPE_29__* %128, %struct.TYPE_29__** %130, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %135 = call i32 @ngx_http_v2_index_size(%struct.TYPE_27__* %134)
  %136 = sext i32 %135 to i64
  %137 = mul i64 %136, 8
  %138 = trunc i64 %137 to i32
  %139 = call i8* @ngx_pcalloc(i32 %133, i32 %138)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 5
  store i32* %140, i32** %142, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %124
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %149 = call i32 @ngx_http_close_connection(%struct.TYPE_31__* %148)
  br label %209

150:                                              ; preds = %124
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %152 = call i64 @ngx_http_v2_send_settings(%struct.TYPE_29__* %151)
  %153 = load i64, i64* @NGX_ERROR, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %157 = call i32 @ngx_http_close_connection(%struct.TYPE_31__* %156)
  br label %209

158:                                              ; preds = %150
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %160 = load i8*, i8** @NGX_HTTP_V2_MAX_WINDOW, align 8
  %161 = load i8*, i8** @NGX_HTTP_V2_DEFAULT_WINDOW, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = inttoptr i64 %164 to i8*
  %166 = call i64 @ngx_http_v2_send_window_update(%struct.TYPE_29__* %159, i32 0, i8* %165)
  %167 = load i64, i64* @NGX_ERROR, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %171 = call i32 @ngx_http_close_connection(%struct.TYPE_31__* %170)
  br label %209

172:                                              ; preds = %158
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = load i32, i32* @ngx_http_v2_state_proxy_protocol, align 4
  br label %181

179:                                              ; preds = %172
  %180 = load i32, i32* @ngx_http_v2_state_preface, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 2
  %188 = call i32 @ngx_queue_init(i32* %187)
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 1
  %191 = call i32 @ngx_queue_init(i32* %190)
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = call i32 @ngx_queue_init(i32* %193)
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %196, i32 0, i32 2
  store %struct.TYPE_29__* %195, %struct.TYPE_29__** %197, align 8
  %198 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %198, i32 0, i32 0
  store i32 (%struct.TYPE_30__*)* @ngx_http_v2_read_handler, i32 (%struct.TYPE_30__*)** %199, align 8
  %200 = load i32, i32* @ngx_http_v2_write_handler, align 4
  %201 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  store i32 %200, i32* %204, align 4
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %208 = call i32 @ngx_http_v2_read_handler(%struct.TYPE_30__* %207)
  br label %209

209:                                              ; preds = %181, %169, %155, %147, %121, %111, %59, %47
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_22__*, i32, i8*) #1

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_main_conf(i32, i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_close_connection(%struct.TYPE_31__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local i32* @ngx_create_pool(i32, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_26__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @ngx_http_v2_index_size(%struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_v2_send_settings(%struct.TYPE_29__*) #1

declare dso_local i64 @ngx_http_v2_send_window_update(%struct.TYPE_29__*, i32, i8*) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i32 @ngx_http_v2_read_handler(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
