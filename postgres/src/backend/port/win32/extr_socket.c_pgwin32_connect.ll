; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_pgwin32_connect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_pgwin32_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@FD_CONNECT = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgwin32_connect(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @WSAConnect(i32 %9, %struct.sockaddr* %10, i32 %11, i32* null, i32* null, i32* null, i32* null)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

16:                                               ; preds = %3
  %17 = call i64 (...) @WSAGetLastError()
  %18 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call i32 (...) @TranslateSocketError()
  store i32 -1, i32* %4, align 4
  br label %31

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %29, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @FD_CONNECT, align 4
  %26 = load i32, i32* @INFINITE, align 4
  %27 = call i64 @pgwin32_waitforsinglesocket(i32 %24, i32 %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %23

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %20, %15
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @WSAConnect(i32, %struct.sockaddr*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @TranslateSocketError(...) #1

declare dso_local i64 @pgwin32_waitforsinglesocket(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
