; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_discard.c_ReceiveIncomingPackets.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_discard.c_ReceiveIncomingPackets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i32] [i32 68, i32 105, i32 115, i32 99, i32 97, i32 114, i32 100, i32 58, i32 32, i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 37, i32 100, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 32, i32 102, i32 114, i32 111, i32 109, i32 32, i32 99, i32 108, i32 105, i32 101, i32 110, i32 116, i32 0], align 4
@LOG_FILE = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i32] [i32 68, i32 105, i32 115, i32 99, i32 97, i32 114, i32 100, i32 58, i32 32, i32 83, i32 111, i32 99, i32 107, i32 101, i32 116, i32 32, i32 69, i32 114, i32 114, i32 111, i32 114, i32 0], align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bShutdown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i32] [i32 68, i32 105, i32 115, i32 99, i32 97, i32 114, i32 100, i32 58, i32 32, i32 67, i32 111, i32 110, i32 110, i32 101, i32 99, i32 116, i32 105, i32 111, i32 110, i32 32, i32 99, i32 108, i32 111, i32 115, i32 101, i32 100, i32 32, i32 98, i32 121, i32 32, i32 112, i32 101, i32 101, i32 114, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ReceiveIncomingPackets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReceiveIncomingPackets(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @BUFSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  br label %13

13:                                               ; preds = %44, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @BUFSIZE, align 4
  %16 = call i64 @recv(i32 %14, i32* %12, i32 %15, i32 0)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @swprintf(i8* %20, i8* bitcast ([39 x i32]* @.str to i8*), i64 %21)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %24 = load i32, i32* @LOG_FILE, align 4
  %25 = call i32 @LogEvent(i8* %23, i32 0, i32 0, i32 %24)
  br label %36

26:                                               ; preds = %13
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @SOCKET_ERROR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = call i32 (...) @WSAGetLastError()
  %32 = load i32, i32* @LOG_ERROR, align 4
  %33 = call i32 @LogEvent(i8* bitcast ([22 x i32]* @.str.1 to i8*), i32 %31, i32 0, i32 %32)
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %54

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %19
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @bShutdown, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %40, %37
  %45 = phi i1 [ false, %37 ], [ %43, %40 ]
  br i1 %45, label %13, label %46

46:                                               ; preds = %44
  %47 = load i32, i32* @bShutdown, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @LOG_FILE, align 4
  %51 = call i32 @LogEvent(i8* bitcast ([35 x i32]* @.str.2 to i8*), i32 0, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %30
  %55 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @recv(i32, i32*, i32, i32) #2

declare dso_local i32 @swprintf(i8*, i8*, i64) #2

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #2

declare dso_local i32 @WSAGetLastError(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
