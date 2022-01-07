; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_err.c_grub_print_error.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_err.c_grub_print_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"error: %s.\0A\00", align 1
@grub_errmsg = common dso_local global i32 0, align 4
@grub_error_stack_assert = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"assert: error stack overflow detected!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grub_print_error() #0 {
  br label %1

1:                                                ; preds = %12, %0
  %2 = load i64, i64* @grub_errno, align 8
  %3 = load i64, i64* @GRUB_ERR_NONE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = call i32 @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = load i32, i32* @grub_errmsg, align 4
  %10 = call i32 (i8*, ...) @grub_err_printf(i8* %8, i32 %9)
  br label %11

11:                                               ; preds = %5, %1
  br label %12

12:                                               ; preds = %11
  %13 = call i64 (...) @grub_error_pop()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %1, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* @grub_error_stack_assert, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (i8*, ...) @grub_err_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @grub_error_stack_assert, align 8
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

declare dso_local i32 @grub_err_printf(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @grub_error_pop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
