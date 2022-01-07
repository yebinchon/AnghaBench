; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_read_data.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_20__, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i64, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_25__*, %struct.TYPE_24__* }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i64, i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"skipping http2 DATA frame\00", align 1
@NGX_HTTP_V2_END_STREAM_FLAG = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"http2 preread buffer overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_23__*, i32*, i32*)* @ngx_http_v2_state_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_read_data(%struct.TYPE_23__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %12, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %19 = icmp eq %struct.TYPE_21__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__* %21, i32* %22, i32* %23)
  store i32* %24, i32** %4, align 8
  br label %218

25:                                               ; preds = %3
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ngx_log_debug0(i32 %31, i32 %36, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__* %38, i32* %39, i32* %40)
  store i32* %41, i32** %4, align 8
  br label %218

42:                                               ; preds = %25
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %44, align 8
  store %struct.TYPE_24__* %45, %struct.TYPE_24__** %11, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ngx_log_debug0(i32 %56, i32 %61, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__* %63, i32* %64, i32* %65)
  store i32* %66, i32** %4, align 8
  br label %218

67:                                               ; preds = %50, %42
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %74, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %67
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %8, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  %90 = and i32 %88, %89
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %80, %67
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, %94
  store i64 %98, i64* %96, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %121

103:                                              ; preds = %93
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @ngx_http_v2_process_request_body(%struct.TYPE_24__* %104, i32* %105, i64 %106, i32 %109)
  store i64 %110, i64* %10, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* @NGX_OK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %103
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i32 @ngx_http_finalize_request(%struct.TYPE_24__* %117, i64 %118)
  br label %120

120:                                              ; preds = %114, %103
  br label %182

121:                                              ; preds = %93
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %181

124:                                              ; preds = %121
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  store %struct.TYPE_25__* %127, %struct.TYPE_25__** %9, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %129 = icmp eq %struct.TYPE_25__* %128, null
  br i1 %129, label %130, label %151

130:                                              ; preds = %124
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %132 = load i32, i32* @ngx_http_v2_module, align 4
  %133 = call %struct.TYPE_22__* @ngx_http_get_module_srv_conf(%struct.TYPE_24__* %131, i32 %132)
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %13, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.TYPE_25__* @ngx_create_temp_buf(i32 %136, i32 %139)
  store %struct.TYPE_25__* %140, %struct.TYPE_25__** %9, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %142 = icmp eq %struct.TYPE_25__* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %130
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %145 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %146 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_23__* %144, i32 %145)
  store i32* %146, i32** %4, align 8
  br label %218

147:                                              ; preds = %130
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  store %struct.TYPE_25__* %148, %struct.TYPE_25__** %150, align 8
  br label %151

151:                                              ; preds = %147, %124
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %155, %158
  %160 = icmp ugt i64 %152, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %151
  %162 = load i32, i32* @NGX_LOG_ALERT, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ngx_log_error(i32 %162, i32 %167, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %171 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_23__* %169, i32 %170)
  store i32* %171, i32** %4, align 8
  br label %218

172:                                              ; preds = %151
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32*, i32** %6, align 8
  %177 = load i64, i64* %8, align 8
  %178 = call i64 @ngx_cpymem(i64 %175, i32* %176, i64 %177)
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %172, %121
  br label %182

182:                                              ; preds = %181, %120
  %183 = load i64, i64* %8, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 %183
  store i32* %185, i32** %6, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = sub i64 %190, %186
  store i64 %191, i64* %189, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %182
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = load i32*, i32** %7, align 8
  %201 = call i32* @ngx_http_v2_state_save(%struct.TYPE_23__* %198, i32* %199, i32* %200, i32* (%struct.TYPE_23__*, i32*, i32*)* @ngx_http_v2_state_read_data)
  store i32* %201, i32** %4, align 8
  br label %218

202:                                              ; preds = %182
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %210 = load i32*, i32** %6, align 8
  %211 = load i32*, i32** %7, align 8
  %212 = call i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__* %209, i32* %210, i32* %211)
  store i32* %212, i32** %4, align 8
  br label %218

213:                                              ; preds = %202
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %215 = load i32*, i32** %6, align 8
  %216 = load i32*, i32** %7, align 8
  %217 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_23__* %214, i32* %215, i32* %216)
  store i32* %217, i32** %4, align 8
  br label %218

218:                                              ; preds = %213, %208, %197, %161, %143, %55, %30, %20
  %219 = load i32*, i32** %4, align 8
  ret i32* %219
}

declare dso_local i32* @ngx_http_v2_state_skip_padded(%struct.TYPE_23__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_v2_process_request_body(%struct.TYPE_24__*, i32*, i64, i32) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_24__*, i64) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_srv_conf(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_create_temp_buf(i32, i32) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_cpymem(i64, i32*, i64) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_23__*, i32*, i32*, i32* (%struct.TYPE_23__*, i32*, i32*)*) #1

declare dso_local i32* @ngx_http_v2_state_complete(%struct.TYPE_23__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
