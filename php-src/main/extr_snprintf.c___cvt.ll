; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_snprintf.c___cvt.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_snprintf.c___cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"INF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"NAN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (double, i32, i32*, i32*, i32, i32)* @__cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__cvt(double %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  store double %0, double* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* null, i8** %14, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %6
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 0, %22
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %18, align 8
  br label %30

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %18, align 8
  br label %30

30:                                               ; preds = %26, %21
  %31 = load double, double* %8, align 8
  %32 = fcmp oeq double %31, 0.000000e+00
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 1, %34
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %11, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i64, i64* %18, align 8
  br label %43

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i64 [ %41, %40 ], [ 2, %42 ]
  %45 = call i64 @malloc(i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %14, align 8
  store i8* %46, i8** %16, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i8* null, i8** %7, align 8
  br label %138

49:                                               ; preds = %43
  %50 = load i8*, i8** %16, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %16, align 8
  store i8 48, i8* %50, align 1
  %52 = load i8*, i8** %16, align 8
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %14, align 8
  store i8* %56, i8** %7, align 8
  br label %138

57:                                               ; preds = %49
  br label %116

58:                                               ; preds = %30
  %59 = load double, double* %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 2
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i8* @zend_dtoa(double %59, i32 %61, i32 %62, i32* %63, i32* %64, i8** %16)
  store i8* %65, i8** %15, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 9999
  br i1 %68, label %69, label %81

69:                                               ; preds = %58
  %70 = load i32*, i32** %10, align 8
  store i32 0, i32* %70, align 4
  %71 = load i8*, i8** %15, align 8
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %17, align 1
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @zend_freedtoa(i8* %73)
  %75 = load i8, i8* %17, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 73
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)
  %80 = call i8* @strdup(i8* %79)
  store i8* %80, i8** %7, align 8
  br label %138

81:                                               ; preds = %58
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %18, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %18, align 8
  br label %93

93:                                               ; preds = %87, %84, %81
  %94 = load i64, i64* %18, align 8
  %95 = add i64 %94, 1
  %96 = call i64 @malloc(i64 %95)
  %97 = inttoptr i64 %96 to i8*
  store i8* %97, i8** %14, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @zend_freedtoa(i8* %100)
  store i8* null, i8** %7, align 8
  br label %138

102:                                              ; preds = %93
  %103 = load i8*, i8** %14, align 8
  %104 = load i8*, i8** %15, align 8
  %105 = load i64, i64* %18, align 8
  %106 = call i32 @strlcpy(i8* %103, i8* %104, i64 %105)
  %107 = load i8*, i8** %14, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  store i8* %113, i8** %16, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = call i32 @zend_freedtoa(i8* %114)
  br label %116

116:                                              ; preds = %102, %57
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load i8*, i8** %16, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = load i64, i64* %18, align 8
  %126 = sub i64 %125, %124
  store i64 %126, i64* %18, align 8
  br label %127

127:                                              ; preds = %131, %119
  %128 = load i64, i64* %18, align 8
  %129 = add i64 %128, -1
  store i64 %129, i64* %18, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i8*, i8** %16, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %16, align 8
  store i8 48, i8* %132, align 1
  br label %127

134:                                              ; preds = %127
  %135 = load i8*, i8** %16, align 8
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %134, %116
  %137 = load i8*, i8** %14, align 8
  store i8* %137, i8** %7, align 8
  br label %138

138:                                              ; preds = %136, %99, %69, %55, %48
  %139 = load i8*, i8** %7, align 8
  ret i8* %139
}

declare dso_local i64 @malloc(i64) #1

declare dso_local i8* @zend_dtoa(double, i32, i32, i32*, i32*, i8**) #1

declare dso_local i32 @zend_freedtoa(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
