; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_socket_listen_main_static_threaded.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_socket_listen_main_static_threaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@socket_listen_main_static_threaded_cleanup = common dso_local global i32 0, align 4
@WEB_SERVER_MODE_STATIC_THREADED = common dso_local global i32 0, align 4
@web_server_mode = common dso_local global i32 0, align 4
@api_sockets = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [39 x i8] c"LISTENER: no listen sockets available.\00", align 1
@processors = common dso_local global i32 0, align 4
@CONFIG_SECTION_WEB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"single-threaded\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"Running web server with one thread, because mode is single-threaded\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"static-threaded\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"web server threads\00", align 1
@static_threaded_workers_count = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"web server max sockets\00", align 1
@rlimit_nofile = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@static_workers_private_data = common dso_local global %struct.TYPE_5__* null, align 8
@web_server_is_multithreaded = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"WEB_SERVER[static%d]\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"starting worker %d\00", align 1
@NETDATA_THREAD_OPTION_DEFAULT = common dso_local global i32 0, align 4
@NETDATA_SSL_CONTEXT_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @socket_listen_main_static_threaded(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [51 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @socket_listen_main_static_threaded_cleanup, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @netdata_thread_cleanup_push(i32 %7, i8* %8)
  %10 = load i32, i32* @WEB_SERVER_MODE_STATIC_THREADED, align 4
  store i32 %10, i32* @web_server_mode, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @api_sockets, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i32, i32* @processors, align 4
  %17 = icmp sgt i32 %16, 6
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @processors, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 6, %18 ], [ %20, %19 ]
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %24 = call i32 @config_get(i32 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @strcmp(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %30 = call i32 @config_set(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = call i32 @config_get_number(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %34)
  store i32 %35, i32* @static_threaded_workers_count, align 4
  %36 = load i32, i32* @static_threaded_workers_count, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* @static_threaded_workers_count, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* @CONFIG_SECTION_WEB, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rlimit_nofile, i32 0, i32 0), align 4
  %42 = sdiv i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = call i32 @config_get_number(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 %43)
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %4, align 8
  %46 = load i32, i32* @static_threaded_workers_count, align 4
  %47 = sext i32 %46 to i64
  %48 = call %struct.TYPE_5__* @callocz(i64 %47, i32 4)
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** @static_workers_private_data, align 8
  %49 = load i32, i32* @static_threaded_workers_count, align 4
  %50 = icmp sgt i32 %49, 1
  %51 = zext i1 %50 to i32
  store i32 %51, i32* @web_server_is_multithreaded, align 4
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %92, %39
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @static_threaded_workers_count, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @static_workers_private_data, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* @static_threaded_workers_count, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %63, %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** @static_workers_private_data, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i64 %66, i64* %71, align 8
  %72 = getelementptr inbounds [51 x i8], [51 x i8]* %6, i64 0, i64 0
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @snprintfz(i8* %72, i32 50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %77)
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** @static_workers_private_data, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = getelementptr inbounds [51 x i8], [51 x i8]* %6, i64 0, i64 0
  %85 = load i32, i32* @NETDATA_THREAD_OPTION_DEFAULT, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @static_workers_private_data, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = bitcast %struct.TYPE_5__* %89 to i8*
  %91 = call i32 @netdata_thread_create(i32* %83, i8* %84, i32 %85, i32 (i8*)* @socket_listen_main_static_threaded_worker, i8* %90)
  br label %92

92:                                               ; preds = %56
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %52

95:                                               ; preds = %52
  %96 = load i64, i64* %4, align 8
  %97 = load i32, i32* @static_threaded_workers_count, align 4
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %96, %98
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @static_workers_private_data, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i64 %99, i64* %102, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** @static_workers_private_data, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 0
  %105 = bitcast %struct.TYPE_5__* %104 to i8*
  %106 = call i32 @socket_listen_main_static_threaded_worker(i8* %105)
  %107 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @config_get(i32, i8*, i8*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @config_set(i32, i8*, i8*) #1

declare dso_local i32 @config_get_number(i32, i8*, i64) #1

declare dso_local %struct.TYPE_5__* @callocz(i64, i32) #1

declare dso_local i32 @snprintfz(i8*, i32, i8*, i32) #1

declare dso_local i32 @netdata_thread_create(i32*, i8*, i32, i32 (i8*)*, i8*) #1

declare dso_local i32 @socket_listen_main_static_threaded_worker(i8*) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
