; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_push_resource.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_push_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_26__, %struct.TYPE_28__, i32, %struct.TYPE_29__*, %struct.TYPE_23__* }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32* }
%struct.TYPE_29__ = type { %struct.TYPE_24__*, i32, %struct.TYPE_31__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_31__ = type { i64, i64, i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_28__ }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"http2 push resource\00", align 1
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"non-absolute path \22%V\22 not pushed\00", align 1
@NGX_DECLINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"http2 pushing:%ui limit:%ui\00", align 1
@NGX_ABORT = common dso_local global i32 0, align 4
@NGX_HTTP_V2_MAX_FIELD = common dso_local global i32 0, align 4
@ngx_http_v2_push_headers = common dso_local global %struct.TYPE_30__* null, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PUSH_HEADERS = common dso_local global i64 0, align 8
@NGX_HTTP_V2_INT_OCTETS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"http2 table size update: 0\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"http2 push header: \22:method: GET\22\00", align 1
@NGX_HTTP_V2_METHOD_GET_INDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"http2 push header: \22:path: %V\22\00", align 1
@NGX_HTTP_V2_PATH_INDEX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"http2 push header: \22:scheme: %V\22\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@NGX_HTTP_V2_SCHEME_HTTPS_INDEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@NGX_HTTP_V2_SCHEME_HTTP_INDEX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"http2 push header: \22%V: %V\22\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_32__*, %struct.TYPE_28__*, %struct.TYPE_28__*)* @ngx_http_v2_push_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_v2_push_resource(%struct.TYPE_32__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_27__**, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_31__*, align 8
  %19 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %20 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %15, align 8
  %23 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_log_debug0(i32 %23, i32 %26, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %16, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %32, align 8
  store %struct.TYPE_31__* %33, %struct.TYPE_31__** %18, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ngx_path_separator(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %3
  %42 = load i32, i32* @NGX_LOG_WARN, align 4
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %47 = call i32 @ngx_log_error(i32 %42, i32 %45, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_28__* %46)
  %48 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %48, i32* %4, align 4
  br label %495

49:                                               ; preds = %3
  %50 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.TYPE_28__*
  %64 = call i32 @ngx_log_debug2(i32 %50, i32 %55, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %59, %struct.TYPE_28__* %63)
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sge i64 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %49
  %73 = load i32, i32* @NGX_ABORT, align 4
  store i32 %73, i32* %4, align 4
  br label %495

74:                                               ; preds = %49
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 2147483646
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @NGX_ABORT, align 4
  store i32 %80, i32* %4, align 4
  br label %495

81:                                               ; preds = %74
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NGX_HTTP_V2_MAX_FIELD, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %88, i32* %4, align 4
  br label %495

89:                                               ; preds = %81
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @NGX_ABORT, align 4
  store i32 %96, i32* %4, align 4
  br label %495

97:                                               ; preds = %89
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** @ngx_http_v2_push_headers, align 8
  store %struct.TYPE_30__* %98, %struct.TYPE_30__** %19, align 8
  %99 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @ngx_max(i64 %103, i32 %106)
  store i64 %107, i64* %11, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %97
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32* @ngx_palloc(i32 %116, i64 %117)
  store i32* %118, i32** %10, align 8
  %119 = load i32*, i32** %10, align 8
  %120 = icmp eq i32* %119, null
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i32, i32* @NGX_ERROR, align 4
  store i32 %122, i32* %4, align 4
  br label %495

123:                                              ; preds = %113
  br label %250

124:                                              ; preds = %97
  store i64 0, i64* %13, align 8
  br label %125

125:                                              ; preds = %153, %124
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* @NGX_HTTP_V2_PUSH_HEADERS, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  %132 = bitcast %struct.TYPE_26__* %131 to i8*
  %133 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %132, i64 %138
  %140 = bitcast i8* %139 to %struct.TYPE_27__**
  store %struct.TYPE_27__** %140, %struct.TYPE_27__*** %14, align 8
  %141 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %141, align 8
  %143 = icmp ne %struct.TYPE_27__* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %129
  %145 = load i64, i64* %11, align 8
  %146 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i64 @ngx_max(i64 %145, i32 %150)
  store i64 %151, i64* %11, align 8
  br label %152

152:                                              ; preds = %144, %129
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %13, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %13, align 8
  br label %125

156:                                              ; preds = %125
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = call i32* @ngx_palloc(i32 %159, i64 %160)
  store i32* %161, i32** %10, align 8
  %162 = load i32*, i32** %10, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @NGX_ERROR, align 4
  store i32 %165, i32* %4, align 4
  br label %495

166:                                              ; preds = %156
  store i64 0, i64* %13, align 8
  br label %167

167:                                              ; preds = %246, %166
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* @NGX_HTTP_V2_PUSH_HEADERS, align 8
  %170 = icmp ult i64 %168, %169
  br i1 %170, label %171, label %249

171:                                              ; preds = %167
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 0
  %174 = bitcast %struct.TYPE_26__* %173 to i8*
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %175, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %174, i64 %180
  %182 = bitcast i8* %181 to %struct.TYPE_27__**
  store %struct.TYPE_27__** %182, %struct.TYPE_27__*** %14, align 8
  %183 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %183, align 8
  %185 = icmp eq %struct.TYPE_27__* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %171
  br label %246

187:                                              ; preds = %171
  %188 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %189, i32 0, i32 0
  store %struct.TYPE_28__* %190, %struct.TYPE_28__** %12, align 8
  %191 = load i32, i32* @NGX_HTTP_V2_INT_OCTETS, align 4
  %192 = add nsw i32 1, %191
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %192, %195
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %11, align 8
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %11, align 8
  %202 = call i32* @ngx_pnalloc(i32 %200, i64 %201)
  store i32* %202, i32** %9, align 8
  %203 = load i32*, i32** %9, align 8
  %204 = icmp eq i32* %203, null
  br i1 %204, label %205, label %207

205:                                              ; preds = %187
  %206 = load i32, i32* @NGX_ERROR, align 4
  store i32 %206, i32* %4, align 4
  br label %495

207:                                              ; preds = %187
  %208 = load i32*, i32** %9, align 8
  %209 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %210 = load i64, i64* %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %209, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %211, i32 0, i32 1
  store i32* %208, i32** %212, align 8
  %213 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @ngx_http_v2_inc_indexed(i32 %217)
  %219 = ptrtoint i8* %218 to i32
  %220 = load i32*, i32** %9, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %9, align 8
  store i32 %219, i32* %220, align 4
  %222 = load i32*, i32** %9, align 8
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32*, i32** %10, align 8
  %230 = call i32* @ngx_http_v2_write_value(i32* %222, i32* %225, i32 %228, i32* %229)
  store i32* %230, i32** %9, align 8
  %231 = load i32*, i32** %9, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %233 = load i64, i64* %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = ptrtoint i32* %231 to i64
  %238 = ptrtoint i32* %236 to i64
  %239 = sub i64 %237, %238
  %240 = sdiv exact i64 %239, 4
  %241 = trunc i64 %240 to i32
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %243 = load i64, i64* %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %244, i32 0, i32 0
  store i32 %241, i32* %245, align 8
  br label %246

246:                                              ; preds = %207, %186
  %247 = load i64, i64* %13, align 8
  %248 = add i64 %247, 1
  store i64 %248, i64* %13, align 8
  br label %167

249:                                              ; preds = %167
  br label %250

250:                                              ; preds = %249, %123
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i32 1, i32 0
  %257 = add nsw i32 %256, 1
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* @NGX_HTTP_V2_INT_OCTETS, align 4
  %260 = add nsw i32 %258, %259
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %260, %263
  %265 = add nsw i32 %264, 1
  %266 = load i32, i32* @NGX_HTTP_V2_INT_OCTETS, align 4
  %267 = add nsw i32 %265, %266
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %267, %271
  %273 = sext i32 %272 to i64
  store i64 %273, i64* %11, align 8
  store i64 0, i64* %13, align 8
  br label %274

274:                                              ; preds = %287, %250
  %275 = load i64, i64* %13, align 8
  %276 = load i64, i64* @NGX_HTTP_V2_PUSH_HEADERS, align 8
  %277 = icmp ult i64 %275, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %274
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %280 = load i64, i64* %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* %11, align 8
  %286 = add i64 %285, %284
  store i64 %286, i64* %11, align 8
  br label %287

287:                                              ; preds = %278
  %288 = load i64, i64* %13, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %13, align 8
  br label %274

290:                                              ; preds = %274
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load i64, i64* %11, align 8
  %295 = call i32* @ngx_pnalloc(i32 %293, i64 %294)
  store i32* %295, i32** %9, align 8
  %296 = load i32*, i32** %9, align 8
  %297 = icmp eq i32* %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %290
  %299 = load i32, i32* @NGX_ERROR, align 4
  store i32 %299, i32* %4, align 4
  br label %495

300:                                              ; preds = %290
  %301 = load i32*, i32** %9, align 8
  store i32* %301, i32** %8, align 8
  %302 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %300
  %307 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @ngx_log_debug0(i32 %307, i32 %310, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %312 = load i32*, i32** %9, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %9, align 8
  store i32 32, i32* %312, align 4
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 3
  store i64 0, i64* %315, align 8
  br label %316

316:                                              ; preds = %306, %300
  %317 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @ngx_log_debug0(i32 %317, i32 %320, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %322 = load i32, i32* @NGX_HTTP_V2_METHOD_GET_INDEX, align 4
  %323 = call i8* @ngx_http_v2_indexed(i32 %322)
  %324 = ptrtoint i8* %323 to i32
  %325 = load i32*, i32** %9, align 8
  %326 = getelementptr inbounds i32, i32* %325, i32 1
  store i32* %326, i32** %9, align 8
  store i32 %324, i32* %325, align 4
  %327 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %332 = call i32 @ngx_log_debug1(i32 %327, i32 %330, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_28__* %331)
  %333 = load i32, i32* @NGX_HTTP_V2_PATH_INDEX, align 4
  %334 = call i8* @ngx_http_v2_inc_indexed(i32 %333)
  %335 = ptrtoint i8* %334 to i32
  %336 = load i32*, i32** %9, align 8
  %337 = getelementptr inbounds i32, i32* %336, i32 1
  store i32* %337, i32** %9, align 8
  store i32 %335, i32* %336, align 4
  %338 = load i32*, i32** %9, align 8
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32*, i32** %10, align 8
  %346 = call i32* @ngx_http_v2_write_value(i32* %338, i32* %341, i32 %344, i32* %345)
  store i32* %346, i32** %9, align 8
  %347 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %351, i32 0, i32 1
  %353 = call i32 @ngx_log_debug1(i32 %347, i32 %350, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_28__* %352)
  %354 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %354, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp eq i32 %357, 5
  br i1 %358, label %359, label %372

359:                                              ; preds = %316
  %360 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = call i64 @ngx_strncmp(i32* %363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %359
  %367 = load i32, i32* @NGX_HTTP_V2_SCHEME_HTTPS_INDEX, align 4
  %368 = call i8* @ngx_http_v2_indexed(i32 %367)
  %369 = ptrtoint i8* %368 to i32
  %370 = load i32*, i32** %9, align 8
  %371 = getelementptr inbounds i32, i32* %370, i32 1
  store i32* %371, i32** %9, align 8
  store i32 %369, i32* %370, align 4
  br label %409

372:                                              ; preds = %359, %316
  %373 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = icmp eq i32 %376, 4
  br i1 %377, label %378, label %391

378:                                              ; preds = %372
  %379 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %380 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = call i64 @ngx_strncmp(i32* %382, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %391

385:                                              ; preds = %378
  %386 = load i32, i32* @NGX_HTTP_V2_SCHEME_HTTP_INDEX, align 4
  %387 = call i8* @ngx_http_v2_indexed(i32 %386)
  %388 = ptrtoint i8* %387 to i32
  %389 = load i32*, i32** %9, align 8
  %390 = getelementptr inbounds i32, i32* %389, i32 1
  store i32* %390, i32** %9, align 8
  store i32 %388, i32* %389, align 4
  br label %408

391:                                              ; preds = %378, %372
  %392 = load i32, i32* @NGX_HTTP_V2_SCHEME_HTTP_INDEX, align 4
  %393 = call i8* @ngx_http_v2_inc_indexed(i32 %392)
  %394 = ptrtoint i8* %393 to i32
  %395 = load i32*, i32** %9, align 8
  %396 = getelementptr inbounds i32, i32* %395, i32 1
  store i32* %396, i32** %9, align 8
  store i32 %394, i32* %395, align 4
  %397 = load i32*, i32** %9, align 8
  %398 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %399, i32 0, i32 1
  %401 = load i32*, i32** %400, align 8
  %402 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32*, i32** %10, align 8
  %407 = call i32* @ngx_http_v2_write_value(i32* %397, i32* %401, i32 %405, i32* %406)
  store i32* %407, i32** %9, align 8
  br label %408

408:                                              ; preds = %391, %385
  br label %409

409:                                              ; preds = %408, %366
  store i64 0, i64* %13, align 8
  br label %410

410:                                              ; preds = %455, %409
  %411 = load i64, i64* %13, align 8
  %412 = load i64, i64* @NGX_HTTP_V2_PUSH_HEADERS, align 8
  %413 = icmp ult i64 %411, %412
  br i1 %413, label %414, label %458

414:                                              ; preds = %410
  %415 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %415, i32 0, i32 0
  %417 = bitcast %struct.TYPE_26__* %416 to i8*
  %418 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %419 = load i64, i64* %13, align 8
  %420 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %418, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, i8* %417, i64 %423
  %425 = bitcast i8* %424 to %struct.TYPE_27__**
  store %struct.TYPE_27__** %425, %struct.TYPE_27__*** %14, align 8
  %426 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %427 = load %struct.TYPE_27__*, %struct.TYPE_27__** %426, align 8
  %428 = icmp eq %struct.TYPE_27__* %427, null
  br i1 %428, label %429, label %430

429:                                              ; preds = %414
  br label %455

430:                                              ; preds = %414
  %431 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %432 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %433 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %436 = load i64, i64* %13, align 8
  %437 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %435, i64 %436
  %438 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %437, i32 0, i32 1
  %439 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %440 = load %struct.TYPE_27__*, %struct.TYPE_27__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %440, i32 0, i32 0
  %442 = call i32 @ngx_log_debug2(i32 %431, i32 %434, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32* %438, %struct.TYPE_28__* %441)
  %443 = load i32*, i32** %9, align 8
  %444 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %445 = load i64, i64* %13, align 8
  %446 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %444, i64 %445
  %447 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %446, i32 0, i32 1
  %448 = load i32*, i32** %447, align 8
  %449 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %450 = load i64, i64* %13, align 8
  %451 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %449, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = call i32* @ngx_cpymem(i32* %443, i32* %448, i32 %453)
  store i32* %454, i32** %9, align 8
  br label %455

455:                                              ; preds = %430, %429
  %456 = load i64, i64* %13, align 8
  %457 = add i64 %456, 1
  store i64 %457, i64* %13, align 8
  br label %410

458:                                              ; preds = %410
  %459 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %460 = load i32*, i32** %8, align 8
  %461 = load i32*, i32** %9, align 8
  %462 = call i32* @ngx_http_v2_create_push_frame(%struct.TYPE_32__* %459, i32* %460, i32* %461)
  store i32* %462, i32** %17, align 8
  %463 = load i32*, i32** %17, align 8
  %464 = icmp eq i32* %463, null
  br i1 %464, label %465, label %467

465:                                              ; preds = %458
  %466 = load i32, i32* @NGX_ERROR, align 4
  store i32 %466, i32* %4, align 4
  br label %495

467:                                              ; preds = %458
  %468 = load %struct.TYPE_31__*, %struct.TYPE_31__** %18, align 8
  %469 = load i32*, i32** %17, align 8
  %470 = call i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_31__* %468, i32* %469)
  %471 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %472 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 8
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %472, align 8
  %475 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %476 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %477 = call %struct.TYPE_29__* @ngx_http_v2_push_stream(%struct.TYPE_29__* %475, %struct.TYPE_28__* %476)
  store %struct.TYPE_29__* %477, %struct.TYPE_29__** %16, align 8
  %478 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %479 = icmp ne %struct.TYPE_29__* %478, null
  br i1 %479, label %480, label %493

480:                                              ; preds = %467
  %481 = load i32*, i32** %9, align 8
  %482 = load i32*, i32** %8, align 8
  %483 = ptrtoint i32* %481 to i64
  %484 = ptrtoint i32* %482 to i64
  %485 = sub i64 %483, %484
  %486 = sdiv exact i64 %485, 4
  %487 = trunc i64 %486 to i32
  %488 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %489 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %488, i32 0, i32 0
  %490 = load %struct.TYPE_24__*, %struct.TYPE_24__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %490, i32 0, i32 0
  store i32 %487, i32* %491, align 4
  %492 = load i32, i32* @NGX_OK, align 4
  store i32 %492, i32* %4, align 4
  br label %495

493:                                              ; preds = %467
  %494 = load i32, i32* @NGX_ERROR, align 4
  store i32 %494, i32* %4, align 4
  br label %495

495:                                              ; preds = %493, %480, %465, %298, %205, %164, %121, %95, %87, %79, %72, %41
  %496 = load i32, i32* %4, align 4
  ret i32 %496
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_path_separator(i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_28__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, %struct.TYPE_28__*) #1

declare dso_local i64 @ngx_max(i64, i32) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i8* @ngx_http_v2_inc_indexed(i32) #1

declare dso_local i32* @ngx_http_v2_write_value(i32*, i32*, i32, i32*) #1

declare dso_local i8* @ngx_http_v2_indexed(i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_28__*) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i32* @ngx_cpymem(i32*, i32*, i32) #1

declare dso_local i32* @ngx_http_v2_create_push_frame(%struct.TYPE_32__*, i32*, i32*) #1

declare dso_local i32 @ngx_http_v2_queue_blocked_frame(%struct.TYPE_31__*, i32*) #1

declare dso_local %struct.TYPE_29__* @ngx_http_v2_push_stream(%struct.TYPE_29__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
