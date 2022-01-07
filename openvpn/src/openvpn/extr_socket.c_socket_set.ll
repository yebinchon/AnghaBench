; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_set.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32 }
%struct.event_set = type { i32 }

@EVENT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_set(%struct.link_socket* %0, %struct.event_set* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.link_socket*, align 8
  %7 = alloca %struct.event_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.link_socket* %0, %struct.link_socket** %6, align 8
  store %struct.event_set* %1, %struct.event_set** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.link_socket*, %struct.link_socket** %6, align 8
  %12 = icmp ne %struct.link_socket* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %5
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @EVENT_READ, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load %struct.link_socket*, %struct.link_socket** %6, align 8
  %20 = call i32 @stream_buf_read_setup(%struct.link_socket* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* @EVENT_READ, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %22, %18, %13
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35, %32
  %41 = load %struct.event_set*, %struct.event_set** %7, align 8
  %42 = load %struct.link_socket*, %struct.link_socket** %6, align 8
  %43 = call i32 @socket_event_handle(%struct.link_socket* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @event_ctl(%struct.event_set* %41, i32 %43, i32 %44, i8* %45)
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %40
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.link_socket*, %struct.link_socket** %6, align 8
  %56 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %53, %5
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @stream_buf_read_setup(%struct.link_socket*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @event_ctl(%struct.event_set*, i32, i32, i8*) #1

declare dso_local i32 @socket_event_handle(%struct.link_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
