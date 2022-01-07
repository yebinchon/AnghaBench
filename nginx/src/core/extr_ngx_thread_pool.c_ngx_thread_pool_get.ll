; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_get.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_thread_pool.c_ngx_thread_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_12__** }

@ngx_thread_pool_module = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ngx_thread_pool_get(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ngx_thread_pool_module, align 4
  %13 = call i64 @ngx_get_conf(i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %17, align 8
  store %struct.TYPE_12__** %18, %struct.TYPE_12__*** %7, align 8
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %19
  %27 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %27, i64 %28
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %26
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %39, i64 %40
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ngx_strncmp(i32 %45, i32 %48, i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %55, i64 %56
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %3, align 8
  br label %64

59:                                               ; preds = %38, %26
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %19

63:                                               ; preds = %19
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %64

64:                                               ; preds = %63, %54
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %65
}

declare dso_local i64 @ngx_get_conf(i32, i32) #1

declare dso_local i64 @ngx_strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
