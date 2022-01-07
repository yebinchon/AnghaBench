; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_cash.c_num_word.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_cash.c_num_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_word.buf = internal global [128 x i8] zeroinitializer, align 16
@num_word.small = internal constant [28 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"eleven\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"twelve\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"thirteen\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"fourteen\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"fifteen\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"seventeen\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"eighteen\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"nineteen\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"twenty\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"thirty\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"forty\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"fifty\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"seventy\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"eighty\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"ninety\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s hundred\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"%s hundred %s\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"%s hundred and %s\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"%s hundred %s %s\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @num_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @num_word(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** getelementptr inbounds ([28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 18), i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = srem i32 %6, 100
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 20
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %122

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 100
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0), i8* %23)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8** %2, align 8
  br label %122

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 99
  br i1 %27, label %28, label %82

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = srem i32 %29, 10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 10
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = sdiv i32 %36, 100
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sdiv i32 %42, 10
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), i8* %40, i8* %46)
  br label %81

48:                                               ; preds = %32, %28
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 20
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = sdiv i32 %52, 100
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i8* %56, i8* %60)
  br label %80

62:                                               ; preds = %48
  %63 = load i32, i32* %3, align 4
  %64 = sdiv i32 %63, 100
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sdiv i32 %69, 10
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = srem i32 %74, 10
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0), i8* %67, i8* %73, i8* %78)
  br label %80

80:                                               ; preds = %62, %51
  br label %81

81:                                               ; preds = %80, %35
  br label %121

82:                                               ; preds = %25
  %83 = load i32, i32* %3, align 4
  %84 = srem i32 %83, 10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  %88 = icmp sgt i32 %87, 10
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i8**, i8*** %4, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sdiv i32 %91, 10
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* %95)
  br label %120

97:                                               ; preds = %86, %82
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 20
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i8* %104)
  br label %119

106:                                              ; preds = %97
  %107 = load i8**, i8*** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sdiv i32 %108, 10
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %107, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = srem i32 %113, 10
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [28 x i8*], [28 x i8*]* @num_word.small, i64 0, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* %112, i8* %117)
  br label %119

119:                                              ; preds = %106, %100
  br label %120

120:                                              ; preds = %119, %89
  br label %121

121:                                              ; preds = %120, %81
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @num_word.buf, i64 0, i64 0), i8** %2, align 8
  br label %122

122:                                              ; preds = %121, %18, %10
  %123 = load i8*, i8** %2, align 8
  ret i8* %123
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
