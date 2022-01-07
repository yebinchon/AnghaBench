; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_mov_0_gs.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_mov_0_gs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"[RUN]\09ARCH_SET_GS to 0x%lx then mov 0 to %%gs%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" and schedule \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SYS_arch_prctl = common dso_local global i32 0, align 4
@ARCH_SET_GS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ARCH_SET_GS\00", align 1
@GS = common dso_local global i32 0, align 4
@ARCH_GET_GS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ARCH_GET_GS\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"[OK]\09GSBASE is 0x%lx\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [57 x i8] c"[FAIL]\09GSBASE changed to 0x%lx but kernel reports 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @mov_0_gs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_0_gs(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %12 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %7, i8* %11)
  %13 = load i32, i32* @SYS_arch_prctl, align 4
  %14 = load i32, i32* @ARCH_SET_GS, align 4
  %15 = load i64, i64* %3, align 8
  %16 = call i64 (i32, i32, ...) @syscall(i32 %13, i32 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @usleep(i32 10)
  br label %25

25:                                               ; preds = %23, %20
  call void asm sideeffect "mov $0, %gs", "rm,~{dirflag},~{fpsr},~{flags}"(i32 0) #2, !srcloc !2
  %26 = load i32, i32* @GS, align 4
  %27 = call i64 @read_base(i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* @SYS_arch_prctl, align 4
  %29 = load i32, i32* @ARCH_GET_GS, align 4
  %30 = call i64 (i32, i32, ...) @syscall(i32 %28, i32 %29, i64* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %39)
  br label %47

41:                                               ; preds = %34
  %42 = load i32, i32* @nerrs, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @nerrs, align 4
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %38
  ret void
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i64 @syscall(i32, i32, ...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @read_base(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 737}
