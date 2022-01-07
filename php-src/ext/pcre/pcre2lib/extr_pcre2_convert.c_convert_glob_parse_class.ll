; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_convert.c_convert_glob_parse_class.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/extr_pcre2_convert.c_convert_glob_parse_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@convert_glob_parse_class.posix_classes = internal global i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [85 x i8] c"alnum:alpha:ascii:blank:cntrl:digit:graph:lower:print:punct:space:upper:word:xdigit:\00", align 1
@TRUE = common dso_local global i64 0, align 8
@CHAR_a = common dso_local global i64 0, align 8
@CHAR_z = common dso_local global i64 0, align 8
@CHAR_COLON = common dso_local global i64 0, align 8
@CHAR_RIGHT_SQUARE_BRACKET = common dso_local global i64 0, align 8
@CHAR_NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64*, i32*)* @convert_glob_parse_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_glob_parse_class(i64** %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64** %0, i64*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i64**, i64*** %5, align 8
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 1
  store i64* %15, i64** %8, align 8
  %16 = load i64*, i64** %8, align 8
  store i64* %16, i64** %9, align 8
  br label %17

17:                                               ; preds = %37, %3
  %18 = load i64, i64* @TRUE, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load i64*, i64** %9, align 8
  %22 = load i64*, i64** %6, align 8
  %23 = icmp uge i64* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %119

25:                                               ; preds = %20
  %26 = load i64*, i64** %9, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %9, align 8
  %28 = load i64, i64* %26, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @CHAR_a, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @CHAR_z, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %25
  br label %38

37:                                               ; preds = %32
  br label %17

38:                                               ; preds = %36, %17
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @CHAR_COLON, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = load i64*, i64** %9, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = icmp uge i64* %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CHAR_RIGHT_SQUARE_BRACKET, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %42, %38
  store i32 0, i32* %4, align 4
  br label %119

52:                                               ; preds = %46
  %53 = load i8*, i8** @convert_glob_parse_class.posix_classes, align 8
  store i8* %53, i8** %10, align 8
  store i32 1, i32* %12, align 4
  br label %54

54:                                               ; preds = %114, %52
  %55 = load i64, i64* @TRUE, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %119

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @CHAR_NUL, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %119

65:                                               ; preds = %57
  %66 = load i64*, i64** %8, align 8
  store i64* %66, i64** %9, align 8
  br label %67

67:                                               ; preds = %99, %65
  %68 = load i64*, i64** %9, align 8
  %69 = load i64, i64* %68, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i64
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %67
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CHAR_COLON, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %74
  %80 = load i64*, i64** %9, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 2
  store i64* %81, i64** %9, align 8
  %82 = load i64*, i64** %8, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 -2
  store i64* %83, i64** %8, align 8
  br label %84

84:                                               ; preds = %91, %79
  %85 = load i32*, i32** %7, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = getelementptr inbounds i64, i64* %86, i32 1
  store i64* %87, i64** %8, align 8
  %88 = load i64, i64* %86, align 8
  %89 = trunc i64 %88 to i32
  %90 = call i32 @convert_glob_write(i32* %85, i32 %89)
  br label %91

91:                                               ; preds = %84
  %92 = load i64*, i64** %8, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = icmp ult i64* %92, %93
  br i1 %94, label %84, label %95

95:                                               ; preds = %91
  %96 = load i64*, i64** %9, align 8
  %97 = load i64**, i64*** %5, align 8
  store i64* %96, i64** %97, align 8
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %4, align 4
  br label %119

99:                                               ; preds = %74
  %100 = load i64*, i64** %9, align 8
  %101 = getelementptr inbounds i64, i64* %100, i32 1
  store i64* %101, i64** %9, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  br label %67

104:                                              ; preds = %67
  br label %105

105:                                              ; preds = %111, %104
  %106 = load i8*, i8** %10, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i64
  %109 = load i64, i64* @CHAR_COLON, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %10, align 8
  br label %105

114:                                              ; preds = %105
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %54

119:                                              ; preds = %24, %51, %64, %95, %54
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @convert_glob_write(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
