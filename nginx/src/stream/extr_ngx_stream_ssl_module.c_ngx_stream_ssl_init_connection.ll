; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_init_connection.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_ssl_module.c_ngx_stream_ssl_init_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@ngx_stream_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_stream_ssl_module = common dso_local global i32 0, align 4
@ngx_stream_ssl_handshake_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_12__*)* @ngx_stream_ssl_init_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_ssl_init_connection(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @ngx_stream_core_module, align 4
  %15 = call i8* @ngx_stream_get_module_srv_conf(i32* %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %9, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call i64 @ngx_tcp_nodelay(%struct.TYPE_12__* %22)
  %24 = load i64, i64* @NGX_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i64, i64* @NGX_ERROR, align 8
  store i64 %27, i64* %3, align 8
  br label %68

28:                                               ; preds = %21, %2
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call i64 @ngx_ssl_create_connection(i32* %29, %struct.TYPE_12__* %30, i32 0)
  %32 = load i64, i64* @NGX_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @NGX_ERROR, align 8
  store i64 %35, i64* %3, align 8
  br label %68

36:                                               ; preds = %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = call i64 @ngx_ssl_handshake(%struct.TYPE_12__* %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @NGX_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %3, align 8
  br label %68

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @NGX_AGAIN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @ngx_stream_ssl_module, align 4
  %51 = call i8* @ngx_stream_get_module_srv_conf(i32* %49, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %8, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ngx_add_timer(i32 %55, i32 %58)
  %60 = load i32, i32* @ngx_stream_ssl_handshake_handler, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %65, i64* %3, align 8
  br label %68

66:                                               ; preds = %44
  %67 = load i64, i64* @NGX_OK, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %66, %48, %42, %34, %26
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local i8* @ngx_stream_get_module_srv_conf(i32*, i32) #1

declare dso_local i64 @ngx_tcp_nodelay(%struct.TYPE_12__*) #1

declare dso_local i64 @ngx_ssl_create_connection(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @ngx_ssl_handshake(%struct.TYPE_12__*) #1

declare dso_local i32 @ngx_add_timer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
