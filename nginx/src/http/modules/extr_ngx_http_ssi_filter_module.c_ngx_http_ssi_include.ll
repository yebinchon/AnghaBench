; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_include.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssi_filter_module.c_ngx_http_ssi_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { %struct.TYPE_39__*, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_48__ = type { %struct.TYPE_43__*, i32, i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_46__ = type { %struct.TYPE_48__*, i32*, %struct.TYPE_39__*, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { %struct.TYPE_39__*, i32, %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i64, i32 }
%struct.TYPE_44__ = type { i32, i32 }
%struct.TYPE_45__ = type { i64, %struct.TYPE_39__, %struct.TYPE_44__ }
%struct.TYPE_49__ = type { %struct.TYPE_39__*, i32 }

@NGX_HTTP_SSI_INCLUDE_VIRTUAL = common dso_local global i64 0, align 8
@NGX_HTTP_SSI_INCLUDE_FILE = common dso_local global i64 0, align 8
@NGX_HTTP_SSI_INCLUDE_WAIT = common dso_local global i64 0, align 8
@NGX_HTTP_SSI_INCLUDE_SET = common dso_local global i64 0, align 8
@NGX_HTTP_SSI_INCLUDE_STUB = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"inclusion may be either virtual=\22%V\22 or file=\22%V\22\00", align 1
@NGX_HTTP_SSI_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"no parameter in \22include\22 SSI command\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"\22set\22 and \22stub\22 cannot be used together in \22include\22 SSI command\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"\22wait\22 cannot be used with file=\22%V\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"invalid value \22%V\22 in the \22wait\22 parameter\00", align 1
@NGX_HTTP_SSI_ADD_PREFIX = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"ssi include: \22%V\22\00", align 1
@NGX_HTTP_LOG_UNSAFE = common dso_local global i64 0, align 8
@ngx_http_ssi_filter_module = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"\22stub\22=\22%V\22 for \22include\22 not found\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_ssi_stub_output = common dso_local global i32 0, align 4
@NGX_HTTP_SUBREQUEST_WAITED = common dso_local global i64 0, align 8
@ngx_http_ssi_set_variable = common dso_local global i32 0, align 4
@ngx_http_ssi_null_string = common dso_local global %struct.TYPE_39__ zeroinitializer, align 8
@NGX_HTTP_SUBREQUEST_IN_MEMORY = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"can only wait for one subrequest at a time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_48__*, %struct.TYPE_46__*, %struct.TYPE_44__**)* @ngx_http_ssi_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_ssi_include(%struct.TYPE_48__* %0, %struct.TYPE_46__* %1, %struct.TYPE_44__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_48__*, align 8
  %6 = alloca %struct.TYPE_46__*, align 8
  %7 = alloca %struct.TYPE_44__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_44__*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca %struct.TYPE_44__*, align 8
  %12 = alloca %struct.TYPE_44__*, align 8
  %13 = alloca %struct.TYPE_44__*, align 8
  %14 = alloca %struct.TYPE_44__, align 4
  %15 = alloca %struct.TYPE_40__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_39__*, align 8
  %20 = alloca %struct.TYPE_39__*, align 8
  %21 = alloca %struct.TYPE_39__**, align 8
  %22 = alloca %struct.TYPE_39__*, align 8
  %23 = alloca %struct.TYPE_48__*, align 8
  %24 = alloca %struct.TYPE_45__*, align 8
  %25 = alloca %struct.TYPE_46__*, align 8
  %26 = alloca %struct.TYPE_47__*, align 8
  %27 = alloca %struct.TYPE_49__*, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %5, align 8
  store %struct.TYPE_46__* %1, %struct.TYPE_46__** %6, align 8
  store %struct.TYPE_44__** %2, %struct.TYPE_44__*** %7, align 8
  %28 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %7, align 8
  %29 = load i64, i64* @NGX_HTTP_SSI_INCLUDE_VIRTUAL, align 8
  %30 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %28, i64 %29
  %31 = load %struct.TYPE_44__*, %struct.TYPE_44__** %30, align 8
  store %struct.TYPE_44__* %31, %struct.TYPE_44__** %9, align 8
  %32 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %7, align 8
  %33 = load i64, i64* @NGX_HTTP_SSI_INCLUDE_FILE, align 8
  %34 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %32, i64 %33
  %35 = load %struct.TYPE_44__*, %struct.TYPE_44__** %34, align 8
  store %struct.TYPE_44__* %35, %struct.TYPE_44__** %10, align 8
  %36 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %7, align 8
  %37 = load i64, i64* @NGX_HTTP_SSI_INCLUDE_WAIT, align 8
  %38 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %36, i64 %37
  %39 = load %struct.TYPE_44__*, %struct.TYPE_44__** %38, align 8
  store %struct.TYPE_44__* %39, %struct.TYPE_44__** %11, align 8
  %40 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %7, align 8
  %41 = load i64, i64* @NGX_HTTP_SSI_INCLUDE_SET, align 8
  %42 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %40, i64 %41
  %43 = load %struct.TYPE_44__*, %struct.TYPE_44__** %42, align 8
  store %struct.TYPE_44__* %43, %struct.TYPE_44__** %12, align 8
  %44 = load %struct.TYPE_44__**, %struct.TYPE_44__*** %7, align 8
  %45 = load i64, i64* @NGX_HTTP_SSI_INCLUDE_STUB, align 8
  %46 = getelementptr inbounds %struct.TYPE_44__*, %struct.TYPE_44__** %44, i64 %45
  %47 = load %struct.TYPE_44__*, %struct.TYPE_44__** %46, align 8
  store %struct.TYPE_44__* %47, %struct.TYPE_44__** %13, align 8
  %48 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %49 = icmp ne %struct.TYPE_44__* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %3
  %51 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %52 = icmp ne %struct.TYPE_44__* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %50
  %54 = load i32, i32* @NGX_LOG_ERR, align 4
  %55 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_43__*, %struct.TYPE_43__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %61 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %62 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.TYPE_44__* %60, %struct.TYPE_44__* %61)
  %63 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %63, i64* %4, align 8
  br label %486

64:                                               ; preds = %50, %3
  %65 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %66 = icmp eq %struct.TYPE_44__* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %69 = icmp eq %struct.TYPE_44__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load i32, i32* @NGX_LOG_ERR, align 4
  %72 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_43__*, %struct.TYPE_43__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %71, i32 %76, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %78, i64* %4, align 8
  br label %486

79:                                               ; preds = %67, %64
  %80 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %81 = icmp ne %struct.TYPE_44__* %80, null
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  %83 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %84 = icmp ne %struct.TYPE_44__* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* @NGX_LOG_ERR, align 4
  %87 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_43__*, %struct.TYPE_43__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %86, i32 %91, i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %93, i64* %4, align 8
  br label %486

94:                                               ; preds = %82, %79
  %95 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %96 = icmp ne %struct.TYPE_44__* %95, null
  br i1 %96, label %97, label %145

97:                                               ; preds = %94
  %98 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %99 = icmp eq %struct.TYPE_44__* %98, null
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* @NGX_LOG_ERR, align 4
  %102 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_43__*, %struct.TYPE_43__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %108 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %101, i32 %106, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_44__* %107)
  %109 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %109, i64* %4, align 8
  br label %486

110:                                              ; preds = %97
  %111 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @ngx_strncasecmp(i32 %118, i32* bitcast ([3 x i8]* @.str.4 to i32*), i32 2)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %11, align 8
  br label %144

122:                                              ; preds = %115, %110
  %123 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 3
  br i1 %126, label %133, label %127

127:                                              ; preds = %122
  %128 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @ngx_strncasecmp(i32 %130, i32* bitcast ([4 x i8]* @.str.5 to i32*), i32 3)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %127, %122
  %134 = load i32, i32* @NGX_LOG_ERR, align 4
  %135 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_43__*, %struct.TYPE_43__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %141 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %134, i32 %139, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_44__* %140)
  %142 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %142, i64* %4, align 8
  br label %486

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %121
  br label %145

145:                                              ; preds = %144, %94
  %146 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %147 = icmp eq %struct.TYPE_44__* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  store %struct.TYPE_44__* %149, %struct.TYPE_44__** %9, align 8
  store %struct.TYPE_44__* inttoptr (i64 -1 to %struct.TYPE_44__*), %struct.TYPE_44__** %11, align 8
  br label %150

150:                                              ; preds = %148, %145
  %151 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %152 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %153 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %154 = load i32, i32* @NGX_HTTP_SSI_ADD_PREFIX, align 4
  %155 = call i64 @ngx_http_ssi_evaluate_string(%struct.TYPE_48__* %151, %struct.TYPE_46__* %152, %struct.TYPE_44__* %153, i32 %154)
  store i64 %155, i64* %8, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @NGX_OK, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %150
  %160 = load i64, i64* %8, align 8
  store i64 %160, i64* %4, align 8
  br label %486

161:                                              ; preds = %150
  %162 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %163 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_43__*, %struct.TYPE_43__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %169 = call i32 @ngx_log_debug1(i32 %162, i32 %167, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_44__* %168)
  %170 = call i32 @ngx_str_null(%struct.TYPE_44__* %14)
  %171 = load i64, i64* @NGX_HTTP_LOG_UNSAFE, align 8
  store i64 %171, i64* %16, align 8
  %172 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %173 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %174 = call i64 @ngx_http_parse_unsafe_uri(%struct.TYPE_48__* %172, %struct.TYPE_44__* %173, %struct.TYPE_44__* %14, i64* %16)
  %175 = load i64, i64* @NGX_OK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %161
  %178 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %178, i64* %4, align 8
  br label %486

179:                                              ; preds = %161
  store %struct.TYPE_49__* null, %struct.TYPE_49__** %27, align 8
  %180 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ngx_http_ssi_filter_module, align 4
  %184 = call %struct.TYPE_46__* @ngx_http_get_module_ctx(i32 %182, i32 %183)
  store %struct.TYPE_46__* %184, %struct.TYPE_46__** %25, align 8
  %185 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %186 = icmp ne %struct.TYPE_44__* %185, null
  br i1 %186, label %187, label %354

187:                                              ; preds = %179
  %188 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %189 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_41__*, %struct.TYPE_41__** %189, align 8
  %191 = icmp ne %struct.TYPE_41__* %190, null
  br i1 %191, label %192, label %240

192:                                              ; preds = %187
  %193 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %194 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_41__*, %struct.TYPE_41__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_47__*, %struct.TYPE_47__** %196, align 8
  store %struct.TYPE_47__* %197, %struct.TYPE_47__** %26, align 8
  store i64 0, i64* %17, align 8
  br label %198

198:                                              ; preds = %236, %192
  %199 = load i64, i64* %17, align 8
  %200 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %201 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_41__*, %struct.TYPE_41__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ult i64 %199, %204
  br i1 %205, label %206, label %239

206:                                              ; preds = %198
  %207 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %212 = load i64, i64* %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %210, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %206
  %219 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %223 = load i64, i64* %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = call i64 @ngx_strncmp(i32 %221, i32 %227, i64 %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %218
  br label %250

235:                                              ; preds = %218, %206
  br label %236

236:                                              ; preds = %235
  %237 = load i64, i64* %17, align 8
  %238 = add i64 %237, 1
  store i64 %238, i64* %17, align 8
  br label %198

239:                                              ; preds = %198
  br label %240

240:                                              ; preds = %239, %187
  %241 = load i32, i32* @NGX_LOG_ERR, align 4
  %242 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_43__*, %struct.TYPE_43__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_44__*, %struct.TYPE_44__** %13, align 8
  %248 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %241, i32 %246, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_44__* %247)
  %249 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %249, i64* %4, align 8
  br label %486

250:                                              ; preds = %234
  %251 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = call %struct.TYPE_49__* @ngx_palloc(i32 %253, i32 16)
  store %struct.TYPE_49__* %254, %struct.TYPE_49__** %27, align 8
  %255 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %256 = icmp eq %struct.TYPE_49__* %255, null
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i64, i64* @NGX_ERROR, align 8
  store i64 %258, i64* %4, align 8
  br label %486

259:                                              ; preds = %250
  %260 = load i32, i32* @ngx_http_ssi_stub_output, align 4
  %261 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %262 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 8
  %263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %264 = load i64, i64* %17, align 8
  %265 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %263, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 8
  %269 = icmp ne i32 %267, 0
  br i1 %269, label %270, label %345

270:                                              ; preds = %259
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %22, align 8
  store %struct.TYPE_39__** %22, %struct.TYPE_39__*** %21, align 8
  %271 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %272 = load i64, i64* %17, align 8
  %273 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_39__*, %struct.TYPE_39__** %274, align 8
  store %struct.TYPE_39__* %275, %struct.TYPE_39__** %20, align 8
  br label %276

276:                                              ; preds = %337, %270
  %277 = load %struct.TYPE_39__*, %struct.TYPE_39__** %20, align 8
  %278 = icmp ne %struct.TYPE_39__* %277, null
  br i1 %278, label %279, label %341

279:                                              ; preds = %276
  %280 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_39__*, %struct.TYPE_39__** %281, align 8
  %283 = icmp ne %struct.TYPE_39__* %282, null
  br i1 %283, label %284, label %298

284:                                              ; preds = %279
  %285 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_39__*, %struct.TYPE_39__** %286, align 8
  store %struct.TYPE_39__* %287, %struct.TYPE_39__** %19, align 8
  %288 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %288, i32 0, i32 2
  %290 = load %struct.TYPE_39__*, %struct.TYPE_39__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_39__*, %struct.TYPE_39__** %291, align 8
  %293 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %293, i32 0, i32 2
  store %struct.TYPE_39__* %292, %struct.TYPE_39__** %294, align 8
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %296 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_40__*, %struct.TYPE_40__** %296, align 8
  store %struct.TYPE_40__* %297, %struct.TYPE_40__** %15, align 8
  br label %320

298:                                              ; preds = %279
  %299 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = call %struct.TYPE_40__* @ngx_alloc_buf(i32 %301)
  store %struct.TYPE_40__* %302, %struct.TYPE_40__** %15, align 8
  %303 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %304 = icmp eq %struct.TYPE_40__* %303, null
  br i1 %304, label %305, label %307

305:                                              ; preds = %298
  %306 = load i64, i64* @NGX_ERROR, align 8
  store i64 %306, i64* %4, align 8
  br label %486

307:                                              ; preds = %298
  %308 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = call %struct.TYPE_39__* @ngx_alloc_chain_link(i32 %310)
  store %struct.TYPE_39__* %311, %struct.TYPE_39__** %19, align 8
  %312 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %313 = icmp eq %struct.TYPE_39__* %312, null
  br i1 %313, label %314, label %316

314:                                              ; preds = %307
  %315 = load i64, i64* @NGX_ERROR, align 8
  store i64 %315, i64* %4, align 8
  br label %486

316:                                              ; preds = %307
  %317 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %318 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %319 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %318, i32 0, i32 1
  store %struct.TYPE_40__* %317, %struct.TYPE_40__** %319, align 8
  br label %320

320:                                              ; preds = %316, %284
  %321 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %20, align 8
  %323 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_40__*, %struct.TYPE_40__** %323, align 8
  %325 = call i32 @ngx_memcpy(%struct.TYPE_40__* %321, %struct.TYPE_40__* %324, i32 8)
  %326 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %327 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.TYPE_40__*, %struct.TYPE_40__** %15, align 8
  %330 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 4
  %331 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %332 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %21, align 8
  store %struct.TYPE_39__* %331, %struct.TYPE_39__** %332, align 8
  %333 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %334 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %333, i32 0, i32 0
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %334, align 8
  %335 = load %struct.TYPE_39__*, %struct.TYPE_39__** %19, align 8
  %336 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %335, i32 0, i32 0
  store %struct.TYPE_39__** %336, %struct.TYPE_39__*** %21, align 8
  br label %337

337:                                              ; preds = %320
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %20, align 8
  %339 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %338, i32 0, i32 0
  %340 = load %struct.TYPE_39__*, %struct.TYPE_39__** %339, align 8
  store %struct.TYPE_39__* %340, %struct.TYPE_39__** %20, align 8
  br label %276

341:                                              ; preds = %276
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %22, align 8
  %343 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %344 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %343, i32 0, i32 0
  store %struct.TYPE_39__* %342, %struct.TYPE_39__** %344, align 8
  br label %353

345:                                              ; preds = %259
  %346 = load %struct.TYPE_47__*, %struct.TYPE_47__** %26, align 8
  %347 = load i64, i64* %17, align 8
  %348 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_39__*, %struct.TYPE_39__** %349, align 8
  %351 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %352 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %351, i32 0, i32 0
  store %struct.TYPE_39__* %350, %struct.TYPE_39__** %352, align 8
  br label %353

353:                                              ; preds = %345, %341
  br label %354

354:                                              ; preds = %353, %179
  %355 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %356 = icmp ne %struct.TYPE_44__* %355, null
  br i1 %356, label %357, label %361

357:                                              ; preds = %354
  %358 = load i64, i64* @NGX_HTTP_SUBREQUEST_WAITED, align 8
  %359 = load i64, i64* %16, align 8
  %360 = or i64 %359, %358
  store i64 %360, i64* %16, align 8
  br label %361

361:                                              ; preds = %357, %354
  %362 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %363 = icmp ne %struct.TYPE_44__* %362, null
  br i1 %363, label %364, label %448

364:                                              ; preds = %361
  %365 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %366 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = sext i32 %373 to i64
  %375 = call i64 @ngx_hash_strlow(i32 %367, i32 %370, i64 %374)
  store i64 %375, i64* %18, align 8
  %376 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = call %struct.TYPE_49__* @ngx_palloc(i32 %378, i32 16)
  store %struct.TYPE_49__* %379, %struct.TYPE_49__** %27, align 8
  %380 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %381 = icmp eq %struct.TYPE_49__* %380, null
  br i1 %381, label %382, label %384

382:                                              ; preds = %364
  %383 = load i64, i64* @NGX_ERROR, align 8
  store i64 %383, i64* %4, align 8
  br label %486

384:                                              ; preds = %364
  %385 = load i32, i32* @ngx_http_ssi_set_variable, align 4
  %386 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %387 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 8
  %388 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %389 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %390 = load i64, i64* %18, align 8
  %391 = call %struct.TYPE_39__* @ngx_http_ssi_get_variable(%struct.TYPE_48__* %388, %struct.TYPE_44__* %389, i64 %390)
  %392 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %393 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %392, i32 0, i32 0
  store %struct.TYPE_39__* %391, %struct.TYPE_39__** %393, align 8
  %394 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %395 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_39__*, %struct.TYPE_39__** %395, align 8
  %397 = icmp eq %struct.TYPE_39__* %396, null
  br i1 %397, label %398, label %442

398:                                              ; preds = %384
  %399 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %400 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = icmp eq i32* %401, null
  br i1 %402, label %403, label %417

403:                                              ; preds = %398
  %404 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 8
  %407 = call i32* @ngx_list_create(i32 %406, i32 4, i32 32)
  %408 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %409 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %408, i32 0, i32 1
  store i32* %407, i32** %409, align 8
  %410 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %411 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %410, i32 0, i32 1
  %412 = load i32*, i32** %411, align 8
  %413 = icmp eq i32* %412, null
  br i1 %413, label %414, label %416

414:                                              ; preds = %403
  %415 = load i64, i64* @NGX_ERROR, align 8
  store i64 %415, i64* %4, align 8
  br label %486

416:                                              ; preds = %403
  br label %417

417:                                              ; preds = %416, %398
  %418 = load %struct.TYPE_46__*, %struct.TYPE_46__** %25, align 8
  %419 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  %421 = call %struct.TYPE_45__* @ngx_list_push(i32* %420)
  store %struct.TYPE_45__* %421, %struct.TYPE_45__** %24, align 8
  %422 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %423 = icmp eq %struct.TYPE_45__* %422, null
  br i1 %423, label %424, label %426

424:                                              ; preds = %417
  %425 = load i64, i64* @NGX_ERROR, align 8
  store i64 %425, i64* %4, align 8
  br label %486

426:                                              ; preds = %417
  %427 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %428 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %427, i32 0, i32 2
  %429 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %430 = bitcast %struct.TYPE_44__* %428 to i8*
  %431 = bitcast %struct.TYPE_44__* %429 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %430, i8* align 4 %431, i64 8, i1 false)
  %432 = load i64, i64* %18, align 8
  %433 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %434 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %433, i32 0, i32 0
  store i64 %432, i64* %434, align 8
  %435 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %436 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %435, i32 0, i32 1
  %437 = bitcast %struct.TYPE_39__* %436 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %437, i8* align 8 bitcast (%struct.TYPE_39__* @ngx_http_ssi_null_string to i8*), i64 16, i1 false)
  %438 = load %struct.TYPE_45__*, %struct.TYPE_45__** %24, align 8
  %439 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %438, i32 0, i32 1
  %440 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %441 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %440, i32 0, i32 0
  store %struct.TYPE_39__* %439, %struct.TYPE_39__** %441, align 8
  br label %442

442:                                              ; preds = %426, %384
  %443 = load i64, i64* @NGX_HTTP_SUBREQUEST_IN_MEMORY, align 8
  %444 = load i64, i64* @NGX_HTTP_SUBREQUEST_WAITED, align 8
  %445 = or i64 %443, %444
  %446 = load i64, i64* %16, align 8
  %447 = or i64 %446, %445
  store i64 %447, i64* %16, align 8
  br label %448

448:                                              ; preds = %442, %361
  %449 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %450 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %451 = load %struct.TYPE_49__*, %struct.TYPE_49__** %27, align 8
  %452 = load i64, i64* %16, align 8
  %453 = call i64 @ngx_http_subrequest(%struct.TYPE_48__* %449, %struct.TYPE_44__* %450, %struct.TYPE_44__* %14, %struct.TYPE_48__** %23, %struct.TYPE_49__* %451, i64 %452)
  %454 = load i64, i64* @NGX_OK, align 8
  %455 = icmp ne i64 %453, %454
  br i1 %455, label %456, label %458

456:                                              ; preds = %448
  %457 = load i64, i64* @NGX_HTTP_SSI_ERROR, align 8
  store i64 %457, i64* %4, align 8
  br label %486

458:                                              ; preds = %448
  %459 = load %struct.TYPE_44__*, %struct.TYPE_44__** %11, align 8
  %460 = icmp eq %struct.TYPE_44__* %459, null
  br i1 %460, label %461, label %466

461:                                              ; preds = %458
  %462 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %463 = icmp eq %struct.TYPE_44__* %462, null
  br i1 %463, label %464, label %466

464:                                              ; preds = %461
  %465 = load i64, i64* @NGX_OK, align 8
  store i64 %465, i64* %4, align 8
  br label %486

466:                                              ; preds = %461, %458
  %467 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %467, i32 0, i32 0
  %469 = load %struct.TYPE_48__*, %struct.TYPE_48__** %468, align 8
  %470 = icmp eq %struct.TYPE_48__* %469, null
  br i1 %470, label %471, label %476

471:                                              ; preds = %466
  %472 = load %struct.TYPE_48__*, %struct.TYPE_48__** %23, align 8
  %473 = load %struct.TYPE_46__*, %struct.TYPE_46__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %473, i32 0, i32 0
  store %struct.TYPE_48__* %472, %struct.TYPE_48__** %474, align 8
  %475 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %475, i64* %4, align 8
  br label %486

476:                                              ; preds = %466
  %477 = load i32, i32* @NGX_LOG_ERR, align 4
  %478 = load %struct.TYPE_48__*, %struct.TYPE_48__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_43__*, %struct.TYPE_43__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %477, i32 %482, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %484

484:                                              ; preds = %476
  %485 = load i64, i64* @NGX_OK, align 8
  store i64 %485, i64* %4, align 8
  br label %486

486:                                              ; preds = %484, %471, %464, %456, %424, %414, %382, %314, %305, %257, %240, %177, %159, %133, %100, %85, %70, %53
  %487 = load i64, i64* %4, align 8
  ret i64 %487
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i64 @ngx_http_ssi_evaluate_string(%struct.TYPE_48__*, %struct.TYPE_46__*, %struct.TYPE_44__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_44__*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_44__*) #1

declare dso_local i64 @ngx_http_parse_unsafe_uri(%struct.TYPE_48__*, %struct.TYPE_44__*, %struct.TYPE_44__*, i64*) #1

declare dso_local %struct.TYPE_46__* @ngx_http_get_module_ctx(i32, i32) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

declare dso_local %struct.TYPE_49__* @ngx_palloc(i32, i32) #1

declare dso_local %struct.TYPE_40__* @ngx_alloc_buf(i32) #1

declare dso_local %struct.TYPE_39__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_40__*, %struct.TYPE_40__*, i32) #1

declare dso_local i64 @ngx_hash_strlow(i32, i32, i64) #1

declare dso_local %struct.TYPE_39__* @ngx_http_ssi_get_variable(%struct.TYPE_48__*, %struct.TYPE_44__*, i64) #1

declare dso_local i32* @ngx_list_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_45__* @ngx_list_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_subrequest(%struct.TYPE_48__*, %struct.TYPE_44__*, %struct.TYPE_44__*, %struct.TYPE_48__**, %struct.TYPE_49__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
