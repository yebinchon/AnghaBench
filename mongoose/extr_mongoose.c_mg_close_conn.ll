; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_close_conn.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_close_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.mg_connection*)* }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@MG_F_RECV_AND_CLOSE = common dso_local global i32 0, align 4
@MG_F_CLOSE_IMMEDIATELY = common dso_local global i32 0, align 4
@MG_EV_CLOSE = common dso_local global i32 0, align 4
@MG_F_SSL_HANDSHAKE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_close_conn(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  %3 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %4 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @INVALID_SOCKET, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %10 = call i32 @mg_do_recv(%struct.mg_connection* %9)
  %11 = icmp eq i32 %10, -2
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, i32* @MG_F_RECV_AND_CLOSE, align 4
  %14 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %15 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  br label %43

18:                                               ; preds = %8, %1
  %19 = load i32, i32* @MG_F_CLOSE_IMMEDIATELY, align 4
  %20 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %21 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %25 = call i32 @mg_remove_conn(%struct.mg_connection* %24)
  %26 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %27 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32 (%struct.mg_connection*)*, i32 (%struct.mg_connection*)** %31, align 8
  %33 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %34 = call i32 %32(%struct.mg_connection* %33)
  %35 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %36 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %37 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MG_EV_CLOSE, align 4
  %40 = call i32 @mg_call(%struct.mg_connection* %35, i32* null, i32 %38, i32 %39, i32* null)
  %41 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %42 = call i32 @mg_destroy_conn(%struct.mg_connection* %41, i32 0)
  br label %43

43:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @mg_do_recv(%struct.mg_connection*) #1

declare dso_local i32 @mg_remove_conn(%struct.mg_connection*) #1

declare dso_local i32 @mg_call(%struct.mg_connection*, i32*, i32, i32, i32*) #1

declare dso_local i32 @mg_destroy_conn(%struct.mg_connection*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
