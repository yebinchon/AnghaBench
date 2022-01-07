; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_write_filter_module.c_ngx_stream_write_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_write_filter_module.c_ngx_stream_write_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_29__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, %struct.TYPE_28__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i32, i32, i64, i32, %struct.TYPE_29__* (%struct.TYPE_28__*, %struct.TYPE_29__*, i32)*, i64 }
%struct.TYPE_26__ = type { %struct.TYPE_29__*, %struct.TYPE_29__* }

@ngx_stream_write_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"write old buf t:%d f:%d %p, pos %p, size: %z file: %O, size: %O\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"zero size buf in writer t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"negative size buf in writer t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"write new buf t:%d f:%d %p, pos %p, size: %z file: %O, size: %O\00", align 1
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"stream write filter: l:%ui f:%ui s:%O\00", align 1
@NGX_LOWLEVEL_BUFFERED = common dso_local global i32 0, align 4
@NGX_STREAM_WRITE_BUFFERED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"the stream output chain is empty\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"stream write filter %p\00", align 1
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"shared connection is busy\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_29__*, i32)* @ngx_stream_write_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_stream_write_filter(%struct.TYPE_27__* %0, %struct.TYPE_29__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_29__**, align 8
  %15 = alloca %struct.TYPE_29__**, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = load i32, i32* @ngx_stream_write_filter_module, align 4
  %21 = call %struct.TYPE_26__* @ngx_stream_get_module_ctx(%struct.TYPE_27__* %19, i32 %20)
  store %struct.TYPE_26__* %21, %struct.TYPE_26__** %18, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %23 = icmp eq %struct.TYPE_26__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %3
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_26__* @ngx_pcalloc(i32 %29, i32 16)
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %18, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %32 = icmp eq %struct.TYPE_26__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @NGX_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %686

35:                                               ; preds = %24
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %38 = load i32, i32* @ngx_stream_write_filter_module, align 4
  %39 = call i32 @ngx_stream_set_ctx(%struct.TYPE_27__* %36, %struct.TYPE_26__* %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %3
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %45, align 8
  store %struct.TYPE_28__* %46, %struct.TYPE_28__** %17, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 1
  store %struct.TYPE_29__** %48, %struct.TYPE_29__*** %15, align 8
  br label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %54, align 8
  store %struct.TYPE_28__* %55, %struct.TYPE_28__** %17, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 0
  store %struct.TYPE_29__** %57, %struct.TYPE_29__*** %15, align 8
  br label %58

58:                                               ; preds = %49, %43
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @NGX_ERROR, align 4
  store i32 %64, i32* %4, align 4
  br label %686

65:                                               ; preds = %58
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %66 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %15, align 8
  store %struct.TYPE_29__** %66, %struct.TYPE_29__*** %14, align 8
  %67 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %15, align 8
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %67, align 8
  store %struct.TYPE_29__* %68, %struct.TYPE_29__** %12, align 8
  br label %69

69:                                               ; preds = %288, %65
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %71 = icmp ne %struct.TYPE_29__* %70, null
  br i1 %71, label %72, label %292

72:                                               ; preds = %69
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  store %struct.TYPE_29__** %74, %struct.TYPE_29__*** %14, align 8
  %75 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_23__*, %struct.TYPE_23__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %103, %108
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %119, %124
  %126 = call i32 @ngx_log_debug7(i32 %75, i32 %78, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %88, i32 %93, i64 %98, i64 %109, i64 %114, i64 %125)
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = call i64 @ngx_buf_size(%struct.TYPE_23__* %129)
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %191

132:                                              ; preds = %72
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %134, align 8
  %136 = call i32 @ngx_buf_special(%struct.TYPE_23__* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %191, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* @NGX_LOG_ALERT, align 4
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 8
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %139, i32 %142, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %147, i64 %152, i32 %157, i32 %162, i64 %167, i64 %172, i32 %177, i64 %182, i64 %187)
  %189 = call i32 (...) @ngx_debug_point()
  %190 = load i32, i32* @NGX_ERROR, align 4
  store i32 %190, i32* %4, align 4
  br label %686

191:                                              ; preds = %132, %72
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %193, align 8
  %195 = call i64 @ngx_buf_size(%struct.TYPE_23__* %194)
  %196 = icmp slt i64 %195, 0
  br i1 %196, label %197, label %250

197:                                              ; preds = %191
  %198 = load i32, i32* @NGX_LOG_ALERT, align 4
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 11
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 10
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 4
  %246 = load i64, i64* %245, align 8
  %247 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %198, i32 %201, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %206, i64 %211, i32 %216, i32 %221, i64 %226, i64 %231, i32 %236, i64 %241, i64 %246)
  %248 = call i32 (...) @ngx_debug_point()
  %249 = load i32, i32* @NGX_ERROR, align 4
  store i32 %249, i32* %4, align 4
  br label %686

250:                                              ; preds = %191
  %251 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %252, align 8
  %254 = call i64 @ngx_buf_size(%struct.TYPE_23__* %253)
  %255 = load i64, i64* %8, align 8
  %256 = add nsw i64 %255, %254
  store i64 %256, i64* %8, align 8
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %250
  %264 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263, %250
  store i32 1, i32* %10, align 4
  br label %271

271:                                              ; preds = %270, %263
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  store i32 1, i32* %11, align 4
  br label %279

279:                                              ; preds = %278, %271
  %280 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %280, i32 0, i32 1
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  store i32 1, i32* %9, align 4
  br label %287

287:                                              ; preds = %286, %279
  br label %288

288:                                              ; preds = %287
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_29__*, %struct.TYPE_29__** %290, align 8
  store %struct.TYPE_29__* %291, %struct.TYPE_29__** %12, align 8
  br label %69

292:                                              ; preds = %69
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_29__* %293, %struct.TYPE_29__** %13, align 8
  br label %294

294:                                              ; preds = %529, %292
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %296 = icmp ne %struct.TYPE_29__* %295, null
  br i1 %296, label %297, label %533

297:                                              ; preds = %294
  %298 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %298, i32 0, i32 4
  %300 = load i32, i32* %299, align 8
  %301 = call %struct.TYPE_29__* @ngx_alloc_chain_link(i32 %300)
  store %struct.TYPE_29__* %301, %struct.TYPE_29__** %12, align 8
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %303 = icmp eq %struct.TYPE_29__* %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %297
  %305 = load i32, i32* @NGX_ERROR, align 4
  store i32 %305, i32* %4, align 4
  br label %686

306:                                              ; preds = %297
  %307 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %308 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %307, i32 0, i32 1
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %308, align 8
  %310 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %310, i32 0, i32 1
  store %struct.TYPE_23__* %309, %struct.TYPE_23__** %311, align 8
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %313 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %14, align 8
  store %struct.TYPE_29__* %312, %struct.TYPE_29__** %313, align 8
  %314 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %314, i32 0, i32 0
  store %struct.TYPE_29__** %315, %struct.TYPE_29__*** %14, align 8
  %316 = load i32, i32* @NGX_LOG_DEBUG_EVENT, align 4
  %317 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %318 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %321 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %320, i32 0, i32 1
  %322 = load %struct.TYPE_23__*, %struct.TYPE_23__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %322, i32 0, i32 11
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_23__*, %struct.TYPE_23__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 10
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 9
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %336 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 8
  %339 = load i64, i64* %338, align 8
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_23__*, %struct.TYPE_23__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %342, i32 0, i32 7
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 8
  %349 = load i64, i64* %348, align 8
  %350 = sub nsw i64 %344, %349
  %351 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %352 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_23__*, %struct.TYPE_23__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 1
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 4
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %362 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %361, i32 0, i32 1
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 5
  %365 = load i64, i64* %364, align 8
  %366 = sub nsw i64 %360, %365
  %367 = call i32 @ngx_log_debug7(i32 %316, i32 %319, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %324, i32 %329, i32 %334, i64 %339, i64 %350, i64 %355, i64 %366)
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 1
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %369, align 8
  %371 = call i64 @ngx_buf_size(%struct.TYPE_23__* %370)
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %373, label %432

373:                                              ; preds = %306
  %374 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %375 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %374, i32 0, i32 1
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %375, align 8
  %377 = call i32 @ngx_buf_special(%struct.TYPE_23__* %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %432, label %379

379:                                              ; preds = %373
  %380 = load i32, i32* @NGX_LOG_ALERT, align 4
  %381 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %382 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_23__*, %struct.TYPE_23__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %386, i32 0, i32 11
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %395 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_23__*, %struct.TYPE_23__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %396, i32 0, i32 10
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_23__*, %struct.TYPE_23__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i32 0, i32 9
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %405 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_23__*, %struct.TYPE_23__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %406, i32 0, i32 8
  %408 = load i64, i64* %407, align 8
  %409 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %409, i32 0, i32 1
  %411 = load %struct.TYPE_23__*, %struct.TYPE_23__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %411, i32 0, i32 7
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %414, i32 0, i32 1
  %416 = load %struct.TYPE_23__*, %struct.TYPE_23__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %416, i32 0, i32 6
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %420 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %419, i32 0, i32 1
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 5
  %423 = load i64, i64* %422, align 8
  %424 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %424, i32 0, i32 1
  %426 = load %struct.TYPE_23__*, %struct.TYPE_23__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %426, i32 0, i32 4
  %428 = load i64, i64* %427, align 8
  %429 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %380, i32 %383, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %388, i64 %393, i32 %398, i32 %403, i64 %408, i64 %413, i32 %418, i64 %423, i64 %428)
  %430 = call i32 (...) @ngx_debug_point()
  %431 = load i32, i32* @NGX_ERROR, align 4
  store i32 %431, i32* %4, align 4
  br label %686

432:                                              ; preds = %373, %306
  %433 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %434 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %433, i32 0, i32 1
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %434, align 8
  %436 = call i64 @ngx_buf_size(%struct.TYPE_23__* %435)
  %437 = icmp slt i64 %436, 0
  br i1 %437, label %438, label %491

438:                                              ; preds = %432
  %439 = load i32, i32* @NGX_LOG_ALERT, align 4
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %441 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %444 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_23__*, %struct.TYPE_23__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %445, i32 0, i32 11
  %447 = load i32, i32* %446, align 8
  %448 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %449 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %448, i32 0, i32 1
  %450 = load %struct.TYPE_23__*, %struct.TYPE_23__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %450, i32 0, i32 2
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %454 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %453, i32 0, i32 1
  %455 = load %struct.TYPE_23__*, %struct.TYPE_23__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %455, i32 0, i32 10
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %459 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %458, i32 0, i32 1
  %460 = load %struct.TYPE_23__*, %struct.TYPE_23__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %460, i32 0, i32 9
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %464 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %463, i32 0, i32 1
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %465, i32 0, i32 8
  %467 = load i64, i64* %466, align 8
  %468 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %469 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %468, i32 0, i32 1
  %470 = load %struct.TYPE_23__*, %struct.TYPE_23__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %470, i32 0, i32 7
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %474 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %473, i32 0, i32 1
  %475 = load %struct.TYPE_23__*, %struct.TYPE_23__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %475, i32 0, i32 6
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %479 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %478, i32 0, i32 1
  %480 = load %struct.TYPE_23__*, %struct.TYPE_23__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %480, i32 0, i32 5
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %484 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %483, i32 0, i32 1
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %485, i32 0, i32 4
  %487 = load i64, i64* %486, align 8
  %488 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %439, i32 %442, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %447, i64 %452, i32 %457, i32 %462, i64 %467, i64 %472, i32 %477, i64 %482, i64 %487)
  %489 = call i32 (...) @ngx_debug_point()
  %490 = load i32, i32* @NGX_ERROR, align 4
  store i32 %490, i32* %4, align 4
  br label %686

491:                                              ; preds = %432
  %492 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %493 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %492, i32 0, i32 1
  %494 = load %struct.TYPE_23__*, %struct.TYPE_23__** %493, align 8
  %495 = call i64 @ngx_buf_size(%struct.TYPE_23__* %494)
  %496 = load i64, i64* %8, align 8
  %497 = add nsw i64 %496, %495
  store i64 %497, i64* %8, align 8
  %498 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %499 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %498, i32 0, i32 1
  %500 = load %struct.TYPE_23__*, %struct.TYPE_23__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %500, i32 0, i32 3
  %502 = load i64, i64* %501, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %511, label %504

504:                                              ; preds = %491
  %505 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %506 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %505, i32 0, i32 1
  %507 = load %struct.TYPE_23__*, %struct.TYPE_23__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %507, i32 0, i32 2
  %509 = load i64, i64* %508, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %512

511:                                              ; preds = %504, %491
  store i32 1, i32* %10, align 4
  br label %512

512:                                              ; preds = %511, %504
  %513 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %514 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %513, i32 0, i32 1
  %515 = load %struct.TYPE_23__*, %struct.TYPE_23__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %515, i32 0, i32 1
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %512
  store i32 1, i32* %11, align 4
  br label %520

520:                                              ; preds = %519, %512
  %521 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %522 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %521, i32 0, i32 1
  %523 = load %struct.TYPE_23__*, %struct.TYPE_23__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %528

527:                                              ; preds = %520
  store i32 1, i32* %9, align 4
  br label %528

528:                                              ; preds = %527, %520
  br label %529

529:                                              ; preds = %528
  %530 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %531 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %530, i32 0, i32 0
  %532 = load %struct.TYPE_29__*, %struct.TYPE_29__** %531, align 8
  store %struct.TYPE_29__* %532, %struct.TYPE_29__** %13, align 8
  br label %294

533:                                              ; preds = %294
  %534 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %14, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %534, align 8
  %535 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %536 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %537 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* %9, align 4
  %540 = load i32, i32* %10, align 4
  %541 = load i64, i64* %8, align 8
  %542 = call i32 @ngx_log_debug3(i32 %535, i32 %538, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %539, i32 %540, i64 %541)
  %543 = load i64, i64* %8, align 8
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %602

545:                                              ; preds = %533
  %546 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %547 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %546, i32 0, i32 1
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @NGX_LOWLEVEL_BUFFERED, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %602, label %552

552:                                              ; preds = %545
  %553 = load i32, i32* %9, align 4
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %560

555:                                              ; preds = %552
  %556 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %557 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %556, i32 0, i32 6
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %602, label %560

560:                                              ; preds = %555, %552
  %561 = load i32, i32* %9, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %569, label %563

563:                                              ; preds = %560
  %564 = load i32, i32* %10, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %569, label %566

566:                                              ; preds = %563
  %567 = load i32, i32* %11, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %594

569:                                              ; preds = %566, %563, %560
  %570 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %15, align 8
  %571 = load %struct.TYPE_29__*, %struct.TYPE_29__** %570, align 8
  store %struct.TYPE_29__* %571, %struct.TYPE_29__** %12, align 8
  br label %572

572:                                              ; preds = %575, %569
  %573 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %574 = icmp ne %struct.TYPE_29__* %573, null
  br i1 %574, label %575, label %585

575:                                              ; preds = %572
  %576 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %576, %struct.TYPE_29__** %13, align 8
  %577 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %578 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %577, i32 0, i32 0
  %579 = load %struct.TYPE_29__*, %struct.TYPE_29__** %578, align 8
  store %struct.TYPE_29__* %579, %struct.TYPE_29__** %12, align 8
  %580 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %581 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %580, i32 0, i32 4
  %582 = load i32, i32* %581, align 8
  %583 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %584 = call i32 @ngx_free_chain(i32 %582, %struct.TYPE_29__* %583)
  br label %572

585:                                              ; preds = %572
  %586 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %15, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %586, align 8
  %587 = load i32, i32* @NGX_STREAM_WRITE_BUFFERED, align 4
  %588 = xor i32 %587, -1
  %589 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %590 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = and i32 %591, %588
  store i32 %592, i32* %590, align 4
  %593 = load i32, i32* @NGX_OK, align 4
  store i32 %593, i32* %4, align 4
  br label %686

594:                                              ; preds = %566
  %595 = load i32, i32* @NGX_LOG_ALERT, align 4
  %596 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %597 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 8
  %599 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %595, i32 %598, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %600 = call i32 (...) @ngx_debug_point()
  %601 = load i32, i32* @NGX_ERROR, align 4
  store i32 %601, i32* %4, align 4
  br label %686

602:                                              ; preds = %555, %545, %533
  %603 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %604 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %603, i32 0, i32 5
  %605 = load %struct.TYPE_29__* (%struct.TYPE_28__*, %struct.TYPE_29__*, i32)*, %struct.TYPE_29__* (%struct.TYPE_28__*, %struct.TYPE_29__*, i32)** %604, align 8
  %606 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %607 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %15, align 8
  %608 = load %struct.TYPE_29__*, %struct.TYPE_29__** %607, align 8
  %609 = call %struct.TYPE_29__* %605(%struct.TYPE_28__* %606, %struct.TYPE_29__* %608, i32 0)
  store %struct.TYPE_29__* %609, %struct.TYPE_29__** %16, align 8
  %610 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %611 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %612 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %611, i32 0, i32 2
  %613 = load i32, i32* %612, align 8
  %614 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %615 = call i32 @ngx_log_debug1(i32 %610, i32 %613, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_29__* %614)
  %616 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %617 = load %struct.TYPE_29__*, %struct.TYPE_29__** @NGX_CHAIN_ERROR, align 8
  %618 = icmp eq %struct.TYPE_29__* %616, %617
  br i1 %618, label %619, label %623

619:                                              ; preds = %602
  %620 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %621 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %620, i32 0, i32 0
  store i32 1, i32* %621, align 8
  %622 = load i32, i32* @NGX_ERROR, align 4
  store i32 %622, i32* %4, align 4
  br label %686

623:                                              ; preds = %602
  %624 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %15, align 8
  %625 = load %struct.TYPE_29__*, %struct.TYPE_29__** %624, align 8
  store %struct.TYPE_29__* %625, %struct.TYPE_29__** %12, align 8
  br label %626

626:                                              ; preds = %635, %623
  %627 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %628 = icmp ne %struct.TYPE_29__* %627, null
  br i1 %628, label %629, label %633

629:                                              ; preds = %626
  %630 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %631 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %632 = icmp ne %struct.TYPE_29__* %630, %631
  br label %633

633:                                              ; preds = %629, %626
  %634 = phi i1 [ false, %626 ], [ %632, %629 ]
  br i1 %634, label %635, label %645

635:                                              ; preds = %633
  %636 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  store %struct.TYPE_29__* %636, %struct.TYPE_29__** %13, align 8
  %637 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %638 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %637, i32 0, i32 0
  %639 = load %struct.TYPE_29__*, %struct.TYPE_29__** %638, align 8
  store %struct.TYPE_29__* %639, %struct.TYPE_29__** %12, align 8
  %640 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %641 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %640, i32 0, i32 4
  %642 = load i32, i32* %641, align 8
  %643 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %644 = call i32 @ngx_free_chain(i32 %642, %struct.TYPE_29__* %643)
  br label %626

645:                                              ; preds = %633
  %646 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %647 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %15, align 8
  store %struct.TYPE_29__* %646, %struct.TYPE_29__** %647, align 8
  %648 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %649 = icmp ne %struct.TYPE_29__* %648, null
  br i1 %649, label %650, label %669

650:                                              ; preds = %645
  %651 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %652 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %651, i32 0, i32 3
  %653 = load i64, i64* %652, align 8
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %662

655:                                              ; preds = %650
  %656 = load i32, i32* @NGX_LOG_ALERT, align 4
  %657 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %658 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %657, i32 0, i32 2
  %659 = load i32, i32* %658, align 8
  %660 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %656, i32 %659, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %661 = load i32, i32* @NGX_ERROR, align 4
  store i32 %661, i32* %4, align 4
  br label %686

662:                                              ; preds = %650
  %663 = load i32, i32* @NGX_STREAM_WRITE_BUFFERED, align 4
  %664 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %665 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %664, i32 0, i32 1
  %666 = load i32, i32* %665, align 4
  %667 = or i32 %666, %663
  store i32 %667, i32* %665, align 4
  %668 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %668, i32* %4, align 4
  br label %686

669:                                              ; preds = %645
  %670 = load i32, i32* @NGX_STREAM_WRITE_BUFFERED, align 4
  %671 = xor i32 %670, -1
  %672 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %673 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = and i32 %674, %671
  store i32 %675, i32* %673, align 4
  %676 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %677 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %676, i32 0, i32 1
  %678 = load i32, i32* %677, align 4
  %679 = load i32, i32* @NGX_LOWLEVEL_BUFFERED, align 4
  %680 = and i32 %678, %679
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %684

682:                                              ; preds = %669
  %683 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %683, i32* %4, align 4
  br label %686

684:                                              ; preds = %669
  %685 = load i32, i32* @NGX_OK, align 4
  store i32 %685, i32* %4, align 4
  br label %686

686:                                              ; preds = %684, %682, %662, %655, %619, %594, %585, %438, %379, %304, %197, %138, %63, %33
  %687 = load i32, i32* %4, align 4
  ret i32 %687
}

declare dso_local %struct.TYPE_26__* @ngx_stream_get_module_ctx(%struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_stream_set_ctx(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_log_debug7(i32, i32, i32, i8*, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_buf_special(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_debug_point(...) #1

declare dso_local %struct.TYPE_29__* @ngx_alloc_chain_link(i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
