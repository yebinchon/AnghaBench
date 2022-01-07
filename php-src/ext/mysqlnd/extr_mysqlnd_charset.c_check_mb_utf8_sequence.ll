; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_charset.c_check_mb_utf8_sequence.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_charset.c_check_mb_utf8_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @check_mb_utf8_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mb_utf8_sequence(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp uge i8* %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %126

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %126

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 194
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %126

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 224
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ugt i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %126

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = xor i32 %36, 128
  %38 = icmp slt i32 %37, 64
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %126

40:                                               ; preds = %32
  store i32 2, i32* %3, align 4
  br label %126

41:                                               ; preds = %23
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 240
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ugt i8* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %126

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = xor i32 %54, 128
  %56 = icmp slt i32 %55, 64
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = xor i32 %61, 128
  %63 = icmp slt i32 %62, 64
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 225
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 160
  br i1 %72, label %74, label %73

73:                                               ; preds = %67, %57, %50
  store i32 0, i32* %3, align 4
  br label %126

74:                                               ; preds = %67, %64
  store i32 3, i32* %3, align 4
  br label %126

75:                                               ; preds = %41
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 245
  br i1 %77, label %78, label %125

78:                                               ; preds = %75
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i8*, i8** %5, align 8
  %82 = icmp ugt i8* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %126

84:                                               ; preds = %78
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = xor i32 %88, 128
  %90 = icmp slt i32 %89, 64
  br i1 %90, label %91, label %123

91:                                               ; preds = %84
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = xor i32 %95, 128
  %97 = icmp slt i32 %96, 64
  br i1 %97, label %98, label %123

98:                                               ; preds = %91
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 3
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = xor i32 %102, 128
  %104 = icmp slt i32 %103, 64
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load i32, i32* %6, align 4
  %107 = icmp sge i32 %106, 241
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sge i32 %112, 144
  br i1 %113, label %114, label %123

114:                                              ; preds = %108, %105
  %115 = load i32, i32* %6, align 4
  %116 = icmp sle i32 %115, 243
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load i8*, i8** %4, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp sle i32 %121, 143
  br i1 %122, label %124, label %123

123:                                              ; preds = %117, %108, %98, %91, %84
  store i32 0, i32* %3, align 4
  br label %126

124:                                              ; preds = %117, %114
  store i32 4, i32* %3, align 4
  br label %126

125:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %124, %123, %83, %74, %73, %49, %40, %39, %31, %22, %18, %10
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
