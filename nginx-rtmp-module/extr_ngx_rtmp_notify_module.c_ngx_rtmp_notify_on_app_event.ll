; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_on_app_event.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_on_app_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_10__ = type { i32** }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_RTMP_NOTIFY_DONE = common dso_local global i64 0, align 8
@NGX_RTMP_NOTIFY_PLAY = common dso_local global i64 0, align 8
@NGX_RTMP_NOTIFY_UPDATE = common dso_local global i64 0, align 8
@NGX_RTMP_NOTIFY_PUBLISH = common dso_local global i64 0, align 8
@NGX_RTMP_NOTIFY_PLAY_DONE = common dso_local global i64 0, align 8
@NGX_RTMP_NOTIFY_RECORD_DONE = common dso_local global i64 0, align 8
@NGX_RTMP_NOTIFY_PUBLISH_DONE = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i32*, i8*)* @ngx_rtmp_notify_on_app_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_notify_on_app_event(%struct.TYPE_11__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %10, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i64 1
  %23 = call i32* @ngx_rtmp_notify_parse_url(%struct.TYPE_11__* %20, %struct.TYPE_9__* %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %27, i8** %4, align 8
  br label %65

28:                                               ; preds = %3
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 0
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %9, align 8
  store i64 0, i64* %12, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %57 [
    i32 7, label %34
    i32 9, label %47
    i32 10, label %49
    i32 12, label %51
    i32 14, label %53
    i32 15, label %55
  ]

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 100
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i64, i64* @NGX_RTMP_NOTIFY_DONE, align 8
  store i64 %43, i64* %12, align 8
  br label %46

44:                                               ; preds = %34
  %45 = load i64, i64* @NGX_RTMP_NOTIFY_PLAY, align 8
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %44, %42
  br label %57

47:                                               ; preds = %28
  %48 = load i64, i64* @NGX_RTMP_NOTIFY_UPDATE, align 8
  store i64 %48, i64* %12, align 8
  br label %57

49:                                               ; preds = %28
  %50 = load i64, i64* @NGX_RTMP_NOTIFY_PUBLISH, align 8
  store i64 %50, i64* %12, align 8
  br label %57

51:                                               ; preds = %28
  %52 = load i64, i64* @NGX_RTMP_NOTIFY_PLAY_DONE, align 8
  store i64 %52, i64* %12, align 8
  br label %57

53:                                               ; preds = %28
  %54 = load i64, i64* @NGX_RTMP_NOTIFY_RECORD_DONE, align 8
  store i64 %54, i64* %12, align 8
  br label %57

55:                                               ; preds = %28
  %56 = load i64, i64* @NGX_RTMP_NOTIFY_PUBLISH_DONE, align 8
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %28, %55, %53, %51, %49, %47, %46
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  store i32* %58, i32** %63, align 8
  %64 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %64, i8** %4, align 8
  br label %65

65:                                               ; preds = %57, %26
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

declare dso_local i32* @ngx_rtmp_notify_parse_url(%struct.TYPE_11__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
