; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_sort.c_zend_sort_3.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_sort.c_zend_sort_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i64 (i8*, i8*)*, i32 (i8*, i8*)*)* @zend_sort_3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_sort_3(i8* %0, i8* %1, i8* %2, i64 (i8*, i8*)* %3, i32 (i8*, i8*)* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i8*)*, align 8
  %10 = alloca i32 (i8*, i8*)*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 (i8*, i8*)* %3, i64 (i8*, i8*)** %9, align 8
  store i32 (i8*, i8*)* %4, i32 (i8*, i8*)** %10, align 8
  %11 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 %11(i8* %12, i8* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %5
  %17 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 %17(i8* %18, i8* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %65

23:                                               ; preds = %16
  %24 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 %24(i8* %25, i8* %26)
  %28 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 %28(i8* %29, i8* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 %34(i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %33, %23
  br label %65

39:                                               ; preds = %5
  %40 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 %40(i8* %41, i8* %42)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 %46(i8* %47, i8* %48)
  br label %65

50:                                               ; preds = %39
  %51 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 %51(i8* %52, i8* %53)
  %55 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %9, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 %55(i8* %56, i8* %57)
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 %61(i8* %62, i8* %63)
  br label %65

65:                                               ; preds = %22, %38, %45, %60, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
