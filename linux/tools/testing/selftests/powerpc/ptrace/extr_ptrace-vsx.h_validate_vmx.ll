; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.h_validate_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.h_validate_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"vmx[%d][0]: %lx load[%d] %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"vmx[%d][1]: %lx load[%d] %lx\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate_vmx([2 x i64]* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i64]*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store [2 x i64]* %0, [2 x i64]** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %80, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @VMX_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %83

11:                                               ; preds = %7
  %12 = load [2 x i64]*, [2 x i64]** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 %14
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 2, %19
  %21 = add nsw i32 65, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %17, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %11
  %27 = load [2 x i64]*, [2 x i64]** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %27, i64 %29
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %30, i64 0, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 2, %34
  %36 = add nsw i32 64, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %32, %39
  br i1 %40, label %41, label %79

41:                                               ; preds = %26, %11
  %42 = load i32, i32* %6, align 4
  %43 = load [2 x i64]*, [2 x i64]** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i64], [2 x i64]* %43, i64 %45
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %46, i64 0, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 65, %50
  %52 = load i64*, i64** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 2, %53
  %55 = add nsw i32 65, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %52, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %48, i32 %51, i64 %58)
  %60 = load i32, i32* %6, align 4
  %61 = load [2 x i64]*, [2 x i64]** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %61, i64 %63
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %64, i64 0, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = mul nsw i32 2, %67
  %69 = add nsw i32 64, %68
  %70 = load i64*, i64** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 64, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %70, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60, i64 %66, i32 %69, i64 %76)
  %78 = load i32, i32* @TEST_FAIL, align 4
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %26
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %7

83:                                               ; preds = %7
  %84 = load i32, i32* @TEST_PASS, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %41
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @printf(i8*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
