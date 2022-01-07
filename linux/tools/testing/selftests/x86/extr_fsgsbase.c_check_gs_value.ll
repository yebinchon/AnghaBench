; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_check_gs_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_check_gs_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"[RUN]\09ARCH_SET_GS to 0x%lx\0A\00", align 1
@SYS_arch_prctl = common dso_local global i32 0, align 4
@ARCH_SET_GS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"ARCH_SET_GS\00", align 1
@GS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"[OK]\09GSBASE was set as expected (selector 0x%hx)\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"[FAIL]\09GSBASE was not as expected: got 0x%lx (selector 0x%hx)\0A\00", align 1
@ARCH_GET_GS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ARCH_GET_GS\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"[OK]\09ARCH_GET_GS worked as expected (selector 0x%hx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"[FAIL]\09ARCH_GET_GS was not as expected: got 0x%lx (selector 0x%hx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @check_gs_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_gs_value(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %5)
  %7 = load i32, i32* @SYS_arch_prctl, align 4
  %8 = load i32, i32* @ARCH_SET_GS, align 4
  %9 = load i64, i64* %2, align 8
  %10 = call i64 (i32, i32, ...) @syscall(i32 %7, i32 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  call void asm sideeffect "mov %gs, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %4) #2, !srcloc !2
  %15 = load i32, i32* @GS, align 4
  %16 = call i64 @read_base(i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i64
  %23 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  br label %31

24:                                               ; preds = %14
  %25 = load i32, i32* @nerrs, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @nerrs, align 4
  %27 = load i64, i64* %3, align 8
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %27, i32 %29)
  br label %31

31:                                               ; preds = %24, %20
  %32 = load i32, i32* @SYS_arch_prctl, align 4
  %33 = load i32, i32* @ARCH_GET_GS, align 4
  %34 = call i64 (i32, i32, ...) @syscall(i32 %32, i32 %33, i64* %3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %2, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i16, i16* %4, align 2
  %44 = zext i16 %43 to i64
  %45 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i64 %44)
  br label %53

46:                                               ; preds = %38
  %47 = load i32, i32* @nerrs, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @nerrs, align 4
  %49 = load i64, i64* %3, align 8
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i32
  %52 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i64 %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  ret void
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i64 @syscall(i32, i32, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @read_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 612}
