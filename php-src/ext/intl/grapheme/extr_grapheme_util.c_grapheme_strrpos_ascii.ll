; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_strrpos_ascii.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_strrpos_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grapheme_strrpos_ascii(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %11, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i64, i64* %10, align 8
  %24 = sub i64 0, %23
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8* %25, i8** %13, align 8
  br label %46

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %12, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = sub nsw i64 0, %29
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %10, align 8
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8* %38, i8** %13, align 8
  br label %45

39:                                               ; preds = %26
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %11, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %13, align 8
  br label %45

45:                                               ; preds = %39, %32
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %47, 1
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = icmp uge i8* %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %50
  %55 = load i8*, i8** %13, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %54
  %63 = load i8*, i8** %13, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load i64, i64* %11, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, i64* %11, align 8
  br label %73

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i64 [ %71, %70 ], [ 0, %72 ]
  %75 = add nsw i64 %67, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %6, align 4
  br label %111

77:                                               ; preds = %54
  %78 = load i8*, i8** %13, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %13, align 8
  br label %50

80:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %111

81:                                               ; preds = %46
  br label %82

82:                                               ; preds = %107, %81
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = icmp uge i8* %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @memcmp(i8* %87, i8* %88, i64 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %86
  %93 = load i8*, i8** %13, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = load i64, i64* %11, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %92
  %101 = load i64, i64* %11, align 8
  br label %103

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i64 [ %101, %100 ], [ 0, %102 ]
  %105 = add nsw i64 %97, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %6, align 4
  br label %111

107:                                              ; preds = %86
  %108 = load i8*, i8** %13, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 -1
  store i8* %109, i8** %13, align 8
  br label %82

110:                                              ; preds = %82
  store i32 -1, i32* %6, align 4
  br label %111

111:                                              ; preds = %110, %103, %80, %73
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
