; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/fdebug/extr_rs232.c_Rs232ConfigurePortWin32.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/fdebug/extr_rs232.c_Rs232ConfigurePortWin32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"BuildCommDCB() failed. GetLastError() = %lu.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@hPortHandle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"SetCommState() failed. GetLastError() = %lu.\0A\00", align 1
@MAXDWORD = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Rs232ConfigurePortWin32(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = call i32 @memset(%struct.TYPE_5__* %4, i32 0, i32 4)
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32 4, i32* %7, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @BuildCommDCB(i32* %8, %struct.TYPE_5__* %4)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @GetLastError()
  store i32 %12, i32* %5, align 4
  %13 = call i32 @TEXT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @_tprintf(i32 %13, i32 %14)
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load i32, i32* @hPortHandle, align 4
  %19 = call i32 @SetCommState(i32 %18, %struct.TYPE_5__* %4)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @GetLastError()
  store i32 %22, i32* %5, align 4
  %23 = call i32 @TEXT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @_tprintf(i32 %23, i32 %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %17
  %28 = load i32, i32* @MAXDWORD, align 4
  %29 = call i32 @Rs232SetCommunicationTimeoutsWin32(i32 %28, i32 0, i32 0, i32 0, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @TRUE, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %21, %11
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @BuildCommDCB(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @_tprintf(i32, i32) #1

declare dso_local i32 @TEXT(i8*) #1

declare dso_local i32 @SetCommState(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @Rs232SetCommunicationTimeoutsWin32(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
