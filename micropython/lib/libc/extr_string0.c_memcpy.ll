; ModuleID = '/home/carl/AnghaBench/micropython/lib/libc/extr_string0.c_memcpy.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libc/extr_string0.c_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memcpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = and i64 %13, 3
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = and i64 %18, 3
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %16, %3
  %23 = phi i1 [ false, %3 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %7, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = lshr i64 %32, 2
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %43, %27
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %38, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %9, align 8
  br label %34

46:                                               ; preds = %34
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, 2
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32* %55, i32** %7, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32* %57, i32** %8, align 8
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i64, i64* %6, align 8
  %60 = and i64 %59, 1
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %58
  br label %85

67:                                               ; preds = %22
  %68 = load i8*, i8** %4, align 8
  %69 = bitcast i8* %68 to i32*
  store i32* %69, i32** %10, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = bitcast i8* %70 to i32*
  store i32* %71, i32** %11, align 8
  br label %72

72:                                               ; preds = %81, %67
  %73 = load i64, i64* %6, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %11, align 8
  %78 = load i32, i32* %76, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %6, align 8
  br label %72

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i8*, i8** %4, align 8
  ret i8* %86
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
