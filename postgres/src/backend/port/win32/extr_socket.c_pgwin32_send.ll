; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_pgwin32_send.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_pgwin32_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@SOCKET_ERROR = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@pgwin32_noblock = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FD_WRITE = common dso_local global i32 0, align 4
@FD_CLOSE = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgwin32_send(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i64 (...) @pgwin32_poll_signals()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %59

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  br label %21

21:                                               ; preds = %58, %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @WSASend(i32 %22, %struct.TYPE_3__* %10, i32 1, i64* %12, i32 %23, i32* null, i32* null)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SOCKET_ERROR, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i64, i64* %12, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* %12, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %59

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SOCKET_ERROR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = call i64 (...) @WSAGetLastError()
  %40 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @TranslateSocketError()
  store i32 -1, i32* %5, align 4
  br label %59

44:                                               ; preds = %38, %34
  %45 = load i64, i64* @pgwin32_noblock, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %59

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @FD_WRITE, align 4
  %52 = load i32, i32* @FD_CLOSE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @INFINITE, align 4
  %55 = call i64 @pgwin32_waitforsinglesocket(i32 %50, i32 %53, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 -1, i32* %5, align 4
  br label %59

58:                                               ; preds = %49
  br label %21

59:                                               ; preds = %57, %47, %42, %31, %15
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @pgwin32_poll_signals(...) #1

declare dso_local i32 @WSASend(i32, %struct.TYPE_3__*, i32, i64*, i32, i32*, i32*) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @TranslateSocketError(...) #1

declare dso_local i64 @pgwin32_waitforsinglesocket(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
