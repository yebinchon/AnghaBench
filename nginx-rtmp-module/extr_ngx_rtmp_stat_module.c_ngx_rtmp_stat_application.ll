; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_stat_module.c_ngx_rtmp_stat_application.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_stat_module.c_ngx_rtmp_stat_application.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"<application>\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<name>\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"</name>\0D\0A\00", align 1
@ngx_rtmp_stat_module = common dso_local global i32 0, align 4
@NGX_RTMP_STAT_LIVE = common dso_local global i32 0, align 4
@ngx_rtmp_live_module = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@NGX_RTMP_STAT_PLAY = common dso_local global i32 0, align 4
@ngx_rtmp_play_module = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"</application>\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32***, %struct.TYPE_8__*)* @ngx_rtmp_stat_application to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_stat_application(i32* %0, i32*** %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32***, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32*** %1, i32**** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %8 = call i32 @NGX_RTMP_STAT_L(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @NGX_RTMP_STAT_L(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = call i32 @NGX_RTMP_STAT_ES(i32* %11)
  %13 = call i32 @NGX_RTMP_STAT_L(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @ngx_rtmp_stat_module, align 4
  %16 = call %struct.TYPE_7__* @ngx_http_get_module_loc_conf(i32* %14, i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %7, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NGX_RTMP_STAT_LIVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %3
  %24 = load i32*, i32** %4, align 8
  %25 = load i32***, i32**** %5, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ngx_rtmp_live_module, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ngx_rtmp_stat_live(i32* %24, i32*** %25, i32 %31)
  br label %33

33:                                               ; preds = %23, %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NGX_RTMP_STAT_PLAY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i32*, i32** %4, align 8
  %42 = load i32***, i32**** %5, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ngx_rtmp_play_module, i32 0, i32 0), align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ngx_rtmp_stat_play(i32* %41, i32*** %42, i32 %48)
  br label %50

50:                                               ; preds = %40, %33
  %51 = call i32 @NGX_RTMP_STAT_L(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @NGX_RTMP_STAT_L(i8*) #1

declare dso_local i32 @NGX_RTMP_STAT_ES(i32*) #1

declare dso_local %struct.TYPE_7__* @ngx_http_get_module_loc_conf(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_stat_live(i32*, i32***, i32) #1

declare dso_local i32 @ngx_rtmp_stat_play(i32*, i32***, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
