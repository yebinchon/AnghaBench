; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_publish.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_48__ = type { %struct.TYPE_47__*, i64 }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_31__ = type { i8*, i32 }
%struct.TYPE_34__ = type { i32, i64, i64, %struct.TYPE_44__, i64, %struct.TYPE_36__*, %struct.TYPE_46__, i32 }
%struct.TYPE_44__ = type { i32, i8* }
%struct.TYPE_36__ = type { i64, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i64, i32 }
%struct.TYPE_46__ = type { i32, i8* }
%struct.TYPE_33__ = type { %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_37__, %struct.TYPE_45__, %struct.TYPE_43__, %struct.TYPE_42__, %struct.TYPE_32__*, i32*, %struct.TYPE_35__* }
%struct.TYPE_40__ = type { i8*, i32 }
%struct.TYPE_39__ = type { i32, i8* }
%struct.TYPE_38__ = type { i8*, i32 }
%struct.TYPE_37__ = type { i8*, i32 }
%struct.TYPE_45__ = type { i32, i8* }
%struct.TYPE_43__ = type { i32, i8* }
%struct.TYPE_42__ = type { i32, i8* }
%struct.TYPE_35__ = type { i32, i32, i32 }

@ngx_rtmp_hls_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"hls: publish: name='%s' type='%s'\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"hls: bad stream name: '%s'\00", align 1
@NGX_INT64_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c".m3u8\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"/index.m3u8\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"hls: playlist='%V' playlist_bak='%V' stream_pattern='%V' keyfile_pattern='%V'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_48__*, %struct.TYPE_31__*)* @ngx_rtmp_hls_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_hls_publish(%struct.TYPE_48__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_48__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_33__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_35__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_48__* %0, %struct.TYPE_48__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %15 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %16 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %17 = call %struct.TYPE_34__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_48__* %15, i32 %16)
  store %struct.TYPE_34__* %17, %struct.TYPE_34__** %6, align 8
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %19 = icmp eq %struct.TYPE_34__* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %20, %2
  br label %656

32:                                               ; preds = %25
  %33 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %656

38:                                               ; preds = %32
  %39 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %40 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_47__*, %struct.TYPE_47__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ngx_log_debug2(i32 %39, i32 %44, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %50)
  %52 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %53 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %54 = call %struct.TYPE_33__* @ngx_rtmp_get_module_ctx(%struct.TYPE_48__* %52, i32 %53)
  store %struct.TYPE_33__* %54, %struct.TYPE_33__** %7, align 8
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %56 = icmp eq %struct.TYPE_33__* %55, null
  br i1 %56, label %57, label %69

57:                                               ; preds = %38
  %58 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_47__*, %struct.TYPE_47__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @ngx_pcalloc(i32 %62, i32 136)
  %64 = bitcast i8* %63 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %64, %struct.TYPE_33__** %7, align 8
  %65 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %67 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %68 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_48__* %65, %struct.TYPE_33__* %66, i32 %67)
  br label %95

69:                                               ; preds = %38
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 8
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %10, align 8
  %73 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %73, i32 0, i32 9
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %74, align 8
  store %struct.TYPE_35__* %75, %struct.TYPE_35__** %11, align 8
  %76 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %77 = call i32 @ngx_memzero(%struct.TYPE_33__* %76, i32 136)
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 8
  store i32* %78, i32** %80, align 8
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 9
  store %struct.TYPE_35__* %81, %struct.TYPE_35__** %83, align 8
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %85 = icmp ne %struct.TYPE_35__* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %69
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %86, %69
  br label %95

95:                                               ; preds = %94, %57
  %96 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 8
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %125

100:                                              ; preds = %95
  %101 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_47__*, %struct.TYPE_47__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 2
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  %113 = trunc i64 %112 to i32
  %114 = call i8* @ngx_pcalloc(i32 %105, i32 %113)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 8
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 8
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %100
  %123 = load i32, i32* @NGX_ERROR, align 4
  store i32 %123, i32* %3, align 4
  br label %660

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124, %95
  %126 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @ngx_strstr(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %125
  %132 = load i32, i32* @NGX_LOG_ERR, align 4
  %133 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_47__*, %struct.TYPE_47__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @ngx_log_error(i32 %132, i32 %137, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* @NGX_ERROR, align 4
  store i32 %142, i32* %3, align 4
  br label %660

143:                                              ; preds = %125
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @ngx_strlen(i8* %146)
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 8
  %151 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_47__*, %struct.TYPE_47__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = call i8* @ngx_palloc(i32 %155, i64 %161)
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %164, i32 0, i32 1
  store i8* %162, i8** %165, align 8
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = icmp eq i8* %169, null
  br i1 %170, label %171, label %173

171:                                              ; preds = %143
  %172 = load i32, i32* @NGX_ERROR, align 4
  store i32 %172, i32* %3, align 4
  br label %660

173:                                              ; preds = %143
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i8* @ngx_cpymem(i8* %177, i8* %180, i32 %184)
  store i8 0, i8* %185, align 1
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  %191 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %190, %194
  %196 = sext i32 %195 to i64
  %197 = add i64 %196, 6
  store i64 %197, i64* %12, align 8
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %173
  %203 = load i64, i64* %12, align 8
  %204 = add i64 %203, 6
  store i64 %204, i64* %12, align 8
  br label %205

205:                                              ; preds = %202, %173
  %206 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_47__*, %struct.TYPE_47__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i64, i64* %12, align 8
  %212 = call i8* @ngx_palloc(i32 %210, i64 %211)
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %214, i32 0, i32 0
  store i8* %212, i8** %215, align 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i32 0, i32 6
  %226 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i8* @ngx_cpymem(i8* %219, i8* %223, i32 %227)
  store i8* %228, i8** %8, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 -1
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 47
  br i1 %233, label %234, label %237

234:                                              ; preds = %205
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %8, align 8
  store i8 47, i8* %235, align 1
  br label %237

237:                                              ; preds = %234, %205
  %238 = load i8*, i8** %8, align 8
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @ngx_cpymem(i8* %238, i8* %242, i32 %246)
  store i8* %247, i8** %8, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = ptrtoint i8* %248 to i64
  %254 = ptrtoint i8* %252 to i64
  %255 = sub i64 %253, %254
  %256 = add nsw i64 %255, 1
  %257 = trunc i64 %256 to i32
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %259, i32 0, i32 0
  store i32 %257, i32* %260, align 8
  %261 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_47__*, %struct.TYPE_47__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @NGX_INT64_LEN, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = add i64 %272, 4
  %274 = call i8* @ngx_palloc(i32 %265, i64 %273)
  %275 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %276, i32 0, i32 1
  store i8* %274, i8** %277, align 8
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %279, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 3
  %284 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sub nsw i32 %289, 1
  %291 = call i32 @ngx_memcpy(i8* %281, i8* %285, i32 %290)
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = icmp ne i64 %294, 0
  %296 = zext i1 %295 to i64
  %297 = select i1 %295, i32 47, i32 45
  %298 = trunc i32 %297 to i8
  %299 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %299, i32 0, i32 1
  %301 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = sub nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %302, i64 %308
  store i8 %298, i8* %309, align 1
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 5
  %312 = load %struct.TYPE_36__*, %struct.TYPE_36__** %311, align 8
  %313 = icmp ne %struct.TYPE_36__* %312, null
  br i1 %313, label %314, label %473

314:                                              ; preds = %237
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %315, i32 0, i32 5
  %317 = load %struct.TYPE_36__*, %struct.TYPE_36__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %318, align 8
  store %struct.TYPE_32__* %319, %struct.TYPE_32__** %13, align 8
  store i64 0, i64* %14, align 8
  br label %320

320:                                              ; preds = %467, %314
  %321 = load i64, i64* %14, align 8
  %322 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %322, i32 0, i32 5
  %324 = load %struct.TYPE_36__*, %struct.TYPE_36__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = icmp slt i64 %321, %326
  br i1 %327, label %328, label %472

328:                                              ; preds = %320
  %329 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = sext i32 %332 to i64
  %334 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %335 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = icmp ugt i64 %333, %337
  br i1 %338, label %339, label %466

339:                                              ; preds = %328
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %341 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %344, i32 0, i32 4
  %346 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %345, i32 0, i32 1
  %347 = load i8*, i8** %346, align 8
  %348 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %349 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %348, i32 0, i32 4
  %350 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %347, i64 %352
  %354 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %355 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = sub i64 0, %357
  %359 = getelementptr inbounds i8, i8* %353, i64 %358
  %360 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %361 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = call i64 @ngx_memcmp(i32 %343, i8* %359, i64 %363)
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %466

366:                                              ; preds = %339
  %367 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 7
  store %struct.TYPE_32__* %367, %struct.TYPE_32__** %369, align 8
  %370 = load i8*, i8** %8, align 8
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %372, i32 0, i32 0
  %374 = load i8*, i8** %373, align 8
  %375 = ptrtoint i8* %370 to i64
  %376 = ptrtoint i8* %374 to i64
  %377 = sub i64 %375, %376
  store i64 %377, i64* %12, align 8
  %378 = load i64, i64* %12, align 8
  %379 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %380 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = sub i64 %378, %382
  %384 = add i64 %383, 6
  %385 = sub i64 %384, 1
  %386 = trunc i64 %385 to i32
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %388 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %388, i32 0, i32 0
  store i32 %386, i32* %389, align 8
  %390 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %390, i32 0, i32 0
  %392 = load %struct.TYPE_47__*, %struct.TYPE_47__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = add nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = call i8* @ngx_palloc(i32 %394, i64 %400)
  %402 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %402, i32 0, i32 5
  %404 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %403, i32 0, i32 1
  store i8* %401, i8** %404, align 8
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %406 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %405, i32 0, i32 5
  %407 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %406, i32 0, i32 1
  %408 = load i8*, i8** %407, align 8
  %409 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %410 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %410, i32 0, i32 0
  %412 = load i8*, i8** %411, align 8
  %413 = load i64, i64* %12, align 8
  %414 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %415 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = sub i64 %413, %417
  %419 = trunc i64 %418 to i32
  %420 = call i8* @ngx_cpymem(i8* %408, i8* %412, i32 %419)
  store i8* %420, i8** %9, align 8
  %421 = load i8*, i8** %9, align 8
  %422 = call i8* @ngx_cpymem(i8* %421, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  store i8* %422, i8** %9, align 8
  %423 = load i8*, i8** %9, align 8
  store i8 0, i8* %423, align 1
  %424 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = sext i32 %427 to i64
  %429 = add i64 %428, 5
  %430 = sub i64 %429, 1
  %431 = trunc i64 %430 to i32
  %432 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %433 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %432, i32 0, i32 6
  %434 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %433, i32 0, i32 0
  store i32 %431, i32* %434, align 8
  %435 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_47__*, %struct.TYPE_47__** %436, align 8
  %438 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  %440 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %441 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %440, i32 0, i32 6
  %442 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = add nsw i32 %443, 1
  %445 = sext i32 %444 to i64
  %446 = call i8* @ngx_palloc(i32 %439, i64 %445)
  %447 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %447, i32 0, i32 6
  %449 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %448, i32 0, i32 1
  store i8* %446, i8** %449, align 8
  %450 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %451 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %450, i32 0, i32 6
  %452 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %451, i32 0, i32 1
  %453 = load i8*, i8** %452, align 8
  %454 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %455, i32 0, i32 1
  %457 = load i8*, i8** %456, align 8
  %458 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %459 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = call i8* @ngx_cpymem(i8* %453, i8* %457, i32 %461)
  store i8* %462, i8** %9, align 8
  %463 = load i8*, i8** %9, align 8
  %464 = call i8* @ngx_cpymem(i8* %463, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i8* %464, i8** %9, align 8
  %465 = load i8*, i8** %9, align 8
  store i8 0, i8* %465, align 1
  br label %472

466:                                              ; preds = %339, %328
  br label %467

467:                                              ; preds = %466
  %468 = load i64, i64* %14, align 8
  %469 = add nsw i64 %468, 1
  store i64 %469, i64* %14, align 8
  %470 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %471 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %470, i32 1
  store %struct.TYPE_32__* %471, %struct.TYPE_32__** %13, align 8
  br label %320

472:                                              ; preds = %366, %320
  br label %473

473:                                              ; preds = %472, %237
  %474 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %473
  %479 = load i8*, i8** %8, align 8
  %480 = call i8* @ngx_cpymem(i8* %479, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 11)
  store i8* %480, i8** %8, align 8
  br label %484

481:                                              ; preds = %473
  %482 = load i8*, i8** %8, align 8
  %483 = call i8* @ngx_cpymem(i8* %482, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  store i8* %483, i8** %8, align 8
  br label %484

484:                                              ; preds = %481, %478
  %485 = load i8*, i8** %8, align 8
  %486 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %487 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %486, i32 0, i32 3
  %488 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %487, i32 0, i32 0
  %489 = load i8*, i8** %488, align 8
  %490 = ptrtoint i8* %485 to i64
  %491 = ptrtoint i8* %489 to i64
  %492 = sub i64 %490, %491
  %493 = trunc i64 %492 to i32
  %494 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %495 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %494, i32 0, i32 3
  %496 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %495, i32 0, i32 1
  store i32 %493, i32* %496, align 8
  %497 = load i8*, i8** %8, align 8
  store i8 0, i8* %497, align 1
  %498 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %498, i32 0, i32 0
  %500 = load %struct.TYPE_47__*, %struct.TYPE_47__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %504 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %503, i32 0, i32 3
  %505 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 8
  %507 = sext i32 %506 to i64
  %508 = add i64 %507, 5
  %509 = call i8* @ngx_palloc(i32 %502, i64 %508)
  %510 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %511 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %510, i32 0, i32 2
  %512 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %511, i32 0, i32 0
  store i8* %509, i8** %512, align 8
  %513 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %514, i32 0, i32 0
  %516 = load i8*, i8** %515, align 8
  %517 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %518 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %517, i32 0, i32 3
  %519 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %518, i32 0, i32 0
  %520 = load i8*, i8** %519, align 8
  %521 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %521, i32 0, i32 3
  %523 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = call i8* @ngx_cpymem(i8* %516, i8* %520, i32 %524)
  store i8* %525, i8** %8, align 8
  %526 = load i8*, i8** %8, align 8
  %527 = call i8* @ngx_cpymem(i8* %526, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i8* %527, i8** %8, align 8
  %528 = load i8*, i8** %8, align 8
  %529 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %530 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %529, i32 0, i32 2
  %531 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %530, i32 0, i32 0
  %532 = load i8*, i8** %531, align 8
  %533 = ptrtoint i8* %528 to i64
  %534 = ptrtoint i8* %532 to i64
  %535 = sub i64 %533, %534
  %536 = trunc i64 %535 to i32
  %537 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %538, i32 0, i32 1
  store i32 %536, i32* %539, align 8
  %540 = load i8*, i8** %8, align 8
  store i8 0, i8* %540, align 1
  %541 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %542 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %541, i32 0, i32 4
  %543 = load i64, i64* %542, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %632

545:                                              ; preds = %484
  %546 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %546, i32 0, i32 3
  %548 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = add nsw i32 %549, 1
  %551 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %552 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %551, i32 0, i32 4
  %553 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = add nsw i32 %550, %554
  %556 = add nsw i32 %555, 1
  %557 = load i32, i32* @NGX_INT64_LEN, align 4
  %558 = add nsw i32 %556, %557
  %559 = sext i32 %558 to i64
  %560 = add i64 %559, 5
  store i64 %560, i64* %12, align 8
  %561 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %562 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %561, i32 0, i32 0
  %563 = load %struct.TYPE_47__*, %struct.TYPE_47__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = load i64, i64* %12, align 8
  %567 = call i8* @ngx_palloc(i32 %565, i64 %566)
  %568 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %569, i32 0, i32 0
  store i8* %567, i8** %570, align 8
  %571 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %572 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %571, i32 0, i32 0
  %573 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %572, i32 0, i32 0
  %574 = load i8*, i8** %573, align 8
  %575 = icmp eq i8* %574, null
  br i1 %575, label %576, label %578

576:                                              ; preds = %545
  %577 = load i32, i32* @NGX_ERROR, align 4
  store i32 %577, i32* %3, align 4
  br label %660

578:                                              ; preds = %545
  %579 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %580, i32 0, i32 0
  %582 = load i8*, i8** %581, align 8
  %583 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %584 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %583, i32 0, i32 3
  %585 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %584, i32 0, i32 1
  %586 = load i8*, i8** %585, align 8
  %587 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %588 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %587, i32 0, i32 3
  %589 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %588, i32 0, i32 0
  %590 = load i32, i32* %589, align 8
  %591 = call i8* @ngx_cpymem(i8* %582, i8* %586, i32 %590)
  store i8* %591, i8** %8, align 8
  %592 = load i8*, i8** %8, align 8
  %593 = getelementptr inbounds i8, i8* %592, i64 -1
  %594 = load i8, i8* %593, align 1
  %595 = sext i8 %594 to i32
  %596 = icmp ne i32 %595, 47
  br i1 %596, label %597, label %600

597:                                              ; preds = %578
  %598 = load i8*, i8** %8, align 8
  %599 = getelementptr inbounds i8, i8* %598, i32 1
  store i8* %599, i8** %8, align 8
  store i8 47, i8* %598, align 1
  br label %600

600:                                              ; preds = %597, %578
  %601 = load i8*, i8** %8, align 8
  %602 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %603 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %602, i32 0, i32 4
  %604 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %603, i32 0, i32 1
  %605 = load i8*, i8** %604, align 8
  %606 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %607 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %606, i32 0, i32 4
  %608 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %607, i32 0, i32 0
  %609 = load i32, i32* %608, align 8
  %610 = call i8* @ngx_cpymem(i8* %601, i8* %605, i32 %609)
  store i8* %610, i8** %8, align 8
  %611 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %612 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %611, i32 0, i32 2
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 0
  %615 = zext i1 %614 to i64
  %616 = select i1 %614, i32 47, i32 45
  %617 = trunc i32 %616 to i8
  %618 = load i8*, i8** %8, align 8
  %619 = getelementptr inbounds i8, i8* %618, i32 1
  store i8* %619, i8** %8, align 8
  store i8 %617, i8* %618, align 1
  %620 = load i8*, i8** %8, align 8
  %621 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %622 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %622, i32 0, i32 0
  %624 = load i8*, i8** %623, align 8
  %625 = ptrtoint i8* %620 to i64
  %626 = ptrtoint i8* %624 to i64
  %627 = sub i64 %625, %626
  %628 = trunc i64 %627 to i32
  %629 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %630 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %630, i32 0, i32 1
  store i32 %628, i32* %631, align 8
  br label %632

632:                                              ; preds = %600, %484
  %633 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %634 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %635 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %634, i32 0, i32 0
  %636 = load %struct.TYPE_47__*, %struct.TYPE_47__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 4
  %639 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %640 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %639, i32 0, i32 3
  %641 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %642 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %641, i32 0, i32 2
  %643 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %644 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %643, i32 0, i32 1
  %645 = load %struct.TYPE_33__*, %struct.TYPE_33__** %7, align 8
  %646 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %645, i32 0, i32 0
  %647 = call i32 @ngx_log_debug4(i32 %633, i32 %638, i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_37__* %640, %struct.TYPE_38__* %642, %struct.TYPE_39__* %644, %struct.TYPE_40__* %646)
  %648 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %649 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %648, i32 0, i32 1
  %650 = load i64, i64* %649, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %655

652:                                              ; preds = %632
  %653 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %654 = call i32 @ngx_rtmp_hls_restore_stream(%struct.TYPE_48__* %653)
  br label %655

655:                                              ; preds = %652, %632
  br label %656

656:                                              ; preds = %655, %37, %31
  %657 = load %struct.TYPE_48__*, %struct.TYPE_48__** %4, align 8
  %658 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %659 = call i32 @next_publish(%struct.TYPE_48__* %657, %struct.TYPE_31__* %658)
  store i32 %659, i32* %3, align 4
  br label %660

660:                                              ; preds = %656, %576, %171, %131, %122
  %661 = load i32, i32* %3, align 4
  ret i32 %661
}

declare dso_local %struct.TYPE_34__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_48__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_33__* @ngx_rtmp_get_module_ctx(%struct.TYPE_48__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_48__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_strstr(i8*, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ngx_strlen(i8*) #1

declare dso_local i8* @ngx_palloc(i32, i64) #1

declare dso_local i8* @ngx_cpymem(i8*, i8*, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ngx_memcmp(i32, i8*, i64) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, %struct.TYPE_37__*, %struct.TYPE_38__*, %struct.TYPE_39__*, %struct.TYPE_40__*) #1

declare dso_local i32 @ngx_rtmp_hls_restore_stream(%struct.TYPE_48__*) #1

declare dso_local i32 @next_publish(%struct.TYPE_48__*, %struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
