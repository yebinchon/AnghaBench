; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_publish.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_dash_module.c_ngx_rtmp_dash_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__*, i64 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { i8*, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_27__, i64, i32*, i64 }
%struct.TYPE_26__ = type { i32, i8* }
%struct.TYPE_24__ = type { i8*, i32 }
%struct.TYPE_23__ = type { i8*, i32 }
%struct.TYPE_27__ = type { i32, i8* }
%struct.TYPE_32__ = type { i32, i64, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32, i8* }

@ngx_rtmp_dash_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"dash: publish: name='%s' type='%s'\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"dash: bad stream name: '%s'\00", align 1
@NGX_INT32_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"/index.mpd\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".mpd\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".bak\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"dash: playlist='%V' playlist_bak='%V' stream_pattern='%V'\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_30__*)* @ngx_rtmp_dash_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_dash_publish(%struct.TYPE_29__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %12 = load i32, i32* @ngx_rtmp_dash_module, align 4
  %13 = call %struct.TYPE_32__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_29__* %11, i32 %12)
  store %struct.TYPE_32__* %13, %struct.TYPE_32__** %10, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %15 = icmp eq %struct.TYPE_32__* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %16, %2
  br label %393

28:                                               ; preds = %21
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %393

34:                                               ; preds = %28
  %35 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ngx_log_debug2(i32 %35, i32 %40, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %43, i32 %46)
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %49 = load i32, i32* @ngx_rtmp_dash_module, align 4
  %50 = call %struct.TYPE_31__* @ngx_rtmp_get_module_ctx(%struct.TYPE_29__* %48, i32 %49)
  store %struct.TYPE_31__* %50, %struct.TYPE_31__** %8, align 8
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %52 = icmp eq %struct.TYPE_31__* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %34
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @ngx_pcalloc(i32 %58, i32 96)
  %60 = bitcast i8* %59 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %60, %struct.TYPE_31__** %8, align 8
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %62 = icmp eq %struct.TYPE_31__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %393

64:                                               ; preds = %53
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %67 = load i32, i32* @ngx_rtmp_dash_module, align 4
  %68 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_29__* %65, %struct.TYPE_31__* %66, i32 %67)
  br label %84

69:                                               ; preds = %34
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %70, i32 0, i32 7
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %393

75:                                               ; preds = %69
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  store i32* %78, i32** %9, align 8
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %80 = call i32 @ngx_memzero(%struct.TYPE_31__* %79, i32 96)
  %81 = load i32*, i32** %9, align 8
  %82 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %82, i32 0, i32 6
  store i32* %81, i32** %83, align 8
  br label %84

84:                                               ; preds = %75, %64
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %114

89:                                               ; preds = %84
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %97, 2
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = call i8* @ngx_pcalloc(i32 %94, i32 %102)
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 6
  store i32* %104, i32** %106, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %89
  %112 = load i32, i32* @NGX_ERROR, align 4
  store i32 %112, i32* %3, align 4
  br label %397

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %84
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 5
  store i64 0, i64* %116, align 8
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @ngx_strstr(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %114
  %123 = load i32, i32* @NGX_LOG_ERR, align 4
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @ngx_log_error(i32 %123, i32 %128, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* @NGX_ERROR, align 4
  store i32 %133, i32* %3, align 4
  br label %397

134:                                              ; preds = %114
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @ngx_strlen(i8* %137)
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  %152 = call i8* @ngx_palloc(i32 %146, i32 %151)
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 1
  store i8* %152, i8** %155, align 8
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %134
  %162 = load i32, i32* @NGX_ERROR, align 4
  store i32 %162, i32* %3, align 4
  br label %397

163:                                              ; preds = %134
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 4
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i8* @ngx_cpymem(i8* %167, i8* %170, i32 %174)
  store i8 0, i8* %175, align 1
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %180, %184
  %186 = sext i32 %185 to i64
  %187 = add i64 %186, 5
  store i64 %187, i64* %7, align 8
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %163
  %193 = load i64, i64* %7, align 8
  %194 = add i64 %193, 6
  store i64 %194, i64* %7, align 8
  br label %195

195:                                              ; preds = %192, %163
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i64, i64* %7, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i8* @ngx_palloc(i32 %200, i32 %202)
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  store i8* %203, i8** %206, align 8
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i8* @ngx_cpymem(i8* %210, i8* %214, i32 %218)
  store i8* %219, i8** %6, align 8
  %220 = load i8*, i8** %6, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 -1
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp ne i32 %223, 47
  br i1 %224, label %225, label %228

225:                                              ; preds = %195
  %226 = load i8*, i8** %6, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %6, align 8
  store i8 47, i8* %226, align 1
  br label %228

228:                                              ; preds = %225, %195
  %229 = load i8*, i8** %6, align 8
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i8* @ngx_cpymem(i8* %229, i8* %233, i32 %237)
  store i8* %238, i8** %6, align 8
  %239 = load i8*, i8** %6, align 8
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = ptrtoint i8* %239 to i64
  %245 = ptrtoint i8* %243 to i64
  %246 = sub i64 %244, %245
  %247 = add nsw i64 %246, 1
  %248 = trunc i64 %247 to i32
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 0
  store i32 %248, i32* %251, align 8
  %252 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_28__*, %struct.TYPE_28__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %258 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @NGX_INT32_LEN, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = add i64 %263, 5
  %265 = trunc i64 %264 to i32
  %266 = call i8* @ngx_palloc(i32 %256, i32 %265)
  %267 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 1
  store i8* %266, i8** %269, align 8
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %271, i32 0, i32 1
  %273 = load i8*, i8** %272, align 8
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 %281, 1
  %283 = call i32 @ngx_memcpy(i8* %273, i8* %277, i32 %282)
  %284 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 47, i32 45
  %290 = trunc i32 %289 to i8
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 1
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %294, i64 %300
  store i8 %290, i8* %301, align 1
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %228
  %307 = load i8*, i8** %6, align 8
  %308 = call i8* @ngx_cpymem(i8* %307, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  store i8* %308, i8** %6, align 8
  br label %312

309:                                              ; preds = %228
  %310 = load i8*, i8** %6, align 8
  %311 = call i8* @ngx_cpymem(i8* %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i8* %311, i8** %6, align 8
  br label %312

312:                                              ; preds = %309, %306
  %313 = load i8*, i8** %6, align 8
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = ptrtoint i8* %313 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  %321 = trunc i64 %320 to i32
  %322 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %322, i32 0, i32 3
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 1
  store i32 %321, i32* %324, align 8
  %325 = load i8*, i8** %6, align 8
  store i8 0, i8* %325, align 1
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = add i64 %335, 5
  %337 = trunc i64 %336 to i32
  %338 = call i8* @ngx_palloc(i32 %330, i32 %337)
  %339 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  store i8* %338, i8** %341, align 8
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 3
  %352 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = call i8* @ngx_cpymem(i8* %345, i8* %349, i32 %353)
  store i8* %354, i8** %6, align 8
  %355 = load i8*, i8** %6, align 8
  %356 = call i8* @ngx_cpymem(i8* %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  store i8* %356, i8** %6, align 8
  %357 = load i8*, i8** %6, align 8
  %358 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 0
  %361 = load i8*, i8** %360, align 8
  %362 = ptrtoint i8* %357 to i64
  %363 = ptrtoint i8* %361 to i64
  %364 = sub i64 %362, %363
  %365 = trunc i64 %364 to i32
  %366 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %367 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %366, i32 0, i32 2
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 1
  store i32 %365, i32* %368, align 8
  %369 = load i8*, i8** %6, align 8
  store i8 0, i8* %369, align 1
  %370 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %371 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %371, i32 0, i32 0
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %377 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %376, i32 0, i32 3
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 2
  %380 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %380, i32 0, i32 1
  %382 = call i32 @ngx_log_debug3(i32 %370, i32 %375, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_23__* %377, %struct.TYPE_24__* %379, %struct.TYPE_26__* %381)
  %383 = call i32 (...) @ngx_time()
  %384 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %384, i32 0, i32 0
  store i32 %383, i32* %385, align 8
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %387 = call i64 @ngx_rtmp_dash_ensure_directory(%struct.TYPE_29__* %386)
  %388 = load i64, i64* @NGX_OK, align 8
  %389 = icmp ne i64 %387, %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %312
  %391 = load i32, i32* @NGX_ERROR, align 4
  store i32 %391, i32* %3, align 4
  br label %397

392:                                              ; preds = %312
  br label %393

393:                                              ; preds = %392, %74, %63, %33, %27
  %394 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %395 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %396 = call i32 @next_publish(%struct.TYPE_29__* %394, %struct.TYPE_30__* %395)
  store i32 %396, i32* %3, align 4
  br label %397

397:                                              ; preds = %393, %390, %161, %122, %111
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local %struct.TYPE_32__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_31__* @ngx_rtmp_get_module_ctx(%struct.TYPE_29__*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_29__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @ngx_strstr(i8*, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ngx_strlen(i8*) #1

declare dso_local i8* @ngx_palloc(i32, i32) #1

declare dso_local i8* @ngx_cpymem(i8*, i8*, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, %struct.TYPE_23__*, %struct.TYPE_24__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_time(...) #1

declare dso_local i64 @ngx_rtmp_dash_ensure_directory(%struct.TYPE_29__*) #1

declare dso_local i32 @next_publish(%struct.TYPE_29__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
