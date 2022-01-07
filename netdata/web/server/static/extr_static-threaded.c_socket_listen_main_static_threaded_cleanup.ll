; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_socket_listen_main_static_threaded_cleanup.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_socket_listen_main_static_threaded_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.netdata_static_thread = type { i32 }

@NETDATA_MAIN_THREAD_EXITING = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@static_threaded_workers_count = common dso_local global i32 0, align 4
@static_workers_private_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"stopping worker %d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"found stopped worker %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Waiting %d static web threads to finish...\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"%d static web threads are taking too long to finish. Giving up.\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"closing all web server sockets...\00", align 1
@api_sockets = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"all static web threads stopped.\00", align 1
@NETDATA_MAIN_THREAD_EXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @socket_listen_main_static_threaded_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_listen_main_static_threaded_cleanup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.netdata_static_thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.netdata_static_thread*
  store %struct.netdata_static_thread* %9, %struct.netdata_static_thread** %3, align 8
  %10 = load i32, i32* @NETDATA_MAIN_THREAD_EXITING, align 4
  %11 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %12 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  store i32 0, i32* %5, align 4
  %13 = load i32, i32* @USEC_PER_SEC, align 4
  %14 = mul nsw i32 2, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  store i64 50000, i64* %7, align 8
  store i32 1, i32* %4, align 4
  br label %16

16:                                               ; preds = %46, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @static_threaded_workers_count, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_workers_private_data, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_workers_private_data, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @netdata_thread_cancel(i32 %39)
  br label %45

41:                                               ; preds = %20
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %16

49:                                               ; preds = %16
  br label %50

50:                                               ; preds = %85, %49
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = icmp sgt i64 %54, 0
  br label %56

56:                                               ; preds = %53, %50
  %57 = phi i1 [ false, %50 ], [ %55, %53 ]
  br i1 %57, label %58, label %86

58:                                               ; preds = %56
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = sub nsw i64 %60, %59
  store i64 %61, i64* %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @sleep_usec(i64 %64)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %82, %58
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @static_threaded_workers_count, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @static_workers_private_data, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %70
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %66

85:                                               ; preds = %66
  br label %50

86:                                               ; preds = %56
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @error(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %94 = call i32 @listen_sockets_close(i32* @api_sockets)
  %95 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* @NETDATA_MAIN_THREAD_EXITED, align 4
  %97 = load %struct.netdata_static_thread*, %struct.netdata_static_thread** %3, align 8
  %98 = getelementptr inbounds %struct.netdata_static_thread, %struct.netdata_static_thread* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @netdata_thread_cancel(i32) #1

declare dso_local i32 @sleep_usec(i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @listen_sockets_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
