; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_closePGconn.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_closePGconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@CONNECTION_BAD = common dso_local global i32 0, align 4
@PGASYNC_IDLE = common dso_local global i32 0, align 4
@PQTRANS_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @closePGconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closePGconn(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @sendTerminateConn(%struct.TYPE_8__* %3)
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32 @pqDropConnection(%struct.TYPE_8__* %7, i32 1)
  %9 = load i32, i32* @CONNECTION_BAD, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @PGASYNC_IDLE, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @PQTRANS_IDLE, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = call i32 @pqClearAsyncResult(%struct.TYPE_8__* %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = call i32 @resetPQExpBuffer(i32* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = call i32 @release_conn_addrinfo(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = call i32 @pqDropServerData(%struct.TYPE_8__* %25)
  ret void
}

declare dso_local i32 @sendTerminateConn(%struct.TYPE_8__*) #1

declare dso_local i32 @pqDropConnection(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @pqClearAsyncResult(%struct.TYPE_8__*) #1

declare dso_local i32 @resetPQExpBuffer(i32*) #1

declare dso_local i32 @release_conn_addrinfo(%struct.TYPE_8__*) #1

declare dso_local i32 @pqDropServerData(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
