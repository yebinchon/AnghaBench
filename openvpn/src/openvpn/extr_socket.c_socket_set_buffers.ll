; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_set_buffers.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_set_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer_size = type { i64, i64 }

@D_OSBUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Socket Buffers: R=[%d->%d] S=[%d->%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.socket_buffer_size*)* @socket_set_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_set_buffers(i32 %0, %struct.socket_buffer_size* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket_buffer_size*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.socket_buffer_size* %1, %struct.socket_buffer_size** %4, align 8
  %7 = load %struct.socket_buffer_size*, %struct.socket_buffer_size** %4, align 8
  %8 = icmp ne %struct.socket_buffer_size* %7, null
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @socket_get_sndbuf(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @socket_get_rcvbuf(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.socket_buffer_size*, %struct.socket_buffer_size** %4, align 8
  %15 = getelementptr inbounds %struct.socket_buffer_size, %struct.socket_buffer_size* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.socket_buffer_size*, %struct.socket_buffer_size** %4, align 8
  %21 = getelementptr inbounds %struct.socket_buffer_size, %struct.socket_buffer_size* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @socket_set_sndbuf(i32 %19, i64 %22)
  br label %24

24:                                               ; preds = %18, %9
  %25 = load %struct.socket_buffer_size*, %struct.socket_buffer_size** %4, align 8
  %26 = getelementptr inbounds %struct.socket_buffer_size, %struct.socket_buffer_size* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.socket_buffer_size*, %struct.socket_buffer_size** %4, align 8
  %32 = getelementptr inbounds %struct.socket_buffer_size, %struct.socket_buffer_size* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @socket_set_rcvbuf(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load i32, i32* @D_OSBUF, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @socket_get_rcvbuf(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @socket_get_sndbuf(i32 %41)
  %43 = call i32 @msg(i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39, i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @socket_get_sndbuf(i32) #1

declare dso_local i32 @socket_get_rcvbuf(i32) #1

declare dso_local i32 @socket_set_sndbuf(i32, i64) #1

declare dso_local i32 @socket_set_rcvbuf(i32, i64) #1

declare dso_local i32 @msg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
