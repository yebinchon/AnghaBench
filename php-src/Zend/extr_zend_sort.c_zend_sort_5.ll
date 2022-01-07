; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_sort.c_zend_sort_5.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_sort.c_zend_sort_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i64 (i8*, i8*)*, i32 (i8*, i8*)*)* @zend_sort_5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_sort_5(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i64 (i8*, i8*)* %5, i32 (i8*, i8*)* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64 (i8*, i8*)*, align 8
  %14 = alloca i32 (i8*, i8*)*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 (i8*, i8*)* %5, i64 (i8*, i8*)** %13, align 8
  store i32 (i8*, i8*)* %6, i32 (i8*, i8*)** %14, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %13, align 8
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %21 = call i32 @zend_sort_4(i8* %15, i8* %16, i8* %17, i8* %18, i64 (i8*, i8*)* %19, i32 (i8*, i8*)* %20)
  %22 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %13, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 %22(i8* %23, i8* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %7
  %28 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = call i32 %28(i8* %29, i8* %30)
  %32 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %13, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 %32(i8* %33, i8* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %27
  %38 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 %38(i8* %39, i8* %40)
  %42 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %13, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 %42(i8* %43, i8* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 %48(i8* %49, i8* %50)
  %52 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %13, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i64 %52(i8* %53, i8* %54)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 %58(i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %47
  br label %63

63:                                               ; preds = %62, %37
  br label %64

64:                                               ; preds = %63, %27
  br label %65

65:                                               ; preds = %64, %7
  ret void
}

declare dso_local i32 @zend_sort_4(i8*, i8*, i8*, i8*, i64 (i8*, i8*)*, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
