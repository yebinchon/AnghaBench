; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_destroy_conn.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_destroy_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i64, i32, i32* }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@MG_F_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_socket_if_destroy_conn(%struct.mg_connection* %0) #0 {
  %2 = alloca %struct.mg_connection*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %2, align 8
  %3 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %4 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @INVALID_SOCKET, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %11 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MG_F_UDP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %18 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @closesocket(i64 %19)
  br label %32

21:                                               ; preds = %9
  %22 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %23 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %28 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @closesocket(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i64, i64* @INVALID_SOCKET, align 8
  %34 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %35 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
