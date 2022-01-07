; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_single_step_syscall.c_check_result.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_single_step_syscall.c_check_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_EFLAGS_TF = common dso_local global i64 0, align 8
@sig_traps = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"[FAIL]\09No SIGTRAP\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"[FAIL]\09TF was cleared\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"[OK]\09Survived with TF set and %d traps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_result() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @get_eflags()
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @X86_EFLAGS_TF, align 8
  %5 = xor i64 %4, -1
  %6 = and i64 %3, %5
  %7 = call i32 @set_eflags(i64 %6)
  %8 = load i64, i64* @sig_traps, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %0
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @X86_EFLAGS_TF, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %13
  %22 = load i64, i64* @sig_traps, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  store i64 0, i64* @sig_traps, align 8
  ret void
}

declare dso_local i64 @get_eflags(...) #1

declare dso_local i32 @set_eflags(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
