; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_FindDateSep.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/intl/extr_date.c_FindDateSep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SAMPLES_STR_SIZE = common dso_local global i32 0, align 4
@STD_DATE_SEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @FindDateSep(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = call i32 (...) @GetProcessHeap()
  %8 = load i32, i32* @MAX_SAMPLES_STR_SIZE, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i64 @HeapAlloc(i32 %7, i32 0, i32 %11)
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %76

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @STD_DATE_SEP, align 4
  %20 = call i32 @wcscpy(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %71, %17
  %22 = load i64, i64* %5, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = call i64 @wcslen(i32* %23)
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @isDateCompAl(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %71, label %33

33:                                               ; preds = %26
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 39
  br i1 %38, label %39, label %71

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i32*, i32** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @isDateCompAl(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %40
  %48 = load i32*, i32** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 39
  br label %53

53:                                               ; preds = %47, %40
  %54 = phi i1 [ false, %40 ], [ %52, %47 ]
  br i1 %54, label %55, label %66

55:                                               ; preds = %53
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %63, align 4
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %5, align 8
  br label %40

66:                                               ; preds = %53
  %67 = load i32*, i32** %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 0, i32* %69, align 4
  %70 = load i32*, i32** %4, align 8
  store i32* %70, i32** %2, align 8
  br label %76

71:                                               ; preds = %33, %26
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %21

74:                                               ; preds = %21
  %75 = load i32*, i32** %4, align 8
  store i32* %75, i32** %2, align 8
  br label %76

76:                                               ; preds = %74, %66, %16
  %77 = load i32*, i32** %2, align 8
  ret i32* %77
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @wcscpy(i32*, i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i32 @isDateCompAl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
