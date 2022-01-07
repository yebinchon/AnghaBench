; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_start.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@ngx_rtmp_core_module = common dso_local global i32 0, align 4
@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_RTMP_MSID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NetStream.Play.Start\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Start live\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"NetStream.Play.PublishNotify\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Start publishing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ngx_rtmp_live_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_live_start(i32* %0) #0 {
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
  %17 = call i32* @ngx_rtmp_create_stream_begin(i32* %15, i32 %16)
  store i32* %17, i32** %5, align 8
  store i64 0, i64* %8, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32* @ngx_rtmp_create_status(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %8, align 8
  %27 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %25
  store i32* %24, i32** %27, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32* @ngx_rtmp_create_sample_access(i32* %28)
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  %32 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %30
  store i32* %29, i32** %32, align 8
  br label %33

33:                                               ; preds = %22, %1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32*, i32** %2, align 8
  %40 = call i32* @ngx_rtmp_create_status(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  %43 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %41
  store i32* %40, i32** %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32*, i32** %2, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 0
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @ngx_rtmp_live_set_status(i32* %45, i32* %46, i32** %47, i64 %48, i32 1)
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i32*, i32** %3, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @ngx_rtmp_free_shared_chain(i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %52, %44
  store i64 0, i64* %7, align 8
  br label %57

57:                                               ; preds = %67, %56
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32*, i32** %3, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds [3 x i32*], [3 x i32*]* %6, i64 0, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @ngx_rtmp_free_shared_chain(i32* %62, i32* %65)
  br label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %7, align 8
  br label %57

70:                                               ; preds = %57
  ret void
}

declare dso_local i32* @ngx_rtmp_get_module_srv_conf(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @ngx_rtmp_get_module_app_conf(i32*, i32) #1

declare dso_local i32* @ngx_rtmp_create_stream_begin(i32*, i32) #1

declare dso_local i32* @ngx_rtmp_create_status(i32*, i8*, i8*, i8*) #1

declare dso_local i32* @ngx_rtmp_create_sample_access(i32*) #1

declare dso_local i32 @ngx_rtmp_live_set_status(i32*, i32*, i32**, i64, i32) #1

declare dso_local i32 @ngx_rtmp_free_shared_chain(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
