; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_numbering.c_test_x32_without_x32_bit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/x86/extr_syscall_numbering.c_test_x32_without_x32_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"[RUN]\09Checking syscalls 512-547\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"[RUN]\09Checking some 64-bit syscalls in x32 range\0A\00", align 1
@X32_BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"[RUN]\09Checking numbers above 2^32-1\0A\00", align 1
@nerrs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"[OK]\09They all returned -ENOSYS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_x32_without_x32_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_x32_without_x32_bit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  %3 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 512, i32* %2, align 4
  br label %4

4:                                                ; preds = %10, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp sle i32 %5, 547
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @check_enosys(i32 %8, i32* %1)
  br label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %2, align 4
  br label %4

13:                                               ; preds = %4
  %14 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32, i32* @X32_BIT, align 4
  %16 = or i32 16, %15
  %17 = call i32 @check_enosys(i32 %16, i32* %1)
  %18 = load i32, i32* @X32_BIT, align 4
  %19 = or i32 19, %18
  %20 = call i32 @check_enosys(i32 %19, i32* %1)
  %21 = load i32, i32* @X32_BIT, align 4
  %22 = or i32 20, %21
  %23 = call i32 @check_enosys(i32 %22, i32* %1)
  %24 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %25 = call i32 @check_enosys(i32 0, i32* %1)
  %26 = load i32, i32* @X32_BIT, align 4
  %27 = sext i32 %26 to i64
  %28 = or i64 %27, 4294967296
  %29 = trunc i64 %28 to i32
  %30 = call i32 @check_enosys(i32 %29, i32* %1)
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %13
  %34 = load i32, i32* @nerrs, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @nerrs, align 4
  br label %38

36:                                               ; preds = %13
  %37 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @check_enosys(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
