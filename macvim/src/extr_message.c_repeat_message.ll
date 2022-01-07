; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_message.c_repeat_message.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_message.c_repeat_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@State = common dso_local global i64 0, align 8
@ASKMORE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@msg_row = common dso_local global i32 0, align 4
@EXTERNCMD = common dso_local global i64 0, align 8
@msg_col = common dso_local global i64 0, align 8
@HITRETURN = common dso_local global i64 0, align 8
@SETWSIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@msg_didout = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repeat_message() #0 {
  %1 = load i64, i64* @State, align 8
  %2 = load i64, i64* @ASKMORE, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @TRUE, align 4
  %6 = call i32 @msg_moremsg(i32 %5)
  %7 = load i32, i32* @Rows, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* @msg_row, align 4
  br label %39

9:                                                ; preds = %0
  %10 = load i64, i64* @State, align 8
  %11 = load i64, i64* @EXTERNCMD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @msg_row, align 4
  %15 = load i64, i64* @msg_col, align 8
  %16 = call i32 @windgoto(i32 %14, i64 %15)
  br label %38

17:                                               ; preds = %9
  %18 = load i64, i64* @State, align 8
  %19 = load i64, i64* @HITRETURN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @State, align 8
  %23 = load i64, i64* @SETWSIZE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @msg_row, align 4
  %27 = load i32, i32* @Rows, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* @msg_didout, align 4
  store i64 0, i64* @msg_col, align 8
  %32 = call i32 (...) @msg_clr_eos()
  br label %33

33:                                               ; preds = %30, %25
  %34 = call i32 (...) @hit_return_msg()
  %35 = load i32, i32* @Rows, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* @msg_row, align 4
  br label %37

37:                                               ; preds = %33, %21
  br label %38

38:                                               ; preds = %37, %13
  br label %39

39:                                               ; preds = %38, %4
  ret void
}

declare dso_local i32 @msg_moremsg(i32) #1

declare dso_local i32 @windgoto(i32, i64) #1

declare dso_local i32 @msg_clr_eos(...) #1

declare dso_local i32 @hit_return_msg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
