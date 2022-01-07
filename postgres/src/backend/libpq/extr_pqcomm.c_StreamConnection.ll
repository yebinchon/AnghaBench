; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_StreamConnection.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_pqcomm.c_StreamConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not accept new connection: %m\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"getsockname() failed: %m\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"setsockopt(%s) failed: %m\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"SO_KEEPALIVE\00", align 1
@tcp_keepalives_idle = common dso_local global i32 0, align 4
@tcp_keepalives_interval = common dso_local global i32 0, align 4
@tcp_keepalives_count = common dso_local global i32 0, align 4
@tcp_user_timeout = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@PQ_SEND_BUFFER_SIZE = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StreamConnection(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 4, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = bitcast i32* %13 to %struct.sockaddr*
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = call i32 @accept(i32 %10, %struct.sockaddr* %14, i32* %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @PGINVALID_SOCKET, align 4
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @LOG, align 4
  %25 = call i32 (...) @errcode_for_socket_access()
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %24, i32 %26)
  %28 = call i32 @pg_usleep(i64 100000)
  %29 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %29, i32* %3, align 4
  br label %86

30:                                               ; preds = %2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 4, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = bitcast %struct.TYPE_11__* %39 to %struct.sockaddr*
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = call i64 @getsockname(i32 %36, %struct.sockaddr* %40, i32* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %30
  %47 = load i32, i32* @LOG, align 4
  %48 = call i32 (i32, i8*, ...) @elog(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %49, i32* %3, align 4
  br label %86

50:                                               ; preds = %30
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @IS_AF_UNIX(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %84, label %58

58:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SOL_SOCKET, align 4
  %63 = load i32, i32* @SO_KEEPALIVE, align 4
  %64 = bitcast i32* %6 to i8*
  %65 = call i64 @setsockopt(i32 %61, i32 %62, i32 %63, i8* %64, i32 4)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @LOG, align 4
  %69 = call i32 (i32, i8*, ...) @elog(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %86

71:                                               ; preds = %58
  %72 = load i32, i32* @tcp_keepalives_idle, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = call i32 @pq_setkeepalivesidle(i32 %72, %struct.TYPE_13__* %73)
  %75 = load i32, i32* @tcp_keepalives_interval, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = call i32 @pq_setkeepalivesinterval(i32 %75, %struct.TYPE_13__* %76)
  %78 = load i32, i32* @tcp_keepalives_count, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = call i32 @pq_setkeepalivescount(i32 %78, %struct.TYPE_13__* %79)
  %81 = load i32, i32* @tcp_user_timeout, align 4
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = call i32 @pq_settcpusertimeout(i32 %81, %struct.TYPE_13__* %82)
  br label %84

84:                                               ; preds = %71, %50
  %85 = load i32, i32* @STATUS_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %67, %46, %23
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_socket_access(...) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @IS_AF_UNIX(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @pq_setkeepalivesidle(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @pq_setkeepalivesinterval(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @pq_setkeepalivescount(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @pq_settcpusertimeout(i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
