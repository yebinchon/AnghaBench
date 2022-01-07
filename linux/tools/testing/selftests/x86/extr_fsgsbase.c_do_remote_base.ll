; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_do_remote_base.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_do_remote_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_base = common dso_local global i64 0, align 8
@HARD_ZERO = common dso_local global i64 0, align 8
@SYS_arch_prctl = common dso_local global i32 0, align 4
@ARCH_SET_GS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ARCH_SET_GS\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\09other thread: ARCH_SET_GS(0x%lx)%s -- sel is 0x%hx\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" and clear gs\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_remote_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_remote_base() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = load i64, i64* @remote_base, align 8
  store i64 %4, i64* %1, align 8
  store i32 0, i32* %2, align 4
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @HARD_ZERO, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  store i32 1, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %0
  %10 = load i32, i32* @SYS_arch_prctl, align 4
  %11 = load i32, i32* @ARCH_SET_GS, align 4
  %12 = load i64, i64* %1, align 8
  %13 = call i64 @syscall(i32 %10, i32 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 0) #2, !srcloc !2
  br label %21

21:                                               ; preds = %20, %17
  call void asm sideeffect "mov %gs, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %3) #2, !srcloc !3
  %22 = load i64, i64* %1, align 8
  %23 = load i32, i32* %2, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %27 = load i16, i16* %3, align 2
  %28 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %22, i8* %26, i16 zeroext %27)
  ret void
}

declare dso_local i64 @syscall(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i64, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 647}
!3 = !{i32 730}
