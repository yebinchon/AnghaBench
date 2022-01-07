; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_redrawcmdprompt.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_ex_getln.c_redrawcmdprompt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32* }

@cmd_silent = common dso_local global i64 0, align 8
@ccline = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NUL = common dso_local global i64 0, align 8
@msg_col = common dso_local global i32 0, align 4
@msg_row = common dso_local global i32 0, align 4
@cmdline_row = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @redrawcmdprompt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrawcmdprompt() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @cmd_silent, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %45

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 8
  %7 = load i64, i64* @NUL, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 8
  %11 = trunc i64 %10 to i8
  %12 = call i32 @msg_putchar(i8 signext %11)
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 3), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 3), align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 2), align 4
  %19 = call i32 @msg_puts_attr(i32* %17, i32 %18)
  %20 = load i32, i32* @msg_col, align 4
  %21 = load i32, i32* @msg_row, align 4
  %22 = load i32, i32* @cmdline_row, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* @Columns, align 4
  %25 = mul nsw i32 %23, %24
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 0), align 8
  %28 = load i64, i64* @NUL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 8
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 8
  br label %33

33:                                               ; preds = %30, %16
  br label %45

34:                                               ; preds = %13
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ccline, i32 0, i32 1), align 8
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %41, %34
  %37 = load i32, i32* %1, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = call i32 @msg_putchar(i8 signext 32)
  br label %41

41:                                               ; preds = %39
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %1, align 4
  br label %36

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %4, %44, %33
  ret void
}

declare dso_local i32 @msg_putchar(i8 signext) #1

declare dso_local i32 @msg_puts_attr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
