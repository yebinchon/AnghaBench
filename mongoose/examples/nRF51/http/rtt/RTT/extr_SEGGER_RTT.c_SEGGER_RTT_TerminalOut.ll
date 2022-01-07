; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF51/http/rtt/RTT/extr_SEGGER_RTT.c_SEGGER_RTT_TerminalOut.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF51/http/rtt/RTT/extr_SEGGER_RTT.c_SEGGER_RTT_TerminalOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ActiveTerminal = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SEGGER_RTT_TerminalOut(i8 signext %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  store i8 -1, i8* %8, align 1
  %9 = load i8, i8* %4, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp slt i32 %10, 10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 48, %14
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %16, i8* %17, align 1
  br label %31

18:                                               ; preds = %2
  %19 = load i8, i8* %4, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8, i8* %4, align 1
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 10
  %26 = add nsw i32 65, %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  br label %30

29:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %59

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %12
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %33 = call i32 @SEGGER_RTT_Write(i32 0, i8* %32, i32 2)
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @SEGGER_RTT_WriteString(i32 0, i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* @_ActiveTerminal, align 4
  %41 = add nsw i32 48, %40
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  br label %55

44:                                               ; preds = %31
  %45 = load i8, i8* %4, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* @_ActiveTerminal, align 4
  %50 = sub nsw i32 %49, 10
  %51 = add nsw i32 65, %50
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  br label %54

54:                                               ; preds = %48, %44
  br label %55

55:                                               ; preds = %54, %39
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %57 = call i32 @SEGGER_RTT_Write(i32 0, i8* %56, i32 2)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @SEGGER_RTT_Write(i32, i8*, i32) #1

declare dso_local i32 @SEGGER_RTT_WriteString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
