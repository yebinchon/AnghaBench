; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_os_unix.c_exit_scroll.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_os_unix.c_exit_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@silent_mode = common dso_local global i64 0, align 8
@newline_on_exit = common dso_local global i64 0, align 8
@msg_didout = common dso_local global i64 0, align 8
@info_message = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@Rows = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @exit_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exit_scroll() #0 {
  %1 = load i64, i64* @silent_mode, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %31

4:                                                ; preds = %0
  %5 = load i64, i64* @newline_on_exit, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @msg_didout, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7, %4
  %11 = call i64 (...) @msg_use_printf()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load i64, i64* @info_message, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 @mch_msg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %20

18:                                               ; preds = %13
  %19 = call i32 @mch_errmsg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %16
  br label %23

21:                                               ; preds = %10
  %22 = call i32 @out_char(i8 signext 10)
  br label %23

23:                                               ; preds = %21, %20
  br label %31

24:                                               ; preds = %7
  %25 = call i32 (...) @restore_cterm_colors()
  %26 = call i32 (...) @msg_clr_eos_force()
  %27 = load i64, i64* @Rows, align 8
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @windgoto(i32 %29, i32 0)
  br label %31

31:                                               ; preds = %3, %24, %23
  ret void
}

declare dso_local i64 @msg_use_printf(...) #1

declare dso_local i32 @mch_msg(i8*) #1

declare dso_local i32 @mch_errmsg(i8*) #1

declare dso_local i32 @out_char(i8 signext) #1

declare dso_local i32 @restore_cterm_colors(...) #1

declare dso_local i32 @msg_clr_eos_force(...) #1

declare dso_local i32 @windgoto(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
