; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_utf.c_utf8_check_full.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_utf.c_utf8_check_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @utf8_check_full(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %10, align 1
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 2
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 31
  store i32 %19, i32* %9, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp eq i64 %21, 3
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8, i8* %10, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 15
  store i32 %26, i32* %9, align 4
  br label %36

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i8, i8* %10, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 7
  store i32 %33, i32* %9, align 4
  br label %35

34:                                               ; preds = %27
  store i64 0, i64* %4, align 8
  br label %104

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %23
  br label %37

37:                                               ; preds = %36, %16
  store i64 1, i64* %8, align 8
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %10, align 1
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i8, i8* %10, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp sgt i32 %52, 191
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %42
  store i64 0, i64* %4, align 8
  br label %104

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 6
  %58 = load i8, i8* %10, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 63
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %55
  %63 = load i64, i64* %8, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %8, align 8
  br label %38

65:                                               ; preds = %38
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 1114111
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  store i64 0, i64* %4, align 8
  br label %104

69:                                               ; preds = %65
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 55296, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  %74 = icmp sle i32 %73, 57343
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i64 0, i64* %4, align 8
  br label %104

76:                                               ; preds = %72, %69
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 128
  br i1 %81, label %94, label %82

82:                                               ; preds = %79, %76
  %83 = load i64, i64* %6, align 8
  %84 = icmp eq i64 %83, 3
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 2048
  br i1 %87, label %94, label %88

88:                                               ; preds = %85, %82
  %89 = load i64, i64* %6, align 8
  %90 = icmp eq i64 %89, 4
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 65536
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %85, %79
  store i64 0, i64* %4, align 8
  br label %104

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = load i32*, i32** %7, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  store i64 1, i64* %4, align 8
  br label %104

104:                                              ; preds = %103, %94, %75, %68, %54, %34
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
