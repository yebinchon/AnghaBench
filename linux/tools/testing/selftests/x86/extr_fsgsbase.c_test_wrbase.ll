; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_test_wrbase.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_test_wrbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"[RUN]\09GS = 0x%hx, GSBASE = 0x%lx\0A\00", align 1
@remote_base = common dso_local global i64 0, align 8
@ftx = common dso_local global i32 0, align 4
@SYS_futex = common dso_local global i32 0, align 4
@FUTEX_WAKE = common dso_local global i32 0, align 4
@FUTEX_WAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"[OK]\09Index and base were preserved\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"[FAIL]\09After switch, GS = 0x%hx and GSBASE = 0x%lx\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_wrbase(i16 zeroext %0, i64 %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  store i16 %0, i16* %3, align 2
  store i64 %1, i64* %4, align 8
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i32
  %9 = load i64, i64* %4, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %8, i64 %9)
  %11 = load i16, i16* %3, align 2
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %11) #2, !srcloc !2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @wrgsbase(i64 %12)
  store i64 0, i64* @remote_base, align 8
  store i32 1, i32* @ftx, align 4
  %14 = load i32, i32* @SYS_futex, align 4
  %15 = load i32, i32* @FUTEX_WAKE, align 4
  %16 = call i32 @syscall(i32 %14, i32* @ftx, i32 %15, i32 0, i32* null, i32* null, i32 0)
  br label %17

17:                                               ; preds = %20, %2
  %18 = load i32, i32* @ftx, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @SYS_futex, align 4
  %22 = load i32, i32* @FUTEX_WAIT, align 4
  %23 = call i32 @syscall(i32 %21, i32* @ftx, i32 %22, i32 1, i32* null, i32* null, i32 0)
  br label %17

24:                                               ; preds = %17
  call void asm sideeffect "mov %gs, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %5) #2, !srcloc !3
  %25 = call i64 (...) @rdgsbase()
  store i64 %25, i64* %6, align 8
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %44

37:                                               ; preds = %31, %24
  %38 = load i16, i16* %5, align 2
  %39 = zext i16 %38 to i32
  %40 = load i64, i64* %6, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %39, i64 %40)
  %42 = load i32, i32* @nerrs, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @nerrs, align 4
  br label %44

44:                                               ; preds = %37, %35
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @wrgsbase(i64) #1

declare dso_local i32 @syscall(i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @rdgsbase(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 566}
!3 = !{i32 819}
