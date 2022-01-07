; ModuleID = '/home/carl/AnghaBench/micropython/lib/libc/extr_string0.c_memcmp.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libc/extr_string0.c_memcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcmp(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  br label %16

16:                                               ; preds = %43, %3
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %7, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* %21, align 4
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %10, align 1
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* %25, align 4
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %11, align 1
  %29 = load i8, i8* %10, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %11, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %45

35:                                               ; preds = %20
  %36 = load i8, i8* %10, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %11, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %45

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  br label %16

44:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %41, %34
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
