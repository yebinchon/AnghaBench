; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_get_ctx.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_get_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@ngx_http_grpc_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*)* @ngx_http_grpc_get_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @ngx_http_grpc_get_ctx(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %7 = load i32, i32* @ngx_http_grpc_module, align 4
  %8 = call %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__* %6, i32 %7)
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = call i64 @ngx_http_grpc_get_connection_data(%struct.TYPE_11__* %17, %struct.TYPE_12__* %18, i32* %20)
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %28

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %2, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %29
}

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @ngx_http_grpc_get_connection_data(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
