; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_IToA2.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_utils.c_HPDF_IToA2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HPDF_LIMIT_MAX_INT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @HPDF_IToA2(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @HPDF_LIMIT_MAX_INT, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @HPDF_LIMIT_MAX_INT, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = getelementptr inbounds i8, i8* %18, i64 -1
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 -1
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %32, %14
  %24 = load i32, i32* %5, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp uge i8* %27, %28
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 10
  %35 = trunc i32 %34 to i8
  %36 = sext i8 %35 to i32
  %37 = add nsw i32 %36, 48
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %7, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %5, align 4
  %41 = sdiv i32 %40, 10
  store i32 %41, i32* %5, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 -1
  store i8* %43, i8** %7, align 8
  br label %23

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ule i8* %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %7, align 8
  store i8 48, i8* %50, align 1
  br label %45

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 -1
  ret i8* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
