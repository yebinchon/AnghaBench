; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_alloc.c_zend_mm_chunk_alloc_int.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_alloc.c_zend_mm_chunk_alloc_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REAL_PAGE_SIZE = common dso_local global i64 0, align 8
@MADV_HUGEPAGE = common dso_local global i32 0, align 4
@zend_mm_use_huge_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64)* @zend_mm_chunk_alloc_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @zend_mm_chunk_alloc_int(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i8* @zend_mm_mmap(i64 %8)
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %62

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @ZEND_MM_ALIGNED_OFFSET(i8* %14, i64 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  store i8* %19, i8** %3, align 8
  br label %62

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @zend_mm_munmap(i8* %21, i64 %22)
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* @REAL_PAGE_SIZE, align 8
  %28 = sub i64 %26, %27
  %29 = call i8* @zend_mm_mmap(i64 %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @ZEND_MM_ALIGNED_OFFSET(i8* %30, i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %20
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub i64 %36, %37
  store i64 %38, i64* %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @zend_mm_munmap(i8* %39, i64 %40)
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %35, %20
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @REAL_PAGE_SIZE, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i8*, i8** %6, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @REAL_PAGE_SIZE, align 8
  %58 = sub i64 %56, %57
  %59 = call i32 @zend_mm_munmap(i8* %55, i64 %58)
  br label %60

60:                                               ; preds = %52, %48
  %61 = load i8*, i8** %6, align 8
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %60, %18, %12
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local i8* @zend_mm_mmap(i64) #1

declare dso_local i64 @ZEND_MM_ALIGNED_OFFSET(i8*, i64) #1

declare dso_local i32 @zend_mm_munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
