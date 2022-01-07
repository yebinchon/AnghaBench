; ModuleID = '/home/carl/AnghaBench/micropython/lib/libc/extr_string0.c_memset.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libc/extr_string0.c_memset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memset(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %3
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 3
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = lshr i64 %20, 2
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %28, %17
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  store i32 0, i32* %26, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %8, align 8
  br label %22

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, 2
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = bitcast i32* %36 to i64*
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = bitcast i32* %38 to i64*
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = bitcast i64* %40 to i32*
  store i32* %41, i32** %7, align 8
  br label %42

42:                                               ; preds = %35, %31
  %43 = load i64, i64* %6, align 8
  %44 = and i64 %43, 1
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32* %47 to i64*
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %42
  br label %65

50:                                               ; preds = %12, %3
  %51 = load i8*, i8** %4, align 8
  %52 = bitcast i8* %51 to i64*
  store i64* %52, i64** %9, align 8
  br label %53

53:                                               ; preds = %61, %50
  %54 = load i64, i64* %6, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, -1
  store i64 %63, i64* %6, align 8
  br label %53

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
