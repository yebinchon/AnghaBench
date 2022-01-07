; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_skelserver.c_ShutdownConnection.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_skelserver.c_ShutdownConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SD_SEND = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i32] [i32 69, i32 114, i32 114, i32 111, i32 114, i32 32, i32 105, i32 110, i32 32, i32 115, i32 104, i32 117, i32 116, i32 100, i32 111, i32 119, i32 110, i32 40, i32 41, i32 0], align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@BUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i32] [i32 70, i32 89, i32 73, i32 44, i32 32, i32 114, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 37, i32 100, i32 32, i32 117, i32 110, i32 101, i32 120, i32 112, i32 101, i32 99, i32 116, i32 101, i32 100, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 32, i32 100, i32 117, i32 114, i32 105, i32 110, i32 103, i32 32, i32 115, i32 104, i32 117, i32 116, i32 100, i32 111, i32 119, i32 110, i32 0], align 4
@LOG_FILE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ShutdownConnection(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SD_SEND, align 4
  %12 = call i64 @shutdown(i32 %10, i32 %11)
  %13 = load i64, i64* @SOCKET_ERROR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 (...) @WSAGetLastError()
  %17 = load i32, i32* @LOG_ERROR, align 4
  %18 = call i32 @LogEvent(i8* bitcast ([20 x i32]* @.str to i8*), i32 %16, i32 0, i32 %17)
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %3, align 8
  br label %51

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32, i32* @BUF, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  br label %28

28:                                               ; preds = %42, %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BUF, align 4
  %31 = call i64 @recv(i32 %29, i32* %27, i32 %30, i32 0)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @swprintf(i8* %35, i8* bitcast ([50 x i32]* @.str.1 to i8*), i64 %36)
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %39 = load i32, i32* @LOG_FILE, align 4
  %40 = call i32 @LogEvent(i8* %38, i32 0, i32 0, i32 %39)
  br label %41

41:                                               ; preds = %34, %28
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %28, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @closesocket(i32 %48)
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %47, %15
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @swprintf(i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
