; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmdinput.c_ClearCommandLine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_cmdinput.c_ClearCommandLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32)* @ClearCommandLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClearCommandLine(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @SetCursorXY(i32 %11, i32 %12)
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %22, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @_tcslen(i32 %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = call i32 @_T(i8 signext 32)
  %21 = call i32 @ConOutChar(i32 %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %10, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %10, align 8
  br label %14

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @_T(i8 signext 0)
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @_tcsnset(i32 %26, i32 %27, i64 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @SetCursorXY(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @SetCursorXY(i32, i32) #1

declare dso_local i64 @_tcslen(i32) #1

declare dso_local i32 @ConOutChar(i32) #1

declare dso_local i32 @_T(i8 signext) #1

declare dso_local i32 @_tcsnset(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
