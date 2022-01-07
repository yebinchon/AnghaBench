; ModuleID = '/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_del_callback.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/static/extr_static-threaded.c_web_server_del_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.web_client = type { i32, i32, i64 }

@worker_private = common dso_local global %struct.TYPE_6__* null, align 8
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%llu: THE CLIENT WILL BE FRED BY READING FILE JOB ON FD %d\00", align 1
@WEB_CLIENT_FLAG_DONT_CLOSE_SOCKET = common dso_local global i32 0, align 4
@POLLINFO_FLAG_DONT_CLOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%llu: CLOSING CLIENT FD %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @web_server_del_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_server_del_callback(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.web_client*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker_private, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.web_client*
  store %struct.web_client* %12, %struct.web_client** %3, align 8
  %13 = load %struct.web_client*, %struct.web_client** %3, align 8
  %14 = getelementptr inbounds %struct.web_client, %struct.web_client* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.web_client*, %struct.web_client** %3, align 8
  %16 = getelementptr inbounds %struct.web_client, %struct.web_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.web_client*, %struct.web_client** %3, align 8
  %25 = getelementptr inbounds %struct.web_client, %struct.web_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_5__* @pollinfo_from_slot(i32 %23, i32 %26)
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %4, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %29 = load i32, i32* @D_WEB_CLIENT, align 4
  %30 = load %struct.web_client*, %struct.web_client** %3, align 8
  %31 = getelementptr inbounds %struct.web_client, %struct.web_client* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @debug(i32 %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %59

37:                                               ; preds = %1
  %38 = load %struct.web_client*, %struct.web_client** %3, align 8
  %39 = load i32, i32* @WEB_CLIENT_FLAG_DONT_CLOSE_SOCKET, align 4
  %40 = call i64 @web_client_flag_check(%struct.web_client* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* @POLLINFO_FLAG_DONT_CLOSE, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* @D_WEB_CLIENT, align 4
  %50 = load %struct.web_client*, %struct.web_client** %3, align 8
  %51 = getelementptr inbounds %struct.web_client, %struct.web_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @debug(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.web_client*, %struct.web_client** %3, align 8
  %58 = call i32 @web_client_release(%struct.web_client* %57)
  br label %59

59:                                               ; preds = %48, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_5__* @pollinfo_from_slot(i32, i32) #1

declare dso_local i32 @debug(i32, i8*, i32, i32) #1

declare dso_local i64 @web_client_flag_check(%struct.web_client*, i32) #1

declare dso_local i32 @web_client_release(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
