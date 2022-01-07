; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_process.c_kull_m_process_NtQuerySystemInformation.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_process.c_kull_m_process_NtQuerySystemInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kull_m_process_NtQuerySystemInformation(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i64*
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @NtQuerySystemInformation(i32 %16, i64 %19, i32 %20, i32* %9)
  store i64 %21, i64* %7, align 8
  br label %56

22:                                               ; preds = %3
  store i32 4096, i32* %8, align 4
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* @LPTR, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @LocalAlloc(i32 %28, i32 %29)
  %31 = load i64, i64* %5, align 8
  %32 = inttoptr i64 %31 to i64*
  store i64 %30, i64* %32, align 8
  %33 = icmp ne i64 %30, 0
  br label %34

34:                                               ; preds = %27, %23
  %35 = phi i1 [ false, %23 ], [ %33, %27 ]
  br i1 %35, label %36, label %55

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = load i64, i64* %5, align 8
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @NtQuerySystemInformation(i32 %37, i64 %40, i32 %41, i32* %9)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @NT_SUCCESS(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = load i64, i64* %5, align 8
  %48 = inttoptr i64 %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @LocalFree(i64 %49)
  br label %51

51:                                               ; preds = %46, %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %23

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i64, i64* %7, align 8
  ret i64 %57
}

declare dso_local i64 @NtQuerySystemInformation(i32, i64, i32, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @LocalFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
