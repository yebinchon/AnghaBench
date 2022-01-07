; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_bsearch_arg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/statistics/extr_extended_stats.c_bsearch_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bsearch_arg(i8* %0, i8* %1, i64 %2, i64 %3, i32 (i8*, i8*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, i8*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, i8*, i8*)* %4, i32 (i8*, i8*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 0, i64* %14, align 8
  %19 = load i64, i64* %10, align 8
  store i64 %19, i64* %15, align 8
  br label %20

20:                                               ; preds = %52, %6
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %15, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = add i64 %25, %26
  %28 = udiv i64 %27, 2
  store i64 %28, i64* %16, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* %11, align 8
  %32 = mul i64 %30, %31
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %17, align 8
  %34 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 %34(i8* %35, i8* %36, i8* %37)
  store i32 %38, i32* %18, align 4
  %39 = load i32, i32* %18, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %24
  %42 = load i64, i64* %16, align 8
  store i64 %42, i64* %15, align 8
  br label %52

43:                                               ; preds = %24
  %44 = load i32, i32* %18, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %16, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %14, align 8
  br label %51

49:                                               ; preds = %43
  %50 = load i8*, i8** %17, align 8
  store i8* %50, i8** %7, align 8
  br label %54

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %41
  br label %20

53:                                               ; preds = %20
  store i8* null, i8** %7, align 8
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i8*, i8** %7, align 8
  ret i8* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
