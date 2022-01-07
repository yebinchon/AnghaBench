; ModuleID = '/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_tar_octal.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/phar/extr_tar.c_phar_tar_octal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @phar_tar_octal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phar_tar_octal(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %8, align 8
  br label %16

16:                                               ; preds = %20, %3
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %9, align 4
  %19 = icmp sgt i32 %17, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 7
  %23 = add nsw i32 48, %22
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 -1
  store i8* %26, i8** %8, align 8
  store i8 %24, i8* %26, align 1
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %6, align 4
  br label %16

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @SUCCESS, align 4
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  %38 = icmp sgt i32 %36, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %8, align 8
  store i8 55, i8* %40, align 1
  br label %35

42:                                               ; preds = %35
  %43 = load i32, i32* @FAILURE, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %32
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
