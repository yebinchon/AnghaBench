; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_udp_recv.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_socket_if_udp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%union.socket_address = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mg_connection*, i8*, i64, %union.socket_address*, i64*)* @mg_socket_if_udp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mg_socket_if_udp_recv(%struct.mg_connection* %0, i8* %1, i64 %2, %union.socket_address* %3, i64* %4) #0 {
  %6 = alloca %struct.mg_connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.socket_address*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mg_connection* %0, %struct.mg_connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %union.socket_address* %3, %union.socket_address** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load i64*, i64** %10, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  %16 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %union.socket_address*, %union.socket_address** %9, align 8
  %21 = bitcast %union.socket_address* %20 to i32*
  %22 = call i32 @recvfrom(i32 %17, i8* %18, i64 %19, i32 0, i32* %21, i64* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i64, i64* %11, align 8
  %24 = load i64*, i64** %10, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = call i32 (...) @mg_is_error()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %30, %27, %5
  %32 = load i32, i32* %12, align 4
  ret i32 %32
}

declare dso_local i32 @recvfrom(i32, i8*, i64, i32, i32*, i64*) #1

declare dso_local i32 @mg_is_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
