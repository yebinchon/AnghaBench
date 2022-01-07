; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_verify_incoming_addr.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.h_link_socket_verify_incoming_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64 }
%struct.link_socket_info = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.link_socket_actual = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer*, %struct.link_socket_info*, %struct.link_socket_actual*)* @link_socket_verify_incoming_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_socket_verify_incoming_addr(%struct.buffer* %0, %struct.link_socket_info* %1, %struct.link_socket_actual* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer*, align 8
  %6 = alloca %struct.link_socket_info*, align 8
  %7 = alloca %struct.link_socket_actual*, align 8
  store %struct.buffer* %0, %struct.buffer** %5, align 8
  store %struct.link_socket_info* %1, %struct.link_socket_info** %6, align 8
  store %struct.link_socket_actual* %2, %struct.link_socket_actual** %7, align 8
  %8 = load %struct.buffer*, %struct.buffer** %5, align 8
  %9 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %3
  %13 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %14 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %52 [
    i32 128, label %19
    i32 129, label %19
  ]

19:                                               ; preds = %12, %12
  %20 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %21 = call i32 @link_socket_actual_defined(%struct.link_socket_actual* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %54

24:                                               ; preds = %19
  %25 = load %struct.link_socket_info*, %struct.link_socket_info** %6, align 8
  %26 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.link_socket_info*, %struct.link_socket_info** %6, align 8
  %31 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %24
  store i32 1, i32* %4, align 4
  br label %54

37:                                               ; preds = %29
  %38 = load %struct.link_socket_actual*, %struct.link_socket_actual** %7, align 8
  %39 = getelementptr inbounds %struct.link_socket_actual, %struct.link_socket_actual* %38, i32 0, i32 0
  %40 = load %struct.link_socket_info*, %struct.link_socket_info** %6, align 8
  %41 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.link_socket_info*, %struct.link_socket_info** %6, align 8
  %46 = getelementptr inbounds %struct.link_socket_info, %struct.link_socket_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @addrlist_match_proto(%struct.TYPE_8__* %39, i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %54

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %51, %12
  br label %53

53:                                               ; preds = %52, %3
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50, %36, %23
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @link_socket_actual_defined(%struct.link_socket_actual*) #1

declare dso_local i32 @addrlist_match_proto(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
