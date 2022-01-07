; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_test_unexpected_base.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_test_unexpected_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [78 x i8] c"[RUN]\09ARCH_SET_GS(0), clear gs, then manipulate GSBASE in a different thread\0A\00", align 1
@SYS_arch_prctl = common dso_local global i32 0, align 4
@ARCH_SET_GS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ARCH_SET_GS\00", align 1
@ftx = common dso_local global i32 0, align 4
@SYS_futex = common dso_local global i32 0, align 4
@FUTEX_WAKE = common dso_local global i32 0, align 4
@FUTEX_WAIT = common dso_local global i32 0, align 4
@GS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"[OK]\09GSBASE remained 0\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"[FAIL]\09GSBASE changed to 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_unexpected_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unexpected_base() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @SYS_arch_prctl, align 4
  %4 = load i32, i32* @ARCH_SET_GS, align 4
  %5 = sext i32 %4 to i64
  %6 = inttoptr i64 %5 to i32*
  %7 = call i64 (i32, i32*, i32, ...) @syscall(i32 %3, i32* %6, i32 0)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 0) #2, !srcloc !2
  store i32 2, i32* @ftx, align 4
  %12 = load i32, i32* @SYS_futex, align 4
  %13 = load i32, i32* @FUTEX_WAKE, align 4
  %14 = call i64 (i32, i32*, i32, ...) @syscall(i32 %12, i32* @ftx, i32 %13, i32 0, i8* null, i8* null, i32 0)
  br label %15

15:                                               ; preds = %18, %11
  %16 = load i32, i32* @ftx, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* @SYS_futex, align 4
  %20 = load i32, i32* @FUTEX_WAIT, align 4
  %21 = call i64 (i32, i32*, i32, ...) @syscall(i32 %19, i32* @ftx, i32 %20, i32 1, i8* null, i8* null, i32 0)
  br label %15

22:                                               ; preds = %15
  %23 = load i32, i32* @GS, align 4
  %24 = call i64 @read_base(i32 %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @nerrs, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @nerrs, align 4
  %32 = load i64, i64* %1, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %29, %27
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @syscall(i32, i32*, i32, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @read_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 656}
