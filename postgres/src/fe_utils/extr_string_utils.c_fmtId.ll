; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_fmtId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_fmtId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@quote_all_identifiers = common dso_local global i64 0, align 8
@ScanKeywords = common dso_local global i32 0, align 4
@ScanKeywordCategories = common dso_local global i64* null, align 8
@UNRESERVED_KEYWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fmtId(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call %struct.TYPE_5__* (...) @getLocalPQExpBuffer()
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @quote_all_identifiers, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 97
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 122
  br i1 %22, label %30, label %23

23:                                               ; preds = %17, %11
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 95
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %67

30:                                               ; preds = %23, %17
  %31 = load i8*, i8** %2, align 8
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %63, %30
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 97
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sle i32 %44, 122
  br i1 %45, label %62, label %46

46:                                               ; preds = %41, %36
  %47 = load i8*, i8** %4, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp sge i32 %49, 48
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 57
  br i1 %55, label %62, label %56

56:                                               ; preds = %51, %46
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 95
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  store i32 1, i32* %5, align 4
  br label %66

62:                                               ; preds = %56, %51, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  br label %32

66:                                               ; preds = %61, %32
  br label %67

67:                                               ; preds = %66, %29
  br label %68

68:                                               ; preds = %67, %10
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %2, align 8
  %73 = call i32 @ScanKeywordLookup(i8* %72, i32* @ScanKeywords)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load i64*, i64** @ScanKeywordCategories, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @UNRESERVED_KEYWORD, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %76, %71
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = load i8*, i8** %2, align 8
  %92 = call i32 @appendPQExpBufferStr(%struct.TYPE_5__* %90, i8* %91)
  br label %120

93:                                               ; preds = %86
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %95 = call i32 @appendPQExpBufferChar(%struct.TYPE_5__* %94, i8 signext 34)
  %96 = load i8*, i8** %2, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %114, %93
  %98 = load i8*, i8** %4, align 8
  %99 = load i8, i8* %98, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %117

101:                                              ; preds = %97
  %102 = load i8*, i8** %4, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 34
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = call i32 @appendPQExpBufferChar(%struct.TYPE_5__* %107, i8 signext 34)
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = call i32 @appendPQExpBufferChar(%struct.TYPE_5__* %110, i8 signext %112)
  br label %114

114:                                              ; preds = %109
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %4, align 8
  br label %97

117:                                              ; preds = %97
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = call i32 @appendPQExpBufferChar(%struct.TYPE_5__* %118, i8 signext 34)
  br label %120

120:                                              ; preds = %117, %89
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  ret i8* %123
}

declare dso_local %struct.TYPE_5__* @getLocalPQExpBuffer(...) #1

declare dso_local i32 @ScanKeywordLookup(i8*, i32*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_5__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
