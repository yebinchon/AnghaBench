; ModuleID = '/home/carl/AnghaBench/mongoose/examples/nRF51/http/rtt/RTT/extr_SEGGER_RTT.c_SEGGER_RTT_SetTerminal.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/nRF51/http/rtt/RTT/extr_SEGGER_RTT.c_SEGGER_RTT_SetTerminal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ActiveTerminal = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SEGGER_RTT_SetTerminal(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca [2 x i8], align 1
  store i8 %0, i8* %2, align 1
  %4 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 -1, i8* %4, align 1
  %5 = load i8, i8* %2, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i8, i8* %2, align 1
  %10 = sext i8 %9 to i32
  %11 = add nsw i32 48, %10
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 %12, i8* %13, align 1
  br label %27

14:                                               ; preds = %1
  %15 = load i8, i8* %2, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp slt i32 %16, 16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i8, i8* %2, align 1
  %20 = sext i8 %19 to i32
  %21 = sub nsw i32 %20, 10
  %22 = add nsw i32 65, %21
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 1
  store i8 %23, i8* %24, align 1
  br label %26

25:                                               ; preds = %14
  br label %31

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %8
  %28 = load i8, i8* %2, align 1
  store i8 %28, i8* @_ActiveTerminal, align 1
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %30 = call i32 @SEGGER_RTT_Write(i32 0, i8* %29, i32 2)
  br label %31

31:                                               ; preds = %27, %25
  ret void
}

declare dso_local i32 @SEGGER_RTT_Write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
