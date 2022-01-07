; ModuleID = '/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kuhl_m_sekurlsa_utils.c_kuhl_m_sekurlsa_utils_pFromLinkedListByLuid.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimilib/sekurlsadbg/extr_kuhl_m_sekurlsa_utils.c_kuhl_m_sekurlsa_utils_pFromLinkedListByLuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_sekurlsa_utils_pFromLinkedListByLuid(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @LPTR, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = call i64* @LocalAlloc(i32 %10, i32 %14)
  store i64* %15, i64** %7, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %3
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @ReadMemory(i64 %18, i64* %9, i32 8, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %53, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load i64, i64* %9, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i64 @ReadMemory(i64 %27, i64* %28, i32 %32, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load i64*, i64** %7, align 8
  %38 = ptrtoint i64* %37 to i64
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @SecEqualLuid(i32 %36, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %8, align 8
  br label %54

47:                                               ; preds = %35
  %48 = load i64*, i64** %7, align 8
  %49 = bitcast i64* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %9, align 8
  br label %53

52:                                               ; preds = %26
  br label %54

53:                                               ; preds = %47
  br label %22

54:                                               ; preds = %52, %45, %22
  br label %55

55:                                               ; preds = %54, %17
  %56 = load i64*, i64** %7, align 8
  %57 = call i32 @LocalFree(i64* %56)
  br label %58

58:                                               ; preds = %55, %3
  %59 = load i64, i64* %8, align 8
  ret i64 %59
}

declare dso_local i64* @LocalAlloc(i32, i32) #1

declare dso_local i64 @ReadMemory(i64, i64*, i32, i32*) #1

declare dso_local i64 @SecEqualLuid(i32, i32) #1

declare dso_local i32 @LocalFree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
