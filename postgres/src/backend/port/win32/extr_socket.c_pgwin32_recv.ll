; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_pgwin32_recv.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/win32/extr_socket.c_pgwin32_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@SOCKET_ERROR = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8
@pgwin32_noblock = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FD_READ = common dso_local global i32 0, align 4
@FD_CLOSE = common dso_local global i32 0, align 4
@FD_ACCEPT = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"could not read from ready socket (after retries)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgwin32_recv(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %13, align 4
  %16 = call i64 (...) @pgwin32_poll_signals()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %81

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @WSARecv(i32 %24, %struct.TYPE_3__* %10, i32 1, i32* %12, i32* %13, i32* null, i32* null)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @SOCKET_ERROR, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %81

31:                                               ; preds = %19
  %32 = call i64 (...) @WSAGetLastError()
  %33 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @TranslateSocketError()
  store i32 -1, i32* %5, align 4
  br label %81

37:                                               ; preds = %31
  %38 = load i64, i64* @pgwin32_noblock, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %81

42:                                               ; preds = %37
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 5
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @FD_READ, align 4
  %49 = load i32, i32* @FD_CLOSE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FD_ACCEPT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @INFINITE, align 4
  %54 = call i64 @pgwin32_waitforsinglesocket(i32 %47, i32 %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %81

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @WSARecv(i32 %58, %struct.TYPE_3__* %10, i32 1, i32* %12, i32* %13, i32* null, i32* null)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @SOCKET_ERROR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %81

65:                                               ; preds = %57
  %66 = call i64 (...) @WSAGetLastError()
  %67 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = call i32 (...) @TranslateSocketError()
  store i32 -1, i32* %5, align 4
  br label %81

71:                                               ; preds = %65
  %72 = call i32 @pg_usleep(i32 10000)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %43

76:                                               ; preds = %43
  %77 = load i32, i32* @NOTICE, align 4
  %78 = call i32 @errmsg_internal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 @ereport(i32 %77, i32 %78)
  %80 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %80, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %69, %63, %56, %40, %35, %29, %18
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i64 @pgwin32_poll_signals(...) #1

declare dso_local i32 @WSARecv(i32, %struct.TYPE_3__*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @TranslateSocketError(...) #1

declare dso_local i64 @pgwin32_waitforsinglesocket(i32, i32, i32) #1

declare dso_local i32 @pg_usleep(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
