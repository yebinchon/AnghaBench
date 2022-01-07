; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_skelserver.c_SetUpListener.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_skelserver.c_SetUpListener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@SOMAXCONN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i32] [i32 108, i32 105, i32 115, i32 116, i32 101, i32 110, i32 40, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 0], align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i32] [i32 98, i32 105, i32 110, i32 100, i32 40, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 0], align 4
@.str.2 = private unnamed_addr constant [16 x i32] [i32 115, i32 111, i32 99, i32 107, i32 101, i32 116, i32 40, i32 41, i32 32, i32 102, i32 97, i32 105, i32 108, i32 101, i32 100, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @SetUpListener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SetUpListener(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* %5, align 8
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_STREAM, align 4
  %9 = call i64 @socket(i32 %7, i32 %8, i32 0)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @INVALID_SOCKET, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = call i32 @ZeroMemory(%struct.TYPE_5__* %4, i32 12)
  %15 = load i32, i32* @AF_INET, align 4
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @INADDR_ANY, align 4
  %18 = call i32 @htonl(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* %3, align 8
  %24 = bitcast %struct.TYPE_5__* %4 to i32*
  %25 = call i64 @bind(i64 %23, i32* %24, i32 12)
  %26 = load i64, i64* @SOCKET_ERROR, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %13
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* @SOMAXCONN, align 4
  %31 = call i64 @listen(i64 %29, i32 %30)
  %32 = load i64, i64* @SOCKET_ERROR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @TRUE, align 8
  store i64 %35, i64* %5, align 8
  br label %40

36:                                               ; preds = %28
  %37 = call i32 (...) @WSAGetLastError()
  %38 = load i32, i32* @LOG_ERROR, align 4
  %39 = call i32 @LogEvent(i8* bitcast ([16 x i32]* @.str to i8*), i32 %37, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %36, %34
  br label %45

41:                                               ; preds = %13
  %42 = call i32 (...) @WSAGetLastError()
  %43 = load i32, i32* @LOG_ERROR, align 4
  %44 = call i32 @LogEvent(i8* bitcast ([14 x i32]* @.str.1 to i8*), i32 %42, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %41, %40
  br label %50

46:                                               ; preds = %1
  %47 = call i32 (...) @WSAGetLastError()
  %48 = load i32, i32* @LOG_ERROR, align 4
  %49 = call i32 @LogEvent(i8* bitcast ([16 x i32]* @.str.2 to i8*), i32 %47, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i64, i64* %3, align 8
  br label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @INVALID_SOCKET, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  ret i64 %58
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @ZeroMemory(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @bind(i64, i32*, i32) #1

declare dso_local i64 @listen(i64, i32) #1

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
