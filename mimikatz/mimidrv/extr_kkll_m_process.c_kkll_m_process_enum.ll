; ModuleID = '/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_enum.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimidrv/extr_kkll_m_process.c_kkll_m_process_enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@PsInitialSystemProcess = common dso_local global i64 0, align 8
@EPROCESS_OffSetTable = common dso_local global i64** null, align 8
@KiwiOsIndex = common dso_local global i64 0, align 8
@EprocessNext = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kkll_m_process_enum(i32 %0, i64 %1, i32 %2, i32 (i32, i64, i32, i64, i64)* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, i64, i32, i64, i64)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 (i32, i64, i32, i64, i64)* %3, i32 (i32, i64, i32, i64, i64)** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %13, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* @PsInitialSystemProcess, align 8
  store i64 %14, i64* %12, align 8
  br label %15

15:                                               ; preds = %51, %5
  %16 = load i32, i32* %11, align 4
  %17 = call i64 @NT_SUCCESS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load i64, i64* %12, align 8
  %21 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %22 = load i64, i64* @KiwiOsIndex, align 8
  %23 = getelementptr inbounds i64*, i64** %21, i64 %22
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @EprocessNext, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %20, %27
  %29 = inttoptr i64 %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %32 = load i64, i64* @KiwiOsIndex, align 8
  %33 = getelementptr inbounds i64*, i64** %31, i64 %32
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @EprocessNext, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %30, %37
  %39 = load i64, i64* @PsInitialSystemProcess, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %19, %15
  %42 = phi i1 [ false, %15 ], [ %40, %19 ]
  br i1 %42, label %43, label %71

43:                                               ; preds = %41
  %44 = load i32 (i32, i64, i32, i64, i64)*, i32 (i32, i64, i32, i64, i64)** %9, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 %44(i32 %45, i64 %46, i32 %47, i64 %48, i64 %49)
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %43
  %52 = load i64, i64* %12, align 8
  %53 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %54 = load i64, i64* @KiwiOsIndex, align 8
  %55 = getelementptr inbounds i64*, i64** %53, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @EprocessNext, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %52, %59
  %61 = inttoptr i64 %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load i64**, i64*** @EPROCESS_OffSetTable, align 8
  %64 = load i64, i64* @KiwiOsIndex, align 8
  %65 = getelementptr inbounds i64*, i64** %63, i64 %64
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @EprocessNext, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %62, %69
  store i64 %70, i64* %12, align 8
  br label %15

71:                                               ; preds = %41
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i64 @NT_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
