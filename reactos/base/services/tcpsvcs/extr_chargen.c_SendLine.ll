; ModuleID = '/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_chargen.c_SendLine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/tcpsvcs/extr_chargen.c_SendLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LINESIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i32] [i32 67, i32 104, i32 97, i32 114, i32 103, i32 101, i32 110, i32 58, i32 32, i32 78, i32 111, i32 116, i32 32, i32 115, i32 101, i32 110, i32 116, i32 32, i32 101, i32 110, i32 111, i32 117, i32 103, i32 104, i32 32, i32 98, i32 121, i32 116, i32 101, i32 115, i32 0], align 4
@LOG_FILE = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i32] [i32 67, i32 104, i32 97, i32 114, i32 103, i32 101, i32 110, i32 58, i32 32, i32 83, i32 111, i32 99, i32 107, i32 101, i32 116, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 10, i32 0], align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i32] [i32 67, i32 104, i32 97, i32 114, i32 103, i32 101, i32 110, i32 58, i32 32, i32 117, i32 110, i32 107, i32 110, i32 111, i32 119, i32 110, i32 32, i32 101, i32 114, i32 114, i32 111, i32 114, i32 10, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @SendLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SendLine(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i64, i64* @LINESIZE, align 8
  %11 = call i64 @send(i32 %8, i32 %9, i64 %10, i32 0)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @LINESIZE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %5, align 4
  br label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @LOG_FILE, align 4
  %22 = call i32 @LogEvent(i8* bitcast ([31 x i32]* @.str to i8*), i32 0, i32 0, i32 %21)
  br label %23

23:                                               ; preds = %20, %18
  br label %37

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SOCKET_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 (...) @WSAGetLastError()
  %30 = load i32, i32* @LOG_ERROR, align 4
  %31 = call i32 @LogEvent(i8* bitcast ([23 x i32]* @.str.1 to i8*), i32 %29, i32 0, i32 %30)
  br label %36

32:                                               ; preds = %24
  %33 = call i32 (...) @WSAGetLastError()
  %34 = load i32, i32* @LOG_ERROR, align 4
  %35 = call i32 @LogEvent(i8* bitcast ([24 x i32]* @.str.2 to i8*), i32 %33, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @send(i32, i32, i64, i32) #1

declare dso_local i32 @LogEvent(i8*, i32, i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
