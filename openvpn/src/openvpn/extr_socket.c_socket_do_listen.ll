; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_do_listen.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_socket_do_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }
%struct.gc_arena = type { i32 }

@M_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Listening for incoming TCP connection on %s\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"TCP: listen() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.addrinfo*, i32, i32)* @socket_do_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @socket_do_listen(i32 %0, %struct.addrinfo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gc_arena, align 4
  store i32 %0, i32* %5, align 4
  store %struct.addrinfo* %1, %struct.addrinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @gc_new()
  %11 = getelementptr inbounds %struct.gc_arena, %struct.gc_arena* %9, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %4
  %15 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %16 = call i32 @ASSERT(%struct.addrinfo* %15)
  %17 = load i32, i32* @M_INFO, align 4
  %18 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @print_sockaddr(i32 %20, %struct.gc_arena* %9)
  %22 = call i32 (i32, i8*, ...) @msg(i32 %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @listen(i32 %23, i32 32)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @M_ERR, align 4
  %28 = call i32 (i32, i8*, ...) @msg(i32 %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %14
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @set_nonblock(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = call i32 @gc_free(%struct.gc_arena* %9)
  ret void
}

declare dso_local i32 @gc_new(...) #1

declare dso_local i32 @ASSERT(%struct.addrinfo*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @print_sockaddr(i32, %struct.gc_arena*) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @set_nonblock(i32) #1

declare dso_local i32 @gc_free(%struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
