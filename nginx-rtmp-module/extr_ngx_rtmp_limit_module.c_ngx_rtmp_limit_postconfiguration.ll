; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_limit_module.c_ngx_rtmp_limit_postconfiguration.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_limit_module.c_ngx_rtmp_limit_postconfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@NGX_RTMP_CONNECT = common dso_local global i64 0, align 8
@ngx_rtmp_limit_connect = common dso_local global i32 0, align 4
@NGX_RTMP_DISCONNECT = common dso_local global i64 0, align 8
@ngx_rtmp_limit_disconnect = common dso_local global i32 0, align 4
@ngx_rtmp_limit_module = common dso_local global i32 0, align 4
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@shm_name = common dso_local global i32 0, align 4
@ngx_pagesize = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_rtmp_limit_shm_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_rtmp_limit_postconfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_limit_postconfiguration(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @ngx_rtmp_core_module, align 4
  %9 = call i8* @ngx_rtmp_conf_get_module_main_conf(i32* %7, i32 %8)
  %10 = bitcast i8* %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @NGX_RTMP_CONNECT, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32* @ngx_array_push(i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32, i32* @ngx_rtmp_limit_connect, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @NGX_RTMP_DISCONNECT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32* @ngx_array_push(i32* %23)
  store i32* %24, i32** %6, align 8
  %25 = load i32, i32* @ngx_rtmp_limit_disconnect, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @ngx_rtmp_limit_module, align 4
  %29 = call i8* @ngx_rtmp_conf_get_module_main_conf(i32* %27, i32 %28)
  %30 = bitcast i8* %29 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %5, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NGX_CONF_UNSET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @NGX_OK, align 4
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %1
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @ngx_pagesize, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call %struct.TYPE_6__* @ngx_shared_memory_add(i32* %39, i32* @shm_name, i32 %41, i32* @ngx_rtmp_limit_module)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = icmp eq %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @NGX_ERROR, align 4
  store i32 %50, i32* %2, align 4
  br label %58

51:                                               ; preds = %38
  %52 = load i32, i32* @ngx_rtmp_limit_shm_init, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @NGX_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %51, %49, %36
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i8* @ngx_rtmp_conf_get_module_main_conf(i32*, i32) #1

declare dso_local i32* @ngx_array_push(i32*) #1

declare dso_local %struct.TYPE_6__* @ngx_shared_memory_add(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
