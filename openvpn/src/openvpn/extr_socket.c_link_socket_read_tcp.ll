; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_read_tcp.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_read_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.buffer = type { i32 }

@MSG_NOSIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @link_socket_read_tcp(%struct.link_socket* %0, %struct.buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_socket*, align 8
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer, align 4
  store %struct.link_socket* %0, %struct.link_socket** %4, align 8
  store %struct.buffer* %1, %struct.buffer** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %9 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %2
  %14 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %15 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %14, i32 0, i32 1
  %16 = call i32 @stream_buf_get_next(%struct.TYPE_5__* %15, %struct.buffer* %7)
  %17 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %18 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @BPTR(%struct.buffer* %7)
  %21 = call i32 @BLEN(%struct.buffer* %7)
  %22 = load i32, i32* @MSG_NOSIGNAL, align 4
  %23 = call i32 @recv(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %13
  %27 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %28 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %13
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.buffer*, %struct.buffer** %5, align 8
  %35 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 %33, i32* %3, align 4
  br label %63

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %39 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %45 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %44, i32 0, i32 1
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @stream_buf_added(%struct.TYPE_5__* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43, %37
  %50 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %51 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %50, i32 0, i32 1
  %52 = load %struct.buffer*, %struct.buffer** %5, align 8
  %53 = call i32 @stream_buf_get_final(%struct.TYPE_5__* %51, %struct.buffer* %52)
  %54 = load %struct.link_socket*, %struct.link_socket** %4, align 8
  %55 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %54, i32 0, i32 1
  %56 = call i32 @stream_buf_reset(%struct.TYPE_5__* %55)
  %57 = load %struct.buffer*, %struct.buffer** %5, align 8
  %58 = getelementptr inbounds %struct.buffer, %struct.buffer* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %43
  %61 = load %struct.buffer*, %struct.buffer** %5, align 8
  %62 = getelementptr inbounds %struct.buffer, %struct.buffer* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %49, %32
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @stream_buf_get_next(%struct.TYPE_5__*, %struct.buffer*) #1

declare dso_local i32 @recv(i32, i32, i32, i32) #1

declare dso_local i32 @BPTR(%struct.buffer*) #1

declare dso_local i32 @BLEN(%struct.buffer*) #1

declare dso_local i64 @stream_buf_added(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @stream_buf_get_final(%struct.TYPE_5__*, %struct.buffer*) #1

declare dso_local i32 @stream_buf_reset(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
