; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_18__ }
%struct.TYPE_20__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"zone=\00", align 1
@ngx_http_limit_req_module = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"burst=\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid burst value \22%V\22\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"delay=\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid delay value \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nodelay\00", align 1
@NGX_MAX_INT_T_VALUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\22%V\22 must have \22zone\22 parameter\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_21__*, %struct.TYPE_22__*, i8*)* @ngx_http_limit_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_limit_req(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %8, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %11, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 1, i64* %13, align 8
  br label %24

24:                                               ; preds = %147, %3
  %25 = load i64, i64* %13, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %32, label %150

32:                                               ; preds = %24
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @ngx_strncmp(i64 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %32
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 5
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  store i64 %46, i64* %47, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %49 = load i64, i64* %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 5
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = call i32* @ngx_shared_memory_add(%struct.TYPE_21__* %55, %struct.TYPE_18__* %12, i32 0, i32* @ngx_http_limit_req_module)
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %60, i8** %4, align 8
  br label %221

61:                                               ; preds = %40
  br label %147

62:                                               ; preds = %32
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @ngx_strncmp(i64 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %95

70:                                               ; preds = %62
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 6
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %78 = load i64, i64* %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %81, 6
  %83 = call i32 @ngx_atoi(i64 %76, i64 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %70
  %87 = load i32, i32* @NGX_LOG_EMERG, align 4
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %90 = load i64, i64* %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i64 %90
  %92 = call i32 @ngx_conf_log_error(i32 %87, %struct.TYPE_21__* %88, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %91)
  %93 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %93, i8** %4, align 8
  br label %221

94:                                               ; preds = %70
  br label %147

95:                                               ; preds = %62
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @ngx_strncmp(i64 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = load i64, i64* %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 6
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub nsw i64 %114, 6
  %116 = call i32 @ngx_atoi(i64 %109, i64 %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %103
  %120 = load i32, i32* @NGX_LOG_EMERG, align 4
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i64 %123
  %125 = call i32 @ngx_conf_log_error(i32 %120, %struct.TYPE_21__* %121, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_18__* %124)
  %126 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %126, i8** %4, align 8
  br label %221

127:                                              ; preds = %103
  br label %147

128:                                              ; preds = %95
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @ngx_strcmp(i64 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* @NGX_MAX_INT_T_VALUE, align 4
  %138 = sdiv i32 %137, 1000
  store i32 %138, i32* %10, align 4
  br label %147

139:                                              ; preds = %128
  %140 = load i32, i32* @NGX_LOG_EMERG, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %143 = load i64, i64* %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i64 %143
  %145 = call i32 @ngx_conf_log_error(i32 %140, %struct.TYPE_21__* %141, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_18__* %144)
  %146 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %146, i8** %4, align 8
  br label %221

147:                                              ; preds = %136, %127, %94, %61
  %148 = load i64, i64* %13, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %13, align 8
  br label %24

150:                                              ; preds = %24
  %151 = load i32*, i32** %14, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %150
  %154 = load i32, i32* @NGX_LOG_EMERG, align 4
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = call i32 @ngx_conf_log_error(i32 %154, %struct.TYPE_21__* %155, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_18__* %157)
  %159 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %159, i8** %4, align 8
  br label %221

160:                                              ; preds = %150
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  store %struct.TYPE_19__* %164, %struct.TYPE_19__** %16, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %166 = icmp eq %struct.TYPE_19__* %165, null
  br i1 %166, label %167, label %179

167:                                              ; preds = %160
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i64 @ngx_array_init(%struct.TYPE_16__* %169, i32 %172, i32 1, i32 16)
  %174 = load i64, i64* @NGX_OK, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %177, i8** %4, align 8
  br label %221

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %160
  store i64 0, i64* %13, align 8
  br label %180

180:                                              ; preds = %197, %179
  %181 = load i64, i64* %13, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ult i64 %181, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %180
  %188 = load i32*, i32** %14, align 8
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %190 = load i64, i64* %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = icmp eq i32* %188, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %221

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %13, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %13, align 8
  br label %180

200:                                              ; preds = %180
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = call %struct.TYPE_19__* @ngx_array_push(%struct.TYPE_16__* %202)
  store %struct.TYPE_19__* %203, %struct.TYPE_19__** %15, align 8
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %205 = icmp eq %struct.TYPE_19__* %204, null
  br i1 %205, label %206, label %208

206:                                              ; preds = %200
  %207 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %207, i8** %4, align 8
  br label %221

208:                                              ; preds = %200
  %209 = load i32*, i32** %14, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 2
  store i32* %209, i32** %211, align 8
  %212 = load i32, i32* %9, align 4
  %213 = mul nsw i32 %212, 1000
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* %10, align 4
  %217 = mul nsw i32 %216, 1000
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %220, i8** %4, align 8
  br label %221

221:                                              ; preds = %208, %206, %195, %176, %153, %139, %119, %86, %59
  %222 = load i8*, i8** %4, align 8
  ret i8* %222
}

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i32* @ngx_shared_memory_add(%struct.TYPE_21__*, %struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @ngx_atoi(i64, i64) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_21__*, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i64 @ngx_strcmp(i64, i8*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_array_push(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
