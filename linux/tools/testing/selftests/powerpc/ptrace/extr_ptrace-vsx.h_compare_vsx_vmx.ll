; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.h_compare_vsx_vmx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-vsx.h_compare_vsx_vmx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VSX_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"store[%d]: %lx load[%d] %lx\0A\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@VEC_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"here store[%d]: %lx load[%d] %lx\0A\00", align 1
@TEST_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_vsx_vmx(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %47, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @VSX_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load i64*, i64** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 2, %13
  %15 = add nsw i32 1, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %12, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 2, %20
  %22 = add nsw i32 1, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %19, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %18, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %11
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 2, %28
  %30 = add nsw i32 1, %29
  %31 = load i64*, i64** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 1, %37
  %39 = load i64*, i64** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %35, i32 %38, i64 %43)
  %45 = load i32, i32* @TEST_FAIL, align 4
  store i32 %45, i32* %3, align 4
  br label %129

46:                                               ; preds = %11
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %7

50:                                               ; preds = %7
  store i32 64, i32* %6, align 4
  br label %51

51:                                               ; preds = %124, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @VEC_MAX, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %127

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = srem i32 %56, 2
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %89, label %59

59:                                               ; preds = %55
  %60 = load i64*, i64** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %64, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %59
  %73 = load i32, i32* %6, align 4
  %74 = load i64*, i64** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = load i64*, i64** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %81, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %73, i64 %78, i32 %80, i64 %86)
  %88 = load i32, i32* @TEST_FAIL, align 4
  store i32 %88, i32* %3, align 4
  br label %129

89:                                               ; preds = %59, %55
  %90 = load i32, i32* %6, align 4
  %91 = srem i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %123

93:                                               ; preds = %89
  %94 = load i64*, i64** %4, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %98, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %93
  %107 = load i32, i32* %6, align 4
  %108 = load i64*, i64** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 1
  %115 = load i64*, i64** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %115, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %107, i64 %112, i32 %114, i64 %120)
  %122 = load i32, i32* @TEST_FAIL, align 4
  store i32 %122, i32* %3, align 4
  br label %129

123:                                              ; preds = %93, %89
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %51

127:                                              ; preds = %51
  %128 = load i32, i32* @TEST_PASS, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %127, %106, %72, %27
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @printf(i8*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
