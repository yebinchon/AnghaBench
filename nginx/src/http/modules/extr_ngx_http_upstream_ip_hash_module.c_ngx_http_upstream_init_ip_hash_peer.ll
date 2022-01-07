; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_ip_hash_module.c_ngx_http_upstream_init_ip_hash_peer.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_ip_hash_module.c_ngx_http_upstream_init_ip_hash_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32* }
%struct.sockaddr_in = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i32*, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_upstream_get_ip_hash_peer = common dso_local global i32 0, align 4
@ngx_http_upstream_ip_hash_pseudo_addr = common dso_local global i32* null, align 8
@ngx_http_upstream_get_round_robin_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32*)* @ngx_http_upstream_init_ip_hash_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_init_ip_hash_peer(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_18__* @ngx_palloc(i32 %10, i32 40)
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %7, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %13 = icmp eq %struct.TYPE_18__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @NGX_ERROR, align 8
  store i64 %15, i64* %3, align 8
  br label %74

16:                                               ; preds = %2
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32* %18, i32** %23, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @ngx_http_upstream_init_round_robin_peer(%struct.TYPE_19__* %24, i32* %25)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load i64, i64* @NGX_ERROR, align 8
  store i64 %30, i64* %3, align 8
  br label %74

31:                                               ; preds = %16
  %32 = load i32, i32* @ngx_http_upstream_get_ip_hash_peer, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %59 [
    i32 129, label %45
  ]

45:                                               ; preds = %31
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = bitcast %struct.TYPE_15__* %50 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %51, %struct.sockaddr_in** %6, align 8
  %52 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 4
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  store i32 3, i32* %58, align 8
  br label %65

59:                                               ; preds = %31
  %60 = load i32*, i32** @ngx_http_upstream_ip_hash_pseudo_addr, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  store i32 3, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %45
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  store i32 89, i32* %67, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @ngx_http_upstream_get_round_robin_peer, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i64, i64* @NGX_OK, align 8
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %65, %29, %14
  %75 = load i64, i64* %3, align 8
  ret i64 %75
}

declare dso_local %struct.TYPE_18__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_http_upstream_init_round_robin_peer(%struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
