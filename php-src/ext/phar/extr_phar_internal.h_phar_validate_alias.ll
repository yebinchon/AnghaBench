; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_phar_internal.h_phar_validate_alias.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_phar_internal.h_phar_validate_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @phar_validate_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_validate_alias(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @memchr(i8* %5, i8 signext 47, i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @memchr(i8* %10, i8 signext 92, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @memchr(i8* %15, i8 signext 58, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @memchr(i8* %20, i8 signext 59, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @memchr(i8* %25, i8 signext 10, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @memchr(i8* %30, i8 signext 13, i64 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24, %19, %14, %9, %2
  %35 = phi i1 [ true, %24 ], [ true, %19 ], [ true, %14 ], [ true, %9 ], [ true, %2 ], [ %33, %29 ]
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i64 @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
