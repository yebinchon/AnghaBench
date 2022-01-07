; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/prctl/extr_disable-tsc-ctxt-sw-stress-test.c_rdtsctask.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/prctl/extr_disable-tsc-ctxt-sw-stress-test.c_rdtsctask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PR_SET_TSC = common dso_local global i32 0, align 4
@PR_TSC_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"prctl\00", align 1
@SIGSEGV = common dso_local global i32 0, align 4
@sigsegv_fail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rdtsctask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdtsctask() #0 {
  %1 = load i32, i32* @PR_SET_TSC, align 4
  %2 = load i32, i32* @PR_TSC_ENABLE, align 4
  %3 = call i64 @prctl(i32 %1, i32 %2)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @exit(i32 0) #3
  unreachable

8:                                                ; preds = %0
  %9 = load i32, i32* @SIGSEGV, align 4
  %10 = load i32, i32* @sigsegv_fail, align 4
  %11 = call i32 @signal(i32 %9, i32 %10)
  %12 = call i32 @alarm(i32 10)
  br label %13

13:                                               ; preds = %13, %8
  %14 = call i32 (...) @rdtsc()
  br label %13
}

declare dso_local i64 @prctl(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @rdtsc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
