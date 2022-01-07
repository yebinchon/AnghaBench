; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_static_module.c_ngx_http_gzip_static_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_static_module.c_ngx_http_gzip_static_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { i32, i32, i32, %struct.TYPE_48__*, i64, i32, %struct.TYPE_43__, i32, %struct.TYPE_42__*, %struct.TYPE_41__ }
%struct.TYPE_43__ = type { %struct.TYPE_44__*, i32, i32, i64, i32 }
%struct.TYPE_44__ = type { i32, i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i8* }
%struct.TYPE_41__ = type { i8*, i32 }
%struct.TYPE_45__ = type { i8*, i32 }
%struct.TYPE_39__ = type { i32, i32, i32, %struct.TYPE_40__*, i64, i64 }
%struct.TYPE_40__ = type { i32, i32, %struct.TYPE_47__*, %struct.TYPE_45__ }
%struct.TYPE_38__ = type { i32*, %struct.TYPE_39__* }
%struct.TYPE_46__ = type { i32, i32, i32, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_49__ = type { i64 }

@NGX_HTTP_GET = common dso_local global i32 0, align 4
@NGX_HTTP_HEAD = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_http_gzip_static_module = common dso_local global i32 0, align 4
@NGX_HTTP_GZIP_STATIC_OFF = common dso_local global i64 0, align 8
@NGX_HTTP_GZIP_STATIC_ON = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"http filename: \22%s\22\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"http static fd: %d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"http dir\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\22%s\22 is not a regular file\00", align 1
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [27 x i8] c"sending response to client\00", align 1
@NGX_HTTP_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_48__*)* @ngx_http_gzip_static_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_gzip_static_handler(%struct.TYPE_48__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_48__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_45__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_47__*, align 8
  %10 = alloca %struct.TYPE_39__*, align 8
  %11 = alloca %struct.TYPE_38__, align 8
  %12 = alloca %struct.TYPE_44__*, align 8
  %13 = alloca %struct.TYPE_46__, align 8
  %14 = alloca %struct.TYPE_37__*, align 8
  %15 = alloca %struct.TYPE_49__*, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %3, align 8
  %16 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NGX_HTTP_GET, align 4
  %20 = load i32, i32* @NGX_HTTP_HEAD, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %25, i64* %2, align 8
  br label %377

26:                                               ; preds = %1
  %27 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %30, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %42, i64* %2, align 8
  br label %377

43:                                               ; preds = %26
  %44 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %45 = load i32, i32* @ngx_http_gzip_static_module, align 4
  %46 = call i8* @ngx_http_get_module_loc_conf(%struct.TYPE_48__* %44, i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_49__*
  store %struct.TYPE_49__* %47, %struct.TYPE_49__** %15, align 8
  %48 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NGX_HTTP_GZIP_STATIC_OFF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %54, i64* %2, align 8
  br label %377

55:                                               ; preds = %43
  %56 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NGX_HTTP_GZIP_STATIC_ON, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %63 = call i64 @ngx_http_gzip_ok(%struct.TYPE_48__* %62)
  store i64 %63, i64* %7, align 8
  br label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @NGX_OK, align 8
  store i64 %65, i64* %7, align 8
  br label %66

66:                                               ; preds = %64, %61
  %67 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %68 = load i32, i32* @ngx_http_core_module, align 4
  %69 = call i8* @ngx_http_get_module_loc_conf(%struct.TYPE_48__* %67, i32 %68)
  %70 = bitcast i8* %69 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %70, %struct.TYPE_37__** %14, align 8
  %71 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %66
  %76 = load i64, i64* %7, align 8
  %77 = load i64, i64* @NGX_OK, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %80, i64* %2, align 8
  br label %377

81:                                               ; preds = %75, %66
  %82 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %82, i32 0, i32 8
  %84 = load %struct.TYPE_42__*, %struct.TYPE_42__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_47__*, %struct.TYPE_47__** %85, align 8
  store %struct.TYPE_47__* %86, %struct.TYPE_47__** %9, align 8
  %87 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %88 = call i8* @ngx_http_map_uri_to_path(%struct.TYPE_48__* %87, %struct.TYPE_45__* %6, i64* %5, i32 3)
  store i8* %88, i8** %4, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %92, i64* %2, align 8
  br label %377

93:                                               ; preds = %81
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %4, align 8
  store i8 46, i8* %94, align 1
  %96 = load i8*, i8** %4, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %4, align 8
  store i8 103, i8* %96, align 1
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  store i8 122, i8* %98, align 1
  %100 = load i8*, i8** %4, align 8
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %6, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %6, i32 0, i32 0
  store i8* %106, i8** %107, align 8
  %108 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %109 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %6, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @ngx_log_debug1(i32 %108, %struct.TYPE_47__* %109, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = call i32 @ngx_memzero(%struct.TYPE_46__* %13, i32 72)
  %114 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 13
  store i32 %116, i32* %117, align 8
  %118 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 12
  store i32 %120, i32* %121, align 4
  %122 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 11
  store i32 %124, i32* %125, align 8
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 10
  store i32 %128, i32* %129, align 4
  %130 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 9
  store i32 %132, i32* %133, align 8
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %139 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %140 = call i64 @ngx_http_set_disable_symlinks(%struct.TYPE_48__* %138, %struct.TYPE_37__* %139, %struct.TYPE_45__* %6, %struct.TYPE_46__* %13)
  %141 = load i64, i64* @NGX_OK, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %93
  %144 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %144, i64* %2, align 8
  br label %377

145:                                              ; preds = %93
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @ngx_open_cached_file(i32 %148, %struct.TYPE_45__* %6, %struct.TYPE_46__* %13, i32 %151)
  %153 = load i64, i64* @NGX_OK, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  switch i32 %157, label %164 [
    i32 0, label %158
    i32 129, label %160
    i32 128, label %160
    i32 130, label %160
    i32 133, label %162
  ]

158:                                              ; preds = %155
  %159 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %159, i64* %2, align 8
  br label %377

160:                                              ; preds = %155, %155, %155
  %161 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %161, i64* %2, align 8
  br label %377

162:                                              ; preds = %155
  %163 = load i32, i32* @NGX_LOG_ERR, align 4
  store i32 %163, i32* %8, align 4
  br label %166

164:                                              ; preds = %155
  %165 = load i32, i32* @NGX_LOG_CRIT, align 4
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 7
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %6, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (i32, %struct.TYPE_47__*, i32, i8*, i32, ...) @ngx_log_error(i32 %167, %struct.TYPE_47__* %168, i32 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %174)
  %176 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %176, i64* %2, align 8
  br label %377

177:                                              ; preds = %145
  %178 = load %struct.TYPE_49__*, %struct.TYPE_49__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NGX_HTTP_GZIP_STATIC_ON, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* @NGX_OK, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %190, i64* %2, align 8
  br label %377

191:                                              ; preds = %183
  br label %192

192:                                              ; preds = %191, %177
  %193 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %194 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ngx_log_debug1(i32 %193, %struct.TYPE_47__* %194, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %192
  %202 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %203 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %204 = call i32 @ngx_log_debug0(i32 %202, %struct.TYPE_47__* %203, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %205 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %205, i64* %2, align 8
  br label %377

206:                                              ; preds = %192
  %207 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %206
  %211 = load i32, i32* @NGX_LOG_CRIT, align 4
  %212 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %6, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i32, %struct.TYPE_47__*, i32, i8*, i32, ...) @ngx_log_error(i32 %211, %struct.TYPE_47__* %212, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %214)
  %216 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  store i64 %216, i64* %2, align 8
  br label %377

217:                                              ; preds = %206
  %218 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %218, i32 0, i32 7
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  %226 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %227 = call i64 @ngx_http_discard_request_body(%struct.TYPE_48__* %226)
  store i64 %227, i64* %7, align 8
  %228 = load i64, i64* %7, align 8
  %229 = load i64, i64* @NGX_OK, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %217
  %232 = load i64, i64* %7, align 8
  store i64 %232, i64* %2, align 8
  br label %377

233:                                              ; preds = %217
  %234 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %234, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %235, align 8
  %236 = load i32, i32* @NGX_HTTP_OK, align 4
  %237 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %238, i32 0, i32 4
  store i32 %236, i32* %239, align 8
  %240 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %242, i32 0, i32 6
  %244 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %243, i32 0, i32 3
  store i64 %241, i64* %244, align 8
  %245 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 4
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 2
  store i32 %246, i32* %249, align 4
  %250 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %251 = call i64 @ngx_http_set_etag(%struct.TYPE_48__* %250)
  %252 = load i64, i64* @NGX_OK, align 8
  %253 = icmp ne i64 %251, %252
  br i1 %253, label %254, label %256

254:                                              ; preds = %233
  %255 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %255, i64* %2, align 8
  br label %377

256:                                              ; preds = %233
  %257 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %258 = call i64 @ngx_http_set_content_type(%struct.TYPE_48__* %257)
  %259 = load i64, i64* @NGX_OK, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %262, i64* %2, align 8
  br label %377

263:                                              ; preds = %256
  %264 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %264, i32 0, i32 6
  %266 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %265, i32 0, i32 1
  %267 = call %struct.TYPE_44__* @ngx_list_push(i32* %266)
  store %struct.TYPE_44__* %267, %struct.TYPE_44__** %12, align 8
  %268 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %269 = icmp eq %struct.TYPE_44__* %268, null
  br i1 %269, label %270, label %272

270:                                              ; preds = %263
  %271 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %271, i64* %2, align 8
  br label %377

272:                                              ; preds = %263
  %273 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %273, i32 0, i32 0
  store i32 1, i32* %274, align 4
  %275 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %275, i32 0, i32 2
  %277 = call i32 @ngx_str_set(i32* %276, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %278 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %278, i32 0, i32 1
  %280 = call i32 @ngx_str_set(i32* %279, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %281 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %282 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %282, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %283, i32 0, i32 0
  store %struct.TYPE_44__* %281, %struct.TYPE_44__** %284, align 8
  %285 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = call %struct.TYPE_39__* @ngx_calloc_buf(i32 %287)
  store %struct.TYPE_39__* %288, %struct.TYPE_39__** %10, align 8
  %289 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %290 = icmp eq %struct.TYPE_39__* %289, null
  br i1 %290, label %291, label %293

291:                                              ; preds = %272
  %292 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %292, i64* %2, align 8
  br label %377

293:                                              ; preds = %272
  %294 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = call %struct.TYPE_40__* @ngx_pcalloc(i32 %296, i32 4)
  %298 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %298, i32 0, i32 3
  store %struct.TYPE_40__* %297, %struct.TYPE_40__** %299, align 8
  %300 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %300, i32 0, i32 3
  %302 = load %struct.TYPE_40__*, %struct.TYPE_40__** %301, align 8
  %303 = icmp eq %struct.TYPE_40__* %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %293
  %305 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %305, i64* %2, align 8
  br label %377

306:                                              ; preds = %293
  %307 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %308 = call i64 @ngx_http_send_header(%struct.TYPE_48__* %307)
  store i64 %308, i64* %7, align 8
  %309 = load i64, i64* %7, align 8
  %310 = load i64, i64* @NGX_ERROR, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %321, label %312

312:                                              ; preds = %306
  %313 = load i64, i64* %7, align 8
  %314 = load i64, i64* @NGX_OK, align 8
  %315 = icmp sgt i64 %313, %314
  br i1 %315, label %321, label %316

316:                                              ; preds = %312
  %317 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %317, i32 0, i32 4
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %316, %312, %306
  %322 = load i64, i64* %7, align 8
  store i64 %322, i64* %2, align 8
  br label %377

323:                                              ; preds = %316
  %324 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %324, i32 0, i32 5
  store i64 0, i64* %325, align 8
  %326 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %329 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %328, i32 0, i32 4
  store i64 %327, i64* %329, align 8
  %330 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %331 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %330, i32 0, i32 4
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 1, i32 0
  %336 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %337 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %336, i32 0, i32 0
  store i32 %335, i32* %337, align 8
  %338 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %339 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %339, i32 0, i32 3
  %341 = load %struct.TYPE_48__*, %struct.TYPE_48__** %340, align 8
  %342 = icmp eq %struct.TYPE_48__* %338, %341
  %343 = zext i1 %342 to i64
  %344 = select i1 %342, i32 1, i32 0
  %345 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %345, i32 0, i32 1
  store i32 %344, i32* %346, align 4
  %347 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %348 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %347, i32 0, i32 2
  store i32 1, i32* %348, align 8
  %349 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %352 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %351, i32 0, i32 3
  %353 = load %struct.TYPE_40__*, %struct.TYPE_40__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %353, i32 0, i32 0
  store i32 %350, i32* %354, align 8
  %355 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %356 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %355, i32 0, i32 3
  %357 = load %struct.TYPE_40__*, %struct.TYPE_40__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %357, i32 0, i32 3
  %359 = bitcast %struct.TYPE_45__* %358 to i8*
  %360 = bitcast %struct.TYPE_45__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %359, i8* align 8 %360, i64 16, i1 false)
  %361 = load %struct.TYPE_47__*, %struct.TYPE_47__** %9, align 8
  %362 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %362, i32 0, i32 3
  %364 = load %struct.TYPE_40__*, %struct.TYPE_40__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %364, i32 0, i32 2
  store %struct.TYPE_47__* %361, %struct.TYPE_47__** %365, align 8
  %366 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %13, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %369 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %368, i32 0, i32 3
  %370 = load %struct.TYPE_40__*, %struct.TYPE_40__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %370, i32 0, i32 1
  store i32 %367, i32* %371, align 4
  %372 = load %struct.TYPE_39__*, %struct.TYPE_39__** %10, align 8
  %373 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 1
  store %struct.TYPE_39__* %372, %struct.TYPE_39__** %373, align 8
  %374 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %11, i32 0, i32 0
  store i32* null, i32** %374, align 8
  %375 = load %struct.TYPE_48__*, %struct.TYPE_48__** %3, align 8
  %376 = call i64 @ngx_http_output_filter(%struct.TYPE_48__* %375, %struct.TYPE_38__* %11)
  store i64 %376, i64* %2, align 8
  br label %377

377:                                              ; preds = %323, %321, %304, %291, %270, %261, %254, %231, %210, %201, %189, %166, %160, %158, %143, %91, %79, %53, %41, %24
  %378 = load i64, i64* %2, align 8
  ret i64 %378
}

declare dso_local i8* @ngx_http_get_module_loc_conf(%struct.TYPE_48__*, i32) #1

declare dso_local i64 @ngx_http_gzip_ok(%struct.TYPE_48__*) #1

declare dso_local i8* @ngx_http_map_uri_to_path(%struct.TYPE_48__*, %struct.TYPE_45__*, i64*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_47__*, i32, i8*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_46__*, i32) #1

declare dso_local i64 @ngx_http_set_disable_symlinks(%struct.TYPE_48__*, %struct.TYPE_37__*, %struct.TYPE_45__*, %struct.TYPE_46__*) #1

declare dso_local i64 @ngx_open_cached_file(i32, %struct.TYPE_45__*, %struct.TYPE_46__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_47__*, i32, i8*, i32, ...) #1

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_47__*, i32, i8*) #1

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_set_etag(%struct.TYPE_48__*) #1

declare dso_local i64 @ngx_http_set_content_type(%struct.TYPE_48__*) #1

declare dso_local %struct.TYPE_44__* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local %struct.TYPE_39__* @ngx_calloc_buf(i32) #1

declare dso_local %struct.TYPE_40__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_48__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_48__*, %struct.TYPE_38__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
