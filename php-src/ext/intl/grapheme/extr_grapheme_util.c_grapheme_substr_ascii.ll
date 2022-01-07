; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_substr_ascii.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_substr_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT32_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @grapheme_substr_ascii(i8* %0, i64 %1, i64 %2, i64 %3, i8** %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8** %4, i8*** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i8**, i8*** %11, align 8
  store i8* null, i8** %15, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @INT32_MAX, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  br label %108

20:                                               ; preds = %6
  %21 = load i64, i64* %10, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i64, i64* %10, align 8
  %25 = sub i64 0, %24
  %26 = load i64, i64* %13, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %108

29:                                               ; preds = %23, %20
  %30 = load i64, i64* %10, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %36, %32, %29
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %13, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = icmp ult i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = sub i64 0, %47
  %49 = load i64, i64* %13, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %39
  br label %108

52:                                               ; preds = %46, %43
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 %57, %58
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %108

62:                                               ; preds = %55, %52
  %63 = load i64, i64* %9, align 8
  %64 = icmp ult i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add i64 %66, %67
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp ult i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %71, %65
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i64, i64* %10, align 8
  %75 = icmp ult i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %9, align 8
  %79 = sub i64 %77, %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %79, %80
  store i64 %81, i64* %10, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ult i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %84, %76
  br label %86

86:                                               ; preds = %85, %73
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp uge i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %108

91:                                               ; preds = %86
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add i64 %92, %93
  %95 = load i64, i64* %13, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %10, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = load i8*, i8** %7, align 8
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8**, i8*** %11, align 8
  store i8* %104, i8** %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i64*, i64** %12, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %101, %90, %61, %51, %28, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
