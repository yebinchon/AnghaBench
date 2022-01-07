; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_random_module.c_ngx_stream_upstream_init_random_peer.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_random_module.c_ngx_stream_upstream_init_random_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i64, %struct.TYPE_18__* }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"init random peer\00", align 1
@ngx_stream_upstream_random_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_stream_upstream_get_random2_peer = common dso_local global i32 0, align 4
@ngx_stream_upstream_get_random_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32*)* @ngx_stream_upstream_init_random_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_upstream_init_random_peer(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ngx_log_debug0(i32 %8, i32 %13, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @ngx_stream_upstream_random_module, align 4
  %17 = call %struct.TYPE_18__* @ngx_stream_conf_upstream_srv_conf(i32* %15, i32 %16)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %6, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_19__* @ngx_palloc(i32 %22, i32 24)
  store %struct.TYPE_19__* %23, %struct.TYPE_19__** %7, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %25 = icmp eq %struct.TYPE_19__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* @NGX_ERROR, align 8
  store i64 %27, i64* %3, align 8
  br label %79

28:                                               ; preds = %2
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i64 @ngx_stream_upstream_init_round_robin_peer(%struct.TYPE_20__* %36, i32* %37)
  %39 = load i64, i64* @NGX_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i64, i64* @NGX_ERROR, align 8
  store i64 %42, i64* %3, align 8
  br label %79

43:                                               ; preds = %28
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @ngx_stream_upstream_get_random2_peer, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 8
  br label %62

55:                                               ; preds = %43
  %56 = load i32, i32* @ngx_stream_upstream_get_random_peer, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i32 %56, i32* %61, align 8
  br label %62

62:                                               ; preds = %55, %48
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  store %struct.TYPE_18__* %63, %struct.TYPE_18__** %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = call i32 @ngx_stream_upstream_rr_peers_rlock(%struct.TYPE_21__* %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %75, align 8
  %77 = call i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__* %76)
  %78 = load i64, i64* @NGX_OK, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %62, %41, %26
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_stream_conf_upstream_srv_conf(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_stream_upstream_init_round_robin_peer(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @ngx_stream_upstream_rr_peers_rlock(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_stream_upstream_rr_peers_unlock(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
