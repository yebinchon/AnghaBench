; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_threadproc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_threadproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ftx = common dso_local global i32 0, align 4
@SYS_futex = common dso_local global i32 0, align 4
@FUTEX_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"helper thread got bad command\00", align 1
@FUTEX_WAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @threadproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @threadproc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %1, %28
  br label %4

4:                                                ; preds = %7, %3
  %5 = load i32, i32* @ftx, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @SYS_futex, align 4
  %9 = load i32, i32* @FUTEX_WAIT, align 4
  %10 = call i32 @syscall(i32 %8, i32* @ftx, i32 %9, i32 0, i32* null, i32* null, i32 0)
  br label %4

11:                                               ; preds = %4
  %12 = load i32, i32* @ftx, align 4
  %13 = icmp eq i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  ret i8* null

15:                                               ; preds = %11
  %16 = load i32, i32* @ftx, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @do_remote_base()
  br label %28

20:                                               ; preds = %15
  %21 = load i32, i32* @ftx, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @load_gs()
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 0) #2, !srcloc !2
  br label %27

25:                                               ; preds = %20
  %26 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %18
  store i32 0, i32* @ftx, align 4
  %29 = load i32, i32* @SYS_futex, align 4
  %30 = load i32, i32* @FUTEX_WAKE, align 4
  %31 = call i32 @syscall(i32 %29, i32* @ftx, i32 %30, i32 0, i32* null, i32* null, i32 0)
  br label %3
}

declare dso_local i32 @syscall(i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @do_remote_base(...) #1

declare dso_local i32 @load_gs(...) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 620}
