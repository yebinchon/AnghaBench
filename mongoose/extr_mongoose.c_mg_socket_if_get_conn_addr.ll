; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_get_conn_addr.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_socket_if_get_conn_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32, i32, i32 }
%union.socket_address = type { i32 }

@MG_F_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mg_socket_if_get_conn_addr(%struct.mg_connection* %0, i32 %1, %union.socket_address* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.socket_address*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.socket_address* %2, %union.socket_address** %6, align 8
  %7 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %8 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MG_F_UDP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %union.socket_address*, %union.socket_address** %6, align 8
  %18 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %19 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %18, i32 0, i32 2
  %20 = call i32 @memcpy(%union.socket_address* %17, i32* %19, i32 4)
  br label %28

21:                                               ; preds = %13, %3
  %22 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %23 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %union.socket_address*, %union.socket_address** %6, align 8
  %27 = call i32 @mg_sock_get_addr(i32 %24, i32 %25, %union.socket_address* %26)
  br label %28

28:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @memcpy(%union.socket_address*, i32*, i32) #1

declare dso_local i32 @mg_sock_get_addr(i32, i32, %union.socket_address*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
