; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_tcp_write_complete.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF51/http/extr_bleconfig.c_tcp_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_pcb = type opaque

@TCP_STATE_CONNECTED = common dso_local global i32 0, align 4
@m_tcp_state = common dso_local global i32 0, align 4
@mp_tcp_port = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tcp_pcb*, i64)* @tcp_write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_write_complete(i8* %0, %struct.tcp_pcb* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tcp_pcb*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.tcp_pcb* %1, %struct.tcp_pcb** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @UNUSED_PARAMETER(i8* %7)
  %9 = load %struct.tcp_pcb*, %struct.tcp_pcb** %5, align 8
  %10 = bitcast %struct.tcp_pcb* %9 to i8*
  %11 = call i32 @UNUSED_PARAMETER(i8* %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @TCP_STATE_CONNECTED, align 4
  store i32 %15, i32* @m_tcp_state, align 4
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @mp_tcp_port, align 4
  %18 = call i32 @tcp_port_close(i32 %17)
  br label %19

19:                                               ; preds = %16, %14
  %20 = load i32, i32* @ERR_OK, align 4
  ret i32 %20
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

declare dso_local i32 @tcp_port_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
