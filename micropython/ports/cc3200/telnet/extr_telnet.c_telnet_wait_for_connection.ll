; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_wait_for_connection.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/telnet/extr_telnet.c_telnet_wait_for_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, %struct.TYPE_3__, i32, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@telnet_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SL_EAGAIN = common dso_local global i64 0, align 8
@E_TELNET_STE_CONNECTED = common dso_local global i32 0, align 4
@E_TELNET_STE_SUB_WELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @telnet_wait_for_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @telnet_wait_for_connection() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 9), align 8
  %4 = call i64 @sl_Accept(i32 %3, i32* %2, i32* %1)
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 0), align 8
  %6 = load i64, i64* @SL_EAGAIN, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %20

9:                                                ; preds = %0
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 0), align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (...) @telnet_reset()
  br label %20

14:                                               ; preds = %9
  %15 = call i32 @servers_close_socket(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 9))
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 0), align 8
  %17 = call i32 @modusocket_socket_add(i64 %16, i32 0)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 8), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 7), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 6), align 8
  %18 = load i32, i32* @E_TELNET_STE_CONNECTED, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 5), align 4
  %19 = load i32, i32* @E_TELNET_STE_SUB_WELCOME, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 4, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @telnet_data, i32 0, i32 2), align 8
  br label %20

20:                                               ; preds = %8, %12, %14
  ret void
}

declare dso_local i64 @sl_Accept(i32, i32*, i32*) #1

declare dso_local i32 @telnet_reset(...) #1

declare dso_local i32 @servers_close_socket(i32*) #1

declare dso_local i32 @modusocket_socket_add(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
