; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_init_main_conf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream.c_ngx_stream_upstream_init_main_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (i32*, %struct.TYPE_9__*)* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @ngx_stream_upstream_init_main_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_upstream_init_main_conf(i32* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64 (i32*, %struct.TYPE_9__*)*, align 8
  %9 = alloca %struct.TYPE_9__**, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  store %struct.TYPE_9__** %15, %struct.TYPE_9__*** %9, align 8
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %55, %2
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %16
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %24, i64 %25
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64 (i32*, %struct.TYPE_9__*)*, i64 (i32*, %struct.TYPE_9__*)** %29, align 8
  %31 = icmp ne i64 (i32*, %struct.TYPE_9__*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %23
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %33, i64 %34
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64 (i32*, %struct.TYPE_9__*)*, i64 (i32*, %struct.TYPE_9__*)** %38, align 8
  br label %41

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i64 (i32*, %struct.TYPE_9__*)* [ %39, %32 ], [ @ngx_stream_upstream_init_round_robin, %40 ]
  store i64 (i32*, %struct.TYPE_9__*)* %42, i64 (i32*, %struct.TYPE_9__*)** %8, align 8
  %43 = load i64 (i32*, %struct.TYPE_9__*)*, i64 (i32*, %struct.TYPE_9__*)** %8, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %45, i64 %46
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = call i64 %43(i32* %44, %struct.TYPE_9__* %48)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %53, i8** %3, align 8
  br label %60

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %16

58:                                               ; preds = %16
  %59 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i8*, i8** %3, align 8
  ret i8* %61
}

declare dso_local i64 @ngx_stream_upstream_init_round_robin(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
