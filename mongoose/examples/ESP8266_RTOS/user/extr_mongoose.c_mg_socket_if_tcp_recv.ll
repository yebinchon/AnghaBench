; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_tcp_recv.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_tcp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32 }

@MG_F_SEND_AND_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*, i8*, i64)* @mg_socket_if_tcp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_socket_if_tcp_recv(%struct.mg_connection* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %9 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @MG_RECV_FUNC(i32 %10, i8* %11, i64 %12, i32 0)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @MG_F_SEND_AND_CLOSE, align 4
  %19 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %20 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 (...) @mg_is_error()
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26, %23
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i64 @MG_RECV_FUNC(i32, i8*, i64, i32) #1

declare dso_local i32 @mg_is_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
