; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_preread_phase.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_core_module.c_ngx_stream_core_preread_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_24__*, i64, i64)*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_19__ = type { i64, i32, i32, i64, i64 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_21__*)*, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"prereading client data\00", align 1
@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_STREAM_OK = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"preread buffer full\00", align 1
@NGX_STREAM_BAD_REQUEST = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_stream_session_handler = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_stream_core_preread_phase(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %9, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = load i32, i32* @ngx_stream_core_module, align 4
  %20 = call %struct.TYPE_23__* @ngx_stream_get_module_srv_conf(%struct.TYPE_21__* %18, i32 %19)
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %10, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i64, i64* @NGX_STREAM_OK, align 8
  store i64 %28, i64* %8, align 8
  br label %45

29:                                               ; preds = %2
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %37, i64* %8, align 8
  br label %44

38:                                               ; preds = %29
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i64 (%struct.TYPE_21__*)*, i64 (%struct.TYPE_21__*)** %40, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %43 = call i64 %41(%struct.TYPE_21__* %42)
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %38, %36
  br label %45

45:                                               ; preds = %44, %27
  br label %46

46:                                               ; preds = %135, %45
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @NGX_AGAIN, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %148

50:                                               ; preds = %46
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  %54 = icmp eq %struct.TYPE_20__* %53, null
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_20__* @ngx_create_temp_buf(i32 %58, i32 %61)
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 2
  store %struct.TYPE_20__* %62, %struct.TYPE_20__** %64, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = icmp eq %struct.TYPE_20__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* @NGX_ERROR, align 8
  store i64 %70, i64* %8, align 8
  br label %148

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %50
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub i64 %77, %82
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load i32, i32* @NGX_LOG_ERR, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = call i32 @ngx_log_error(i32 %87, %struct.TYPE_18__* %90, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i64, i64* @NGX_STREAM_BAD_REQUEST, align 8
  store i64 %92, i64* %8, align 8
  br label %148

93:                                               ; preds = %72
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i64, i64* @NGX_STREAM_OK, align 8
  store i64 %101, i64* %8, align 8
  br label %148

102:                                              ; preds = %93
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %148

110:                                              ; preds = %102
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load i64 (%struct.TYPE_24__*, i64, i64)*, i64 (%struct.TYPE_24__*, i64, i64)** %112, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %6, align 8
  %121 = call i64 %113(%struct.TYPE_24__* %114, i64 %119, i64 %120)
  store i64 %121, i64* %7, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load i64, i64* @NGX_ERROR, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %110
  %126 = load i64, i64* %7, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125, %110
  %129 = load i64, i64* @NGX_STREAM_OK, align 8
  store i64 %129, i64* %8, align 8
  br label %148

130:                                              ; preds = %125
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* @NGX_AGAIN, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %148

135:                                              ; preds = %130
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, %136
  store i64 %142, i64* %140, align 8
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 0
  %145 = load i64 (%struct.TYPE_21__*)*, i64 (%struct.TYPE_21__*)** %144, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %147 = call i64 %145(%struct.TYPE_21__* %146)
  store i64 %147, i64* %8, align 8
  br label %46

148:                                              ; preds = %134, %128, %109, %100, %86, %69, %46
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @NGX_AGAIN, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %186

152:                                              ; preds = %148
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = call i64 @ngx_handle_read_event(%struct.TYPE_19__* %155, i32 0)
  %157 = load i64, i64* @NGX_OK, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = load i64, i64* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 8
  %162 = call i32 @ngx_stream_finalize_session(%struct.TYPE_21__* %160, i64 %161)
  %163 = load i64, i64* @NGX_OK, align 8
  store i64 %163, i64* %3, align 8
  br label %236

164:                                              ; preds = %152
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %179, label %171

171:                                              ; preds = %164
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %173, align 8
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @ngx_add_timer(%struct.TYPE_19__* %174, i32 %177)
  br label %179

179:                                              ; preds = %171, %164
  %180 = load i32, i32* @ngx_stream_session_handler, align 4
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  store i32 %180, i32* %184, align 8
  %185 = load i64, i64* @NGX_OK, align 8
  store i64 %185, i64* %3, align 8
  br label %236

186:                                              ; preds = %148
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %195, align 8
  %197 = call i32 @ngx_del_timer(%struct.TYPE_19__* %196)
  br label %198

198:                                              ; preds = %193, %186
  %199 = load i64, i64* %8, align 8
  %200 = load i64, i64* @NGX_OK, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %208, i64* %3, align 8
  br label %236

209:                                              ; preds = %198
  %210 = load i64, i64* %8, align 8
  %211 = load i64, i64* @NGX_DECLINED, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %209
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 8
  %218 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %218, i64* %3, align 8
  br label %236

219:                                              ; preds = %209
  %220 = load i64, i64* %8, align 8
  %221 = load i64, i64* @NGX_DONE, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i64, i64* @NGX_OK, align 8
  store i64 %224, i64* %3, align 8
  br label %236

225:                                              ; preds = %219
  %226 = load i64, i64* %8, align 8
  %227 = load i64, i64* @NGX_ERROR, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i64, i64* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 8
  store i64 %230, i64* %8, align 8
  br label %231

231:                                              ; preds = %229, %225
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %233 = load i64, i64* %8, align 8
  %234 = call i32 @ngx_stream_finalize_session(%struct.TYPE_21__* %232, i64 %233)
  %235 = load i64, i64* @NGX_OK, align 8
  store i64 %235, i64* %3, align 8
  br label %236

236:                                              ; preds = %231, %223, %213, %202, %179, %159
  %237 = load i64, i64* %3, align 8
  ret i64 %237
}

declare dso_local %struct.TYPE_23__* @ngx_stream_get_module_srv_conf(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_create_temp_buf(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_18__*, i32, i8*) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_stream_finalize_session(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
