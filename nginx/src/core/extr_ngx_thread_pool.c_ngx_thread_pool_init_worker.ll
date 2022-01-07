; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_init_worker.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_init_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32** }

@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_WORKER = common dso_local global i64 0, align 8
@NGX_PROCESS_SINGLE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_thread_pool_module = common dso_local global i32 0, align 4
@ngx_thread_pool_done = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @ngx_thread_pool_init_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_thread_pool_init_worker(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load i64, i64* @ngx_process, align 8
  %8 = load i64, i64* @NGX_PROCESS_WORKER, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i64, i64* @ngx_process, align 8
  %12 = load i64, i64* @NGX_PROCESS_SINGLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i64, i64* @NGX_OK, align 8
  store i64 %15, i64* %2, align 8
  br label %62

16:                                               ; preds = %10, %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ngx_thread_pool_module, align 4
  %21 = call i64 @ngx_get_conf(i32 %19, i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i64, i64* @NGX_OK, align 8
  store i64 %26, i64* %2, align 8
  br label %62

27:                                               ; preds = %16
  %28 = call i32 @ngx_thread_pool_queue_init(i32* @ngx_thread_pool_done)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32**, i32*** %31, align 8
  store i32** %32, i32*** %5, align 8
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %57, %27
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %34, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %33
  %41 = load i32**, i32*** %5, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ngx_thread_pool_init(i32* %44, i32 %47, i32 %50)
  %52 = load i64, i64* @NGX_OK, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i64, i64* @NGX_ERROR, align 8
  store i64 %55, i64* %2, align 8
  br label %62

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  br label %33

60:                                               ; preds = %33
  %61 = load i64, i64* @NGX_OK, align 8
  store i64 %61, i64* %2, align 8
  br label %62

62:                                               ; preds = %60, %54, %25, %14
  %63 = load i64, i64* %2, align 8
  ret i64 %63
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i32 @ngx_thread_pool_queue_init(i32*) #1

declare dso_local i64 @ngx_thread_pool_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
