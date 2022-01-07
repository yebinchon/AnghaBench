; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_missing.c_fwrite_unlocked.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_missing.c_fwrite_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fwrite_unlocked(i8* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = mul i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %50

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @fflush(i32* %21)
  br label %23

23:                                               ; preds = %40, %38, %20
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @fileno(i32* %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @write(i32 %28, i8* %29, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %23

39:                                               ; preds = %34
  br label %44

40:                                               ; preds = %26
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %10, align 8
  br label %23

44:                                               ; preds = %39, %23
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %7, align 8
  %49 = udiv i64 %47, %48
  store i64 %49, i64* %5, align 8
  br label %50

50:                                               ; preds = %44, %19
  %51 = load i64, i64* %5, align 8
  ret i64 %51
}

declare dso_local i32 @fflush(i32*) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @fileno(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
