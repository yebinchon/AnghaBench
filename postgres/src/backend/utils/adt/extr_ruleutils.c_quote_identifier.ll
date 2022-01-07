; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_quote_identifier.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ruleutils.c_quote_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@quote_all_identifiers = common dso_local global i64 0, align 8
@ScanKeywords = common dso_local global i32 0, align 4
@ScanKeywordCategories = common dso_local global i64* null, align 8
@UNRESERVED_KEYWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @quote_identifier(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 97
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 122
  br i1 %22, label %29, label %23

23:                                               ; preds = %17, %1
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 95
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ true, %17 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** %6, align 8
  br label %33

33:                                               ; preds = %69, %29
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %9, align 1
  %40 = load i8, i8* %9, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 122
  br i1 %46, label %59, label %47

47:                                               ; preds = %43, %37
  %48 = load i8, i8* %9, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8, i8* %9, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sle i32 %53, 57
  br i1 %54, label %59, label %55

55:                                               ; preds = %51, %47
  %56 = load i8, i8* %9, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 95
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %43
  br label %68

60:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  %61 = load i8, i8* %9, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 34
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %59
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %6, align 8
  br label %33

72:                                               ; preds = %33
  %73 = load i64, i64* @quote_all_identifiers, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8
  %81 = call i32 @ScanKeywordLookup(i8* %80, i32* @ScanKeywords)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load i64*, i64** @ScanKeywordCategories, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @UNRESERVED_KEYWORD, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %84, %79
  br label %94

94:                                               ; preds = %93, %76
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i8*, i8** %3, align 8
  store i8* %98, i8** %2, align 8
  br label %138

99:                                               ; preds = %94
  %100 = load i8*, i8** %3, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = add nsw i64 %104, 2
  %106 = add nsw i64 %105, 1
  %107 = call i64 @palloc(i64 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %7, align 8
  %109 = load i8*, i8** %7, align 8
  store i8* %109, i8** %8, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %8, align 8
  store i8 34, i8* %110, align 1
  %112 = load i8*, i8** %3, align 8
  store i8* %112, i8** %6, align 8
  br label %113

113:                                              ; preds = %130, %99
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  store i8 %119, i8* %11, align 1
  %120 = load i8, i8* %11, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 34
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %8, align 8
  store i8 34, i8* %124, align 1
  br label %126

126:                                              ; preds = %123, %117
  %127 = load i8, i8* %11, align 1
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  store i8 %127, i8* %128, align 1
  br label %130

130:                                              ; preds = %126
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  br label %113

133:                                              ; preds = %113
  %134 = load i8*, i8** %8, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %8, align 8
  store i8 34, i8* %134, align 1
  %136 = load i8*, i8** %8, align 8
  store i8 0, i8* %136, align 1
  %137 = load i8*, i8** %7, align 8
  store i8* %137, i8** %2, align 8
  br label %138

138:                                              ; preds = %133, %97
  %139 = load i8*, i8** %2, align 8
  ret i8* %139
}

declare dso_local i32 @ScanKeywordLookup(i8*, i32*) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
