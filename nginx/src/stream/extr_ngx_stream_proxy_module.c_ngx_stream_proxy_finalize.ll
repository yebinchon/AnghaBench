; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_finalize.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_15__, %struct.TYPE_17__*, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_24__*, i32*, i32, i32 (%struct.TYPE_15__*, i32, i64)* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_21__*, i64, %struct.TYPE_19__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32, i32 }
%struct.TYPE_16__ = type { i32* }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"finalize stream proxy: %i\00", align 1
@ngx_current_msec = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@NGX_PEER_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"close stream proxy upstream connection: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i64)* @ngx_stream_proxy_finalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_finalize(%struct.TYPE_23__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @ngx_log_debug1(i32 %8, i32 %13, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %7, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %20 = icmp eq %struct.TYPE_22__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %163

22:                                               ; preds = %2
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ngx_resolve_name_done(i32* %39)
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %34, %27, %22
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %48, align 8
  store %struct.TYPE_24__* %49, %struct.TYPE_24__** %6, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = icmp ne %struct.TYPE_17__* %52, null
  br i1 %53, label %54, label %90

54:                                               ; preds = %45
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, -1
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i64, i64* @ngx_current_msec, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  br label %71

71:                                               ; preds = %61, %54
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %73 = icmp ne %struct.TYPE_24__* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 4
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 8
  br label %89

89:                                               ; preds = %74, %71
  br label %90

90:                                               ; preds = %89, %45
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 3
  %94 = load i32 (%struct.TYPE_15__*, i32, i64)*, i32 (%struct.TYPE_15__*, i32, i64)** %93, align 8
  %95 = icmp ne i32 (%struct.TYPE_15__*, i32, i64)* %94, null
  br i1 %95, label %96, label %143

96:                                               ; preds = %90
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %143

102:                                              ; preds = %96
  store i64 0, i64* %5, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %104 = icmp ne %struct.TYPE_24__* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SOCK_DGRAM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118, %111
  %126 = load i64, i64* @NGX_PEER_FAILED, align 8
  store i64 %126, i64* %5, align 8
  br label %127

127:                                              ; preds = %125, %118, %105, %102
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32 (%struct.TYPE_15__*, i32, i64)*, i32 (%struct.TYPE_15__*, i32, i64)** %130, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %5, align 8
  %139 = call i32 %131(%struct.TYPE_15__* %133, i32 %137, i64 %138)
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  br label %143

143:                                              ; preds = %127, %96, %90
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %145 = icmp ne %struct.TYPE_24__* %144, null
  br i1 %145, label %146, label %162

146:                                              ; preds = %143
  %147 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @ngx_log_debug1(i32 %147, i32 %152, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %155)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %158 = call i32 @ngx_close_connection(%struct.TYPE_24__* %157)
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %161, align 8
  br label %162

162:                                              ; preds = %146, %143
  br label %163

163:                                              ; preds = %162, %21
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %165 = load i64, i64* %4, align 8
  %166 = call i32 @ngx_stream_finalize_session(%struct.TYPE_23__* %164, i64 %165)
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_resolve_name_done(i32*) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_stream_finalize_session(%struct.TYPE_23__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
