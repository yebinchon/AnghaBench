; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_read_base.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_fsgsbase.c_read_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@want_segv = common dso_local global i32 0, align 4
@FS = common dso_local global i32 0, align 4
@segv_addr = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @read_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_base(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 1, i32* @want_segv, align 4
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @FS, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* %4, align 8
  call void asm sideeffect "mov %fs:(%rcx), %rax", "{cx},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %9) #2, !srcloc !2
  br label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  call void asm sideeffect "mov %gs:(%rcx), %rax", "{cx},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %11) #2, !srcloc !3
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* @want_segv, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* @segv_addr, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %2, align 8
  br label %40

19:                                               ; preds = %12
  %20 = load i32, i32* @ULONG_MAX, align 4
  %21 = ashr i32 %20, 1
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @FS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* %4, align 8
  call void asm sideeffect "mov %fs:(%rcx), %rax", "{cx},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %28) #2, !srcloc !4
  br label %31

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  call void asm sideeffect "mov %gs:(%rcx), %rax", "{cx},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %30) #2, !srcloc !5
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* @want_segv, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* @segv_addr, align 8
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %2, align 8
  br label %40

38:                                               ; preds = %31
  %39 = call i32 (...) @abort() #3
  unreachable

40:                                               ; preds = %34, %15
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 470}
!3 = !{i32 549}
!4 = !{i32 726}
!5 = !{i32 814}
