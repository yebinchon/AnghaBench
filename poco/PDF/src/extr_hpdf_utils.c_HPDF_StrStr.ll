; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_StrStr.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_StrStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HPDF_StrStr(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @HPDF_StrLen(i8* %9, i32 -1)
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %55

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %4, align 8
  br label %55

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @HPDF_StrLen(i8* %23, i32 -1)
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* null, i8** %4, align 8
  br label %55

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %49, %30
  %37 = load i64, i64* %7, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @HPDF_MemCmp(i32* %41, i32* %43, i64 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  store i8* %48, i8** %4, align 8
  br label %55

49:                                               ; preds = %39
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %5, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %52, -1
  store i64 %53, i64* %7, align 8
  br label %36

54:                                               ; preds = %36
  store i8* null, i8** %4, align 8
  br label %55

55:                                               ; preds = %54, %47, %29, %17, %13
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i64 @HPDF_StrLen(i8*, i32) #1

declare dso_local i64 @HPDF_MemCmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
