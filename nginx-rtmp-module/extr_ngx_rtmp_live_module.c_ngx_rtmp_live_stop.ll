; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_stop.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_RTMP_MSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"NetStream.Play.Stop\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Stop live\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"NetStream.Play.UnpublishNotify\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Stop publishing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ngx_rtmp_live_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_live_stop(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [3 x i32*], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @ngx_rtmp_core_module, align 4
  %11 = call i32* @ngx_rtmp_get_module_srv_conf(i32* %9, i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @ngx_rtmp_live_module, align 4
  %14 = call %struct.TYPE_3__* @ngx_rtmp_get_module_app_conf(i32* %12, i32 %13)
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @NGX_RTMP_MSID, align 4
  %17 = call i32* @ngx_rtmp_create_stream_eof(i32* %15, i32 %16)
  store i32* %17, i32** %5, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @ngx_rtmp_create_status(i32* %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %8, align 8
  %27 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %25
  store i32* %24, i32** %27, align 8
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = call i32* @ngx_rtmp_create_status(i32* %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  %38 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %36
  store i32* %35, i32** %38, align 8
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32*, i32** %2, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 0
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @ngx_rtmp_live_set_status(i32* %40, i32* %41, i32** %42, i64 %43, i32 0)
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @ngx_rtmp_free_shared_chain(i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %47, %39
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ngx_rtmp_free_shared_chain(i32* %57, i32* %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %52

65:                                               ; preds = %52
  ret void
}

declare dso_local i32* @ngx_rtmp_get_module_srv_conf(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @ngx_rtmp_get_module_app_conf(i32*, i32) #1

declare dso_local i32* @ngx_rtmp_create_stream_eof(i32*, i32) #1

declare dso_local i32* @ngx_rtmp_create_status(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @ngx_rtmp_live_set_status(i32*, i32*, i32**, i64, i32) #1

declare dso_local i32 @ngx_rtmp_free_shared_chain(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
