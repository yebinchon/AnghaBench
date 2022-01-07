; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_subrequest.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_subrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__*, i32, i32, i64, i32, i32, %struct.TYPE_26__*, i32, i32, i32, i32, i32*, %struct.TYPE_25__*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_22__, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_26__*, i32*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_25__*, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"subrequests cycle while processing \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"request reference counter overflow while processing \22%V\22\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"nested in-memory subrequest \22%V\22\00", align 1
@NGX_HTTP_MODULE = common dso_local global i32 0, align 4
@ngx_http_max_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_GET = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"http subrequest \22%V?%V\22\00", align 1
@NGX_HTTP_SUBREQUEST_IN_MEMORY = common dso_local global i32 0, align 4
@NGX_HTTP_SUBREQUEST_WAITED = common dso_local global i32 0, align 4
@NGX_HTTP_SUBREQUEST_BACKGROUND = common dso_local global i32 0, align 4
@ngx_http_core_get_method = common dso_local global i32 0, align 4
@ngx_http_request_empty_handler = common dso_local global i32 0, align 4
@ngx_http_handler = common dso_local global i32 0, align 4
@NGX_HTTP_MAX_URI_CHANGES = common dso_local global i64 0, align 8
@NGX_HTTP_SUBREQUEST_CLONE = common dso_local global i32 0, align 4
@ngx_http_core_run_phases = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_subrequest(%struct.TYPE_25__* %0, i8** %1, i8** %2, %struct.TYPE_25__** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_25__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_27__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store %struct.TYPE_25__** %3, %struct.TYPE_25__*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %6
  %25 = load i32, i32* @NGX_LOG_ERR, align 4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 46
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8**, i8*** %9, align 8
  %32 = call i32 @ngx_log_error(i32 %25, i32 %30, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8** %31)
  %33 = load i32, i32* @NGX_ERROR, align 4
  store i32 %33, i32* %7, align 4
  br label %437

34:                                               ; preds = %6
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 19
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 64535
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load i32, i32* @NGX_LOG_CRIT, align 4
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 46
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i8**, i8*** %9, align 8
  %49 = call i32 @ngx_log_error(i32 %42, i32 %47, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8** %48)
  %50 = load i32, i32* @NGX_ERROR, align 4
  store i32 %50, i32* %7, align 4
  br label %437

51:                                               ; preds = %34
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i32, i32* @NGX_LOG_ERR, align 4
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 46
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = call i32 @ngx_log_error(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8** %63)
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %7, align 4
  br label %437

66:                                               ; preds = %51
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 26
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @ngx_pcalloc(i32 %69, i32 248)
  %71 = bitcast i8* %70 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %71, %struct.TYPE_25__** %16, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %73 = icmp eq %struct.TYPE_25__* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @NGX_ERROR, align 4
  store i32 %75, i32* %7, align 4
  br label %437

76:                                               ; preds = %66
  %77 = load i32, i32* @NGX_HTTP_MODULE, align 4
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 47
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 46
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %81, align 8
  store %struct.TYPE_28__* %82, %struct.TYPE_28__** %15, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 46
  store %struct.TYPE_28__* %83, %struct.TYPE_28__** %85, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 26
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ngx_http_max_module, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 8, %90
  %92 = trunc i64 %91 to i32
  %93 = call i8* @ngx_pcalloc(i32 %88, i32 %92)
  %94 = bitcast i8* %93 to i32*
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 45
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 45
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %76
  %102 = load i32, i32* @NGX_ERROR, align 4
  store i32 %102, i32* %7, align 4
  br label %437

103:                                              ; preds = %76
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 44
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 26
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @ngx_list_init(i32* %106, i32 %109, i32 20, i32 4)
  %111 = load i64, i64* @NGX_OK, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = load i32, i32* @NGX_ERROR, align 4
  store i32 %114, i32* %7, align 4
  br label %437

115:                                              ; preds = %103
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 44
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 26
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @ngx_list_init(i32* %118, i32 %121, i32 4, i32 4)
  %123 = load i64, i64* @NGX_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* @NGX_ERROR, align 4
  store i32 %126, i32* %7, align 4
  br label %437

127:                                              ; preds = %115
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %129 = load i32, i32* @ngx_http_core_module, align 4
  %130 = call %struct.TYPE_27__* @ngx_http_get_module_srv_conf(%struct.TYPE_25__* %128, i32 %129)
  store %struct.TYPE_27__* %130, %struct.TYPE_27__** %17, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 43
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 42
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 16
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 26
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 26
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 41
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 41
  store i32 %159, i32* %161, align 8
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %163 = call i32 @ngx_http_clear_content_length(%struct.TYPE_25__* %162)
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %165 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_25__* %164)
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %167 = call i32 @ngx_http_clear_last_modified(%struct.TYPE_25__* %166)
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 40
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 40
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @NGX_HTTP_GET, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 18
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 38
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 38
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 37
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 37
  store i32 %183, i32* %185, align 8
  %186 = load i8**, i8*** %9, align 8
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 36
  store i8* %187, i8** %189, align 8
  %190 = load i8**, i8*** %10, align 8
  %191 = icmp ne i8** %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %127
  %193 = load i8**, i8*** %10, align 8
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 35
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %192, %127
  %198 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i8**, i8*** %9, align 8
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 35
  %205 = call i32 @ngx_log_debug2(i32 %198, i32 %201, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %202, i8** %204)
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @NGX_HTTP_SUBREQUEST_IN_MEMORY, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @NGX_HTTP_SUBREQUEST_WAITED, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %13, align 4
  %221 = load i32, i32* @NGX_HTTP_SUBREQUEST_BACKGROUND, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i32
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 3
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 34
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 34
  store i32 %229, i32* %231, align 8
  %232 = load i32, i32* @ngx_http_core_get_method, align 4
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 17
  store i32 %232, i32* %234, align 8
  %235 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %235, i32 0, i32 33
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 33
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 32
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 32
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %246 = call i32 @ngx_http_set_exten(%struct.TYPE_25__* %245)
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 19
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 19
  store %struct.TYPE_21__* %249, %struct.TYPE_21__** %251, align 8
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 31
  store %struct.TYPE_25__* %252, %struct.TYPE_25__** %254, align 8
  %255 = load i32*, i32** %12, align 8
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 30
  store i32* %255, i32** %257, align 8
  %258 = load i32, i32* @ngx_http_request_empty_handler, align 4
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %259, i32 0, i32 29
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* @ngx_http_handler, align 4
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 11
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 28
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 28
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 27
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %272, i32 0, i32 27
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %197
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %279, i32 0, i32 4
  store i32 1, i32* %280, align 4
  br label %281

281:                                              ; preds = %278, %197
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %345, label %286

286:                                              ; preds = %281
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %288, align 8
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %291 = icmp eq %struct.TYPE_25__* %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %286
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 25
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %294, align 8
  %296 = icmp eq %struct.TYPE_26__* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %292
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i32 0, i32 0
  store %struct.TYPE_25__* %298, %struct.TYPE_25__** %300, align 8
  br label %301

301:                                              ; preds = %297, %292, %286
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 26
  %304 = load i32, i32* %303, align 8
  %305 = call %struct.TYPE_26__* @ngx_palloc(i32 %304, i32 24)
  store %struct.TYPE_26__* %305, %struct.TYPE_26__** %18, align 8
  %306 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %307 = icmp eq %struct.TYPE_26__* %306, null
  br i1 %307, label %308, label %310

308:                                              ; preds = %301
  %309 = load i32, i32* @NGX_ERROR, align 4
  store i32 %309, i32* %7, align 4
  br label %437

310:                                              ; preds = %301
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %312 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 2
  store %struct.TYPE_25__* %311, %struct.TYPE_25__** %313, align 8
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %315 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %314, i32 0, i32 1
  store i32* null, i32** %315, align 8
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 0
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %317, align 8
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 25
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %319, align 8
  %321 = icmp ne %struct.TYPE_26__* %320, null
  br i1 %321, label %322, label %340

322:                                              ; preds = %310
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 25
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %324, align 8
  store %struct.TYPE_26__* %325, %struct.TYPE_26__** %19, align 8
  br label %326

326:                                              ; preds = %332, %322
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_26__*, %struct.TYPE_26__** %328, align 8
  %330 = icmp ne %struct.TYPE_26__* %329, null
  br i1 %330, label %331, label %336

331:                                              ; preds = %326
  br label %332

332:                                              ; preds = %331
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %334, align 8
  store %struct.TYPE_26__* %335, %struct.TYPE_26__** %19, align 8
  br label %326

336:                                              ; preds = %326
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %338 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %339 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %338, i32 0, i32 0
  store %struct.TYPE_26__* %337, %struct.TYPE_26__** %339, align 8
  br label %344

340:                                              ; preds = %310
  %341 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 25
  store %struct.TYPE_26__* %341, %struct.TYPE_26__** %343, align 8
  br label %344

344:                                              ; preds = %340, %336
  br label %345

345:                                              ; preds = %344, %281
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %347 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %346, i32 0, i32 5
  store i32 1, i32* %347, align 8
  %348 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %348, i32 0, i32 24
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 24
  store i32 %350, i32* %352, align 4
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 6
  store i32 1, i32* %354, align 4
  %355 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %355, i32 0, i32 23
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 23
  store i32 %357, i32* %359, align 8
  %360 = load i64, i64* @NGX_HTTP_MAX_URI_CHANGES, align 8
  %361 = add nsw i64 %360, 1
  %362 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %363 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %362, i32 0, i32 22
  store i64 %361, i64* %363, align 8
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %365 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = sub nsw i64 %366, 1
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 0
  store i64 %367, i64* %369, align 8
  %370 = call %struct.TYPE_24__* (...) @ngx_timeofday()
  store %struct.TYPE_24__* %370, %struct.TYPE_24__** %14, align 8
  %371 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %372 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i32 0, i32 21
  store i32 %373, i32* %375, align 4
  %376 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %380 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %379, i32 0, i32 20
  store i32 %378, i32* %380, align 8
  %381 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 19
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %384, align 4
  %387 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %388 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %11, align 8
  store %struct.TYPE_25__* %387, %struct.TYPE_25__** %388, align 8
  %389 = load i32, i32* %13, align 4
  %390 = load i32, i32* @NGX_HTTP_SUBREQUEST_CLONE, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %434

393:                                              ; preds = %345
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 18
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %398 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %397, i32 0, i32 18
  store i32 %396, i32* %398, align 4
  %399 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %400 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %399, i32 0, i32 17
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %403 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %402, i32 0, i32 17
  store i32 %401, i32* %403, align 8
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 16
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %408 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %407, i32 0, i32 16
  store i32 %406, i32* %408, align 4
  %409 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %409, i32 0, i32 15
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %413 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %412, i32 0, i32 15
  store i32 %411, i32* %413, align 8
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %414, i32 0, i32 14
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %418 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %417, i32 0, i32 14
  store i32 %416, i32* %418, align 4
  %419 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %420 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %419, i32 0, i32 13
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %423 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %422, i32 0, i32 13
  store i32 %421, i32* %423, align 8
  %424 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %424, i32 0, i32 12
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %428 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %427, i32 0, i32 12
  store i32 %426, i32* %428, align 4
  %429 = load i32, i32* @ngx_http_core_run_phases, align 4
  %430 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %431 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %430, i32 0, i32 11
  store i32 %429, i32* %431, align 8
  %432 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %433 = call i32 @ngx_http_update_location_config(%struct.TYPE_25__* %432)
  br label %434

434:                                              ; preds = %393, %345
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %436 = call i32 @ngx_http_post_request(%struct.TYPE_25__* %435, i32* null)
  store i32 %436, i32* %7, align 4
  br label %437

437:                                              ; preds = %434, %308, %125, %113, %101, %74, %56, %41, %24
  %438 = load i32, i32* %7, align 4
  ret i32 %438
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8**) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_list_init(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_http_get_module_srv_conf(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_clear_last_modified(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8**, i8**) #1

declare dso_local i32 @ngx_http_set_exten(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @ngx_palloc(i32, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_timeofday(...) #1

declare dso_local i32 @ngx_http_update_location_config(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_post_request(%struct.TYPE_25__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
