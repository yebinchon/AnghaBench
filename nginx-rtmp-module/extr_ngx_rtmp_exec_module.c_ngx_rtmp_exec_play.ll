; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_play.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32*, i32 }

@ngx_rtmp_exec_module = common dso_local global i32 0, align 4
@NGX_RTMP_EXEC_PLAYING = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_RTMP_EXEC_PLAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pull\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*)* @ngx_rtmp_exec_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_exec_play(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %10 = call %struct.TYPE_12__* @ngx_rtmp_get_module_app_conf(i32* %8, i32 %9)
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  br label %68

19:                                               ; preds = %13
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NGX_RTMP_EXEC_PLAYING, align 4
  %28 = call i64 @ngx_rtmp_exec_init_ctx(i32* %20, i32 %23, i32 %26, i32 %27)
  %29 = load i64, i64* @NGX_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %68

32:                                               ; preds = %19
  %33 = load i32*, i32** %3, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @NGX_RTMP_EXEC_PLAY, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = call i32 @ngx_rtmp_exec_unmanaged(i32* %33, i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ngx_rtmp_exec_init_pull_ctx(i32* %40, i32 %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %68

48:                                               ; preds = %32
  %49 = load i32*, i32** %3, align 8
  %50 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %51 = call %struct.TYPE_11__* @ngx_rtmp_get_module_ctx(i32* %49, i32 %50)
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = icmp ne %struct.TYPE_10__* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = call i32 @ngx_rtmp_exec_managed(i32* %63, i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %62, %57, %48
  br label %68

68:                                               ; preds = %67, %47, %31, %18
  %69 = load i32*, i32** %3, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %71 = call i32 @next_play(i32* %69, %struct.TYPE_9__* %70)
  ret i32 %71
}

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_app_conf(i32*, i32) #1

declare dso_local i64 @ngx_rtmp_exec_init_ctx(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_exec_unmanaged(i32*, i32*, i8*) #1

declare dso_local i64 @ngx_rtmp_exec_init_pull_ctx(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_exec_managed(i32*, i32*, i8*) #1

declare dso_local i32 @next_play(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
