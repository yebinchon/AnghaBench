; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_set_gs_and_switch_to.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_set_gs_and_switch_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HARD_ZERO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"[RUN]\09ARCH_SET_GS(0x%lx)%s, then schedule to 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" and clear gs\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"\09Before schedule, set selector to 0x%hx\0A\00", align 1
@SYS_arch_prctl = common dso_local global i32 0, align 4
@ARCH_SET_GS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ARCH_SET_GS\00", align 1
@GS = common dso_local global i32 0, align 4
@nerrs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"[FAIL]\09GSBASE wasn't set as expected\0A\00", align 1
@remote_base = common dso_local global i64 0, align 8
@ftx = common dso_local global i32 0, align 4
@SYS_futex = common dso_local global i32 0, align 4
@FUTEX_WAKE = common dso_local global i32 0, align 4
@FUTEX_WAIT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"[OK]\09GS/BASE remained 0x%hx/0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"[FAIL]\09GS/BASE changed from 0x%hx/0x%lx to 0x%hx/0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i16, i64)* @set_gs_and_switch_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_gs_and_switch_to(i64 %0, i16 zeroext %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i16 %1, i16* %5, align 2
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @HARD_ZERO, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %16, i8* %20, i64 %21)
  %23 = load i16, i16* %5, align 2
  %24 = icmp ne i16 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* @SYS_arch_prctl, align 4
  %31 = load i32, i32* @ARCH_SET_GS, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i32*
  %34 = load i64, i64* %4, align 8
  %35 = call i64 (i32, i32*, i64, ...) @syscall(i32 %30, i32* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 0) #2, !srcloc !2
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, i32* @GS, align 4
  %45 = call i64 @read_base(i32 %44)
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @nerrs, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @nerrs, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i16, i16* %5, align 2
  %54 = icmp ne i16 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i16, i16* %5, align 2
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %56) #2, !srcloc !3
  %57 = load i16, i16* %5, align 2
  store i16 %57, i16* %8, align 2
  %58 = load i32, i32* @GS, align 4
  %59 = call i64 @read_base(i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = load i16, i16* %5, align 2
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %60) #2, !srcloc !4
  br label %62

61:                                               ; preds = %52
  call void asm sideeffect "mov %gs, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %8) #2, !srcloc !5
  br label %62

62:                                               ; preds = %61, %55
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* @remote_base, align 8
  store i32 1, i32* @ftx, align 4
  %64 = load i32, i32* @SYS_futex, align 4
  %65 = load i32, i32* @FUTEX_WAKE, align 4
  %66 = sext i32 %65 to i64
  %67 = call i64 (i32, i32*, i64, ...) @syscall(i32 %64, i32* @ftx, i64 %66, i32 0, i8* null, i8* null, i32 0)
  br label %68

68:                                               ; preds = %71, %62
  %69 = load i32, i32* @ftx, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @SYS_futex, align 4
  %73 = load i32, i32* @FUTEX_WAIT, align 4
  %74 = sext i32 %73 to i64
  %75 = call i64 (i32, i32*, i64, ...) @syscall(i32 %72, i32* @ftx, i64 %74, i32 1, i8* null, i8* null, i32 0)
  br label %68

76:                                               ; preds = %68
  call void asm sideeffect "mov %gs, $0", "=*rm,~{dirflag},~{fpsr},~{flags}"(i16* %9) #2, !srcloc !6
  %77 = load i32, i32* @GS, align 4
  %78 = call i64 @read_base(i32 %77)
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load i16, i16* %8, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* %9, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i16, i16* %8, align 2
  %90 = zext i16 %89 to i32
  %91 = load i64, i64* %4, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %90, i64 %91)
  br label %103

93:                                               ; preds = %82, %76
  %94 = load i32, i32* @nerrs, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @nerrs, align 4
  %96 = load i16, i16* %8, align 2
  %97 = zext i16 %96 to i32
  %98 = load i64, i64* %4, align 8
  %99 = load i16, i16* %9, align 2
  %100 = zext i16 %99 to i32
  %101 = load i64, i64* %7, align 8
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i32 %97, i64 %98, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %93, %88
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @syscall(i32, i32*, i64, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @read_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1058}
!3 = !{i32 1238}
!4 = !{i32 1351}
!5 = !{i32 1415}
!6 = !{i32 1666}
