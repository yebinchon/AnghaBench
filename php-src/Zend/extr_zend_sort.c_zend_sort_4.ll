; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_sort.c_zend_sort_4.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_sort.c_zend_sort_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i64 (i8*, i8*)*, i32 (i8*, i8*)*)* @zend_sort_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_sort_4(i8* %0, i8* %1, i8* %2, i8* %3, i64 (i8*, i8*)* %4, i32 (i8*, i8*)* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64 (i8*, i8*)*, align 8
  %12 = alloca i32 (i8*, i8*)*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 (i8*, i8*)* %4, i64 (i8*, i8*)** %11, align 8
  store i32 (i8*, i8*)* %5, i32 (i8*, i8*)** %12, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %11, align 8
  %17 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %12, align 8
  %18 = call i32 @zend_sort_3(i8* %13, i8* %14, i8* %15, i64 (i8*, i8*)* %16, i32 (i8*, i8*)* %17)
  %19 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i64 %19(i8* %20, i8* %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %6
  %25 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %12, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 %25(i8* %26, i8* %27)
  %29 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %11, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 %29(i8* %30, i8* %31)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %12, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 %35(i8* %36, i8* %37)
  %39 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %11, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 %39(i8* %40, i8* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %12, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 %45(i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %34
  br label %50

50:                                               ; preds = %49, %24
  br label %51

51:                                               ; preds = %50, %6
  ret void
}

declare dso_local i32 @zend_sort_3(i8*, i8*, i8*, i64 (i8*, i8*)*, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
