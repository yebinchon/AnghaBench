; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_process_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_process_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i8, i32, i32, i32, i32, i64, i32, %struct.TYPE_27__*, %struct.TYPE_26__, %struct.TYPE_30__*, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i32, i32, %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32, i64, i32, i64, i32, i32*, i32* }
%struct.TYPE_29__ = type { i8, i8*, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32, i8* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_32__ = type { i64 (%struct.TYPE_33__*, %struct.TYPE_29__*, i32)*, i32 }
%struct.TYPE_31__ = type { i32 }

@ngx_http_upstream_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"http proxy header: \22%V: %V\22\00", align 1
@NGX_HTTP_PARSE_HEADER_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"http proxy header done\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"date\00", align 1
@ngx_http_proxy_module = common dso_local global i32 0, align 4
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_MODIFIED = common dso_local global i64 0, align 8
@NGX_HTTP_SWITCHING_PROTOCOLS = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"upstream sent invalid header\00", align 1
@NGX_HTTP_UPSTREAM_INVALID_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_33__*)* @ngx_http_proxy_process_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_process_header(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  %10 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %11 = load i32, i32* @ngx_http_upstream_module, align 4
  %12 = call %struct.TYPE_31__* @ngx_http_get_module_main_conf(%struct.TYPE_33__* %10, i32 %11)
  store %struct.TYPE_31__* %12, %struct.TYPE_31__** %9, align 8
  br label %13

13:                                               ; preds = %235, %1
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 9
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 3
  %19 = call i64 @ngx_http_parse_header_line(%struct.TYPE_33__* %14, i32* %18, i32 1)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @NGX_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %247

23:                                               ; preds = %13
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 9
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 4
  %29 = call %struct.TYPE_29__* @ngx_list_push(i32* %28)
  store %struct.TYPE_29__* %29, %struct.TYPE_29__** %5, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %31 = icmp eq %struct.TYPE_29__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %2, align 8
  br label %419

34:                                               ; preds = %23
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 0
  store i8 %37, i8* %39, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %42, %45
  %47 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %52, %55
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %67, %71
  %73 = add nsw i32 %72, 1
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %73, %77
  %79 = call i8* @ngx_pnalloc(i32 %62, i32 %78)
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %34
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 0
  store i8 0, i8* %90, align 8
  %91 = load i64, i64* @NGX_ERROR, align 8
  store i64 %91, i64* %2, align 8
  br label %419

92:                                               ; preds = %34
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %96, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %110, i64 %115
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %117, i64 %122
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ngx_memcpy(i8* %130, i32 %133, i32 %137)
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %142, i64 %147
  store i8 0, i8* %148, align 1
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ngx_memcpy(i8* %152, i32 %155, i32 %159)
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %164, i64 %169
  store i8 0, i8* %170, align 1
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %92
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @ngx_memcpy(i8* %183, i32 %186, i32 %190)
  br label %205

192:                                              ; preds = %92
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @ngx_strlow(i8* %195, i8* %199, i32 %203)
  br label %205

205:                                              ; preds = %192, %180
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i32 0, i32 0
  %210 = load i8, i8* %209, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call %struct.TYPE_32__* @ngx_hash_find(i32* %207, i8 signext %210, i8* %213, i32 %217)
  store %struct.TYPE_32__* %218, %struct.TYPE_32__** %8, align 8
  %219 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %220 = icmp ne %struct.TYPE_32__* %219, null
  br i1 %220, label %221, label %235

221:                                              ; preds = %205
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i32 0, i32 0
  %224 = load i64 (%struct.TYPE_33__*, %struct.TYPE_29__*, i32)*, i64 (%struct.TYPE_33__*, %struct.TYPE_29__*, i32)** %223, align 8
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i64 %224(%struct.TYPE_33__* %225, %struct.TYPE_29__* %226, i32 %229)
  %231 = load i64, i64* @NGX_OK, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %221
  %234 = load i64, i64* @NGX_ERROR, align 8
  store i64 %234, i64* %2, align 8
  br label %419

235:                                              ; preds = %221, %205
  %236 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %237 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 7
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 2
  %246 = call i32 @ngx_log_debug2(i32 %236, i32 %241, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %243, %struct.TYPE_25__* %245)
  br label %13

247:                                              ; preds = %13
  %248 = load i64, i64* %4, align 8
  %249 = load i64, i64* @NGX_HTTP_PARSE_HEADER_DONE, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %404

251:                                              ; preds = %247
  %252 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 7
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @ngx_log_debug0(i32 %252, i32 %257, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 9
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 6
  %264 = load i32*, i32** %263, align 8
  %265 = icmp eq i32* %264, null
  br i1 %265, label %266, label %293

266:                                              ; preds = %251
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 9
  %269 = load %struct.TYPE_30__*, %struct.TYPE_30__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 4
  %272 = call %struct.TYPE_29__* @ngx_list_push(i32* %271)
  store %struct.TYPE_29__* %272, %struct.TYPE_29__** %5, align 8
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %274 = icmp eq %struct.TYPE_29__* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %266
  %276 = load i64, i64* @NGX_ERROR, align 8
  store i64 %276, i64* %2, align 8
  br label %419

277:                                              ; preds = %266
  %278 = call signext i8 @ngx_hash(i8 signext 115, i8 signext 101)
  %279 = call signext i8 @ngx_hash(i8 signext %278, i8 signext 114)
  %280 = call signext i8 @ngx_hash(i8 signext %279, i8 signext 118)
  %281 = call signext i8 @ngx_hash(i8 signext %280, i8 signext 101)
  %282 = call signext i8 @ngx_hash(i8 signext %281, i8 signext 114)
  %283 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %283, i32 0, i32 0
  store i8 %282, i8* %284, align 8
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 3
  %287 = call i32 @ngx_str_set(%struct.TYPE_24__* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 2
  %290 = call i32 @ngx_str_null(%struct.TYPE_25__* %289)
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %291, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %292, align 8
  br label %293

293:                                              ; preds = %277, %251
  %294 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %294, i32 0, i32 9
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 5
  %299 = load i32*, i32** %298, align 8
  %300 = icmp eq i32* %299, null
  br i1 %300, label %301, label %326

301:                                              ; preds = %293
  %302 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %302, i32 0, i32 9
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 4
  %307 = call %struct.TYPE_29__* @ngx_list_push(i32* %306)
  store %struct.TYPE_29__* %307, %struct.TYPE_29__** %5, align 8
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %309 = icmp eq %struct.TYPE_29__* %308, null
  br i1 %309, label %310, label %312

310:                                              ; preds = %301
  %311 = load i64, i64* @NGX_ERROR, align 8
  store i64 %311, i64* %2, align 8
  br label %419

312:                                              ; preds = %301
  %313 = call signext i8 @ngx_hash(i8 signext 100, i8 signext 97)
  %314 = call signext i8 @ngx_hash(i8 signext %313, i8 signext 116)
  %315 = call signext i8 @ngx_hash(i8 signext %314, i8 signext 101)
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 0
  store i8 %315, i8* %317, align 8
  %318 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %318, i32 0, i32 3
  %320 = call i32 @ngx_str_set(%struct.TYPE_24__* %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %321 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %321, i32 0, i32 2
  %323 = call i32 @ngx_str_null(%struct.TYPE_25__* %322)
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %325, align 8
  br label %326

326:                                              ; preds = %312, %293
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 9
  %329 = load %struct.TYPE_30__*, %struct.TYPE_30__** %328, align 8
  store %struct.TYPE_30__* %329, %struct.TYPE_30__** %6, align 8
  %330 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %326
  %336 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %337 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %336, i32 0, i32 2
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 0
  store i32 -1, i32* %338, align 8
  br label %339

339:                                              ; preds = %335, %326
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %341 = load i32, i32* @ngx_http_proxy_module, align 4
  %342 = call %struct.TYPE_34__* @ngx_http_get_module_ctx(%struct.TYPE_33__* %340, i32 %341)
  store %struct.TYPE_34__* %342, %struct.TYPE_34__** %7, align 8
  %343 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 1
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %373, label %349

349:                                              ; preds = %339
  %350 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 1
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @NGX_HTTP_NOT_MODIFIED, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %373, label %356

356:                                              ; preds = %349
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %373, label %361

361:                                              ; preds = %356
  %362 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 3
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %383, label %367

367:                                              ; preds = %361
  %368 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %368, i32 0, i32 2
  %370 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %367, %356, %349, %339
  %374 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = icmp ne i32 %377, 0
  %379 = xor i1 %378, true
  %380 = zext i1 %379 to i32
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %381, i32 0, i32 0
  store i32 %380, i32* %382, align 8
  br label %383

383:                                              ; preds = %373, %367, %361
  %384 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @NGX_HTTP_SWITCHING_PROTOCOLS, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %390, label %402

390:                                              ; preds = %383
  %391 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %391, i32 0, i32 0
  store i32 0, i32* %392, align 8
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %393, i32 0, i32 8
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %390
  %399 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %399, i32 0, i32 1
  store i32 1, i32* %400, align 4
  br label %401

401:                                              ; preds = %398, %390
  br label %402

402:                                              ; preds = %401, %383
  %403 = load i64, i64* @NGX_OK, align 8
  store i64 %403, i64* %2, align 8
  br label %419

404:                                              ; preds = %247
  %405 = load i64, i64* %4, align 8
  %406 = load i64, i64* @NGX_AGAIN, align 8
  %407 = icmp eq i64 %405, %406
  br i1 %407, label %408, label %410

408:                                              ; preds = %404
  %409 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %409, i64* %2, align 8
  br label %419

410:                                              ; preds = %404
  %411 = load i32, i32* @NGX_LOG_ERR, align 4
  %412 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %412, i32 0, i32 7
  %414 = load %struct.TYPE_27__*, %struct.TYPE_27__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @ngx_log_error(i32 %411, i32 %416, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %418 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %418, i64* %2, align 8
  br label %419

419:                                              ; preds = %410, %408, %402, %310, %275, %233, %88, %32
  %420 = load i64, i64* %2, align 8
  ret i64 %420
}

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_main_conf(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_http_parse_header_line(%struct.TYPE_33__*, i32*, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_list_push(i32*) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i32, i32) #1

declare dso_local i32 @ngx_strlow(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_hash_find(i32*, i8 signext, i8*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local signext i8 @ngx_hash(i8 signext, i8 signext) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @ngx_str_null(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_34__* @ngx_http_get_module_ctx(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
