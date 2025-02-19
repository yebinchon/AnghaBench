; ModuleID = '/home/carl/AnghaBench/netdata/daemon/extr_main.c_web_server_threading_selection.c'
source_filename = "/home/carl/AnghaBench/netdata/daemon/extr_main.c_web_server_threading_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@CONFIG_SECTION_WEB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@web_server_mode = common dso_local global i64 0, align 8
@WEB_SERVER_MODE_STATIC_THREADED = common dso_local global i64 0, align 8
@static_threads = common dso_local global %struct.TYPE_2__* null, align 8
@socket_listen_main_static_threaded = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_server_threading_selection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %4 = load i64, i64* @web_server_mode, align 8
  %5 = call i32 @web_server_mode_name(i64 %4)
  %6 = call i32 @config_get(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i64 @web_server_mode_id(i32 %6)
  store i64 %7, i64* @web_server_mode, align 8
  %8 = load i64, i64* @web_server_mode, align 8
  %9 = load i64, i64* @WEB_SERVER_MODE_STATIC_THREADED, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %37, %0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %12
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @socket_listen_main_static_threaded, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %20
  %30 = load i32, i32* %1, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_threads, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 8
  br label %36

36:                                               ; preds = %29, %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %2, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %12

40:                                               ; preds = %12
  ret void
}

declare dso_local i64 @web_server_mode_id(i32) #1

declare dso_local i32 @config_get(i32, i8*, i32) #1

declare dso_local i32 @web_server_mode_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
