; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatInsertNumbers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_numbers.c_xsltNumberFormatInsertNumbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_10__*, i32* }

@.str = private unnamed_addr constant [29 x i8] c"xsl-number : negative value\0A\00", align 1
@default_token = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@DEFAULT_SEPARATOR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, double*, i32, %struct.TYPE_11__*, i32)* @xsltNumberFormatInsertNumbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xsltNumberFormatInsertNumbers(%struct.TYPE_9__* %0, double* %1, i32 %2, %struct.TYPE_11__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @xmlBufferCat(i32 %19, i32* %22)
  br label %24

24:                                               ; preds = %18, %5
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %167, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %170

29:                                               ; preds = %25
  %30 = load double*, double** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %30, i64 %35
  %37 = load double, double* %36, align 8
  store double %37, double* %12, align 8
  %38 = load double, double* %12, align 8
  %39 = fadd double %38, 5.000000e-01
  %40 = call double @llvm.floor.f64(double %39)
  store double %40, double* %12, align 8
  %41 = load double, double* %12, align 8
  %42 = fcmp olt double %41, 0.000000e+00
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = call i32 @xsltTransformError(i32* null, i32* null, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store double 0.000000e+00, double* %12, align 8
  br label %45

45:                                               ; preds = %43, %29
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i64 %56
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %13, align 8
  br label %75

58:                                               ; preds = %45
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i64 %71
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %13, align 8
  br label %74

73:                                               ; preds = %58
  store %struct.TYPE_10__* @default_token, %struct.TYPE_10__** %13, align 8
  br label %74

74:                                               ; preds = %73, %63
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @xmlBufferCat(i32 %84, i32* %87)
  br label %93

89:                                               ; preds = %78
  %90 = load i32, i32* %10, align 4
  %91 = load i8*, i8** @DEFAULT_SEPARATOR, align 8
  %92 = call i32 @xmlBufferCCat(i32 %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %83
  br label %94

94:                                               ; preds = %93, %75
  %95 = load double, double* %12, align 8
  %96 = call i32 @xmlXPathIsInf(double %95)
  switch i32 %96, label %103 [
    i32 -1, label %97
    i32 1, label %100
  ]

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @xmlBufferCCat(i32 %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %166

100:                                              ; preds = %94
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @xmlBufferCCat(i32 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %166

103:                                              ; preds = %94
  %104 = load double, double* %12, align 8
  %105 = call i32 @xmlXPathIsNaN(double %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @xmlBufferCCat(i32 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %165

110:                                              ; preds = %103
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  switch i32 %113, label %138 [
    i32 65, label %114
    i32 97, label %120
    i32 73, label %126
    i32 105, label %132
  ]

114:                                              ; preds = %110
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load double, double* %12, align 8
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @xsltNumberFormatAlpha(%struct.TYPE_9__* %115, i32 %116, double %117, i32 %118)
  br label %164

120:                                              ; preds = %110
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load double, double* %12, align 8
  %124 = load i32, i32* @FALSE, align 4
  %125 = call i32 @xsltNumberFormatAlpha(%struct.TYPE_9__* %121, i32 %122, double %123, i32 %124)
  br label %164

126:                                              ; preds = %110
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load double, double* %12, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = call i32 @xsltNumberFormatRoman(%struct.TYPE_9__* %127, i32 %128, double %129, i32 %130)
  br label %164

132:                                              ; preds = %110
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load double, double* %12, align 8
  %136 = load i32, i32* @FALSE, align 4
  %137 = call i32 @xsltNumberFormatRoman(%struct.TYPE_9__* %133, i32 %134, double %135, i32 %136)
  br label %164

138:                                              ; preds = %110
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @IS_DIGIT_ZERO(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = load double, double* %12, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @xsltNumberFormatDecimal(i32 %145, double %146, i32 %149, i32 %152, i32 %155, i32 %158, i32 %161)
  br label %163

163:                                              ; preds = %144, %138
  br label %164

164:                                              ; preds = %163, %132, %126, %120, %114
  br label %165

165:                                              ; preds = %164, %107
  br label %166

166:                                              ; preds = %165, %100, %97
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %11, align 4
  br label %25

170:                                              ; preds = %25
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @xmlBufferCat(i32 %176, i32* %179)
  br label %181

181:                                              ; preds = %175, %170
  ret void
}

declare dso_local i32 @xmlBufferCat(i32, i32*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i32 @xsltTransformError(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @xmlBufferCCat(i32, i8*) #1

declare dso_local i32 @xmlXPathIsInf(double) #1

declare dso_local i32 @xmlXPathIsNaN(double) #1

declare dso_local i32 @xsltNumberFormatAlpha(%struct.TYPE_9__*, i32, double, i32) #1

declare dso_local i32 @xsltNumberFormatRoman(%struct.TYPE_9__*, i32, double, i32) #1

declare dso_local i32 @IS_DIGIT_ZERO(i32) #1

declare dso_local i32 @xsltNumberFormatDecimal(i32, double, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
