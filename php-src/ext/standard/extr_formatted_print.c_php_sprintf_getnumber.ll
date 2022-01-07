; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_formatted_print.c_php_sprintf_getnumber.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_formatted_print.c_php_sprintf_getnumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"sprintf_getnumber: number was %d bytes long\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*)* @php_sprintf_getnumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_sprintf_getnumber(i8** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @ZEND_STRTOL(i8* %10, i8** %6, i32 10)
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %15 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = sub i64 %23, %21
  store i64 %24, i64* %22, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8**, i8*** %4, align 8
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %14, %2
  %28 = load i64, i64* %8, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @PRINTF_DEBUG(i8* %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @INT_MAX, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %27
  store i32 -1, i32* %3, align 4
  br label %41

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ZEND_STRTOL(i8*, i8**, i32) #1

declare dso_local i32 @PRINTF_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
