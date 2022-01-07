; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_levenshtein.c_reference_levdist.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_levenshtein.c_reference_levdist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEVENSHTEIN_MAX_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i64, i64, i64)* @reference_levdist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reference_levdist(i8* %0, i64 %1, i8* %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = mul i64 %27, %28
  store i64 %29, i64* %8, align 8
  br label %156

30:                                               ; preds = %7
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %15, align 8
  %36 = mul i64 %34, %35
  store i64 %36, i64* %8, align 8
  br label %156

37:                                               ; preds = %30
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @LEVENSHTEIN_MAX_LENGTH, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @LEVENSHTEIN_MAX_LENGTH, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %37
  store i64 -1, i64* %8, align 8
  br label %156

46:                                               ; preds = %41
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  %49 = call i64* @safe_emalloc(i64 %48, i32 8, i32 0)
  store i64* %49, i64** %16, align 8
  %50 = load i64, i64* %12, align 8
  %51 = add i64 %50, 1
  %52 = call i64* @safe_emalloc(i64 %51, i32 8, i32 0)
  store i64* %52, i64** %17, align 8
  store i64 0, i64* %23, align 8
  br label %53

53:                                               ; preds = %64, %46
  %54 = load i64, i64* %23, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ule i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i64, i64* %23, align 8
  %59 = load i64, i64* %13, align 8
  %60 = mul i64 %58, %59
  %61 = load i64*, i64** %16, align 8
  %62 = load i64, i64* %23, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %57
  %65 = load i64, i64* %23, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %23, align 8
  br label %53

67:                                               ; preds = %53
  store i64 0, i64* %22, align 8
  br label %68

68:                                               ; preds = %143, %67
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %146

72:                                               ; preds = %68
  %73 = load i64*, i64** %16, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = add i64 %75, %76
  %78 = load i64*, i64** %17, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 0
  store i64 %77, i64* %79, align 8
  store i64 0, i64* %23, align 8
  br label %80

80:                                               ; preds = %136, %72
  %81 = load i64, i64* %23, align 8
  %82 = load i64, i64* %12, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %139

84:                                               ; preds = %80
  %85 = load i64*, i64** %16, align 8
  %86 = load i64, i64* %23, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i64, i64* %22, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8*, i8** %11, align 8
  %95 = load i64, i64* %23, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %93, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %103

101:                                              ; preds = %84
  %102 = load i64, i64* %14, align 8
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i64 [ 0, %100 ], [ %102, %101 ]
  %105 = add i64 %88, %104
  store i64 %105, i64* %19, align 8
  %106 = load i64*, i64** %16, align 8
  %107 = load i64, i64* %23, align 8
  %108 = add i64 %107, 1
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %15, align 8
  %112 = add i64 %110, %111
  store i64 %112, i64* %20, align 8
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %19, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i64, i64* %20, align 8
  store i64 %117, i64* %19, align 8
  br label %118

118:                                              ; preds = %116, %103
  %119 = load i64*, i64** %17, align 8
  %120 = load i64, i64* %23, align 8
  %121 = getelementptr inbounds i64, i64* %119, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %122, %123
  store i64 %124, i64* %21, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %19, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i64, i64* %21, align 8
  store i64 %129, i64* %19, align 8
  br label %130

130:                                              ; preds = %128, %118
  %131 = load i64, i64* %19, align 8
  %132 = load i64*, i64** %17, align 8
  %133 = load i64, i64* %23, align 8
  %134 = add i64 %133, 1
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %131, i64* %135, align 8
  br label %136

136:                                              ; preds = %130
  %137 = load i64, i64* %23, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %23, align 8
  br label %80

139:                                              ; preds = %80
  %140 = load i64*, i64** %16, align 8
  store i64* %140, i64** %18, align 8
  %141 = load i64*, i64** %17, align 8
  store i64* %141, i64** %16, align 8
  %142 = load i64*, i64** %18, align 8
  store i64* %142, i64** %17, align 8
  br label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %22, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %22, align 8
  br label %68

146:                                              ; preds = %68
  %147 = load i64*, i64** %16, align 8
  %148 = load i64, i64* %12, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %19, align 8
  %151 = load i64*, i64** %16, align 8
  %152 = call i32 @efree(i64* %151)
  %153 = load i64*, i64** %17, align 8
  %154 = call i32 @efree(i64* %153)
  %155 = load i64, i64* %19, align 8
  store i64 %155, i64* %8, align 8
  br label %156

156:                                              ; preds = %146, %45, %33, %26
  %157 = load i64, i64* %8, align 8
  ret i64 %157
}

declare dso_local i64* @safe_emalloc(i64, i32, i32) #1

declare dso_local i32 @efree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
