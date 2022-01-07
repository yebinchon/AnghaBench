; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.h_load_vsx_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.h_load_vsx_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VSX_MAX = common dso_local global i32 0, align 4
@VMX_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_vsx_vmx(i64* %0, i64* %1, [2 x i64]* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca [2 x i64]*, align 8
  %7 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store [2 x i64]* %2, [2 x i64]** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %24, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @VSX_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = mul nsw i32 2, %14
  %16 = add nsw i32 1, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %13, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  store i64 %19, i64* %23, align 8
  br label %24

24:                                               ; preds = %12
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %8

27:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %57, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @VMX_MAX, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %28
  %33 = load i64*, i64** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 64, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load [2 x i64]*, [2 x i64]** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %40, i64 %42
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %43, i64 0, i64 0
  store i64 %39, i64* %44, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 2, %46
  %48 = add nsw i32 65, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load [2 x i64]*, [2 x i64]** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %52, i64 %54
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %55, i64 0, i64 1
  store i64 %51, i64* %56, align 8
  br label %57

57:                                               ; preds = %32
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %28

60:                                               ; preds = %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
