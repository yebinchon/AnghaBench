; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_close.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_socket.c_link_socket_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_socket = type { i32, i32, i8*, i32, i32, i8*, i32, i32 }

@D_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TCP/UDP: Closing socket\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@M_ERRNO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"TCP/UDP: Close Socket failed\00", align 1
@SOCKET_UNDEFINED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"TCP/UDP: Close Socket (ctrl_sd) failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_socket_close(%struct.link_socket* %0) #0 {
  %2 = alloca %struct.link_socket*, align 8
  %3 = alloca i32, align 4
  store %struct.link_socket* %0, %struct.link_socket** %2, align 8
  %4 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %5 = icmp ne %struct.link_socket* %4, null
  br i1 %5, label %6, label %59

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %7 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %8 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %7, i32 0, i32 5
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @socket_defined(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %6
  %13 = load i32, i32* @D_LOW, align 4
  %14 = call i32 @msg(i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %16 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @openvpn_close_socket(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, i32* @M_WARN, align 4
  %22 = load i32, i32* @M_ERRNO, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @msg(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %12
  %26 = load i8*, i8** @SOCKET_UNDEFINED, align 8
  %27 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %28 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %25, %6
  %30 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %31 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @socket_defined(i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %37 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @openvpn_close_socket(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @M_WARN, align 4
  %43 = load i32, i32* @M_ERRNO, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @msg(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %35
  %47 = load i8*, i8** @SOCKET_UNDEFINED, align 8
  %48 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %49 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %29
  %51 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %52 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %51, i32 0, i32 1
  %53 = call i32 @stream_buf_close(i32* %52)
  %54 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %55 = getelementptr inbounds %struct.link_socket, %struct.link_socket* %54, i32 0, i32 0
  %56 = call i32 @free_buf(i32* %55)
  %57 = load %struct.link_socket*, %struct.link_socket** %2, align 8
  %58 = call i32 @free(%struct.link_socket* %57)
  br label %59

59:                                               ; preds = %50, %1
  ret void
}

declare dso_local i64 @socket_defined(i8*) #1

declare dso_local i32 @msg(i32, i8*) #1

declare dso_local i64 @openvpn_close_socket(i8*) #1

declare dso_local i32 @stream_buf_close(i32*) #1

declare dso_local i32 @free_buf(i32*) #1

declare dso_local i32 @free(%struct.link_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
