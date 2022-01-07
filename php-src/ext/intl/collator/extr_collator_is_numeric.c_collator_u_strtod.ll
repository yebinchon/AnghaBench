; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_is_numeric.c_collator_u_strtod.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/collator/extr_collator_is_numeric.c_collator_u_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_heap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32**)* @collator_u_strtod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @collator_u_strtod(i32* %0, i32** %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca double, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %17 = load i32*, i32** %4, align 8
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %24, %2
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @u_isspace(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  br label %20

28:                                               ; preds = %20
  %29 = load i32*, i32** %6, align 8
  store i32* %29, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 45
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 43
  br i1 %34, label %35, label %39

35:                                               ; preds = %32, %28
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %32
  br label %40

40:                                               ; preds = %48, %39
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 48
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = icmp sle i32 %44, 57
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %8, align 4
  br label %40

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 46
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %67, %55
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 48
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp sle i32 %63, 57
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ false, %59 ], [ %64, %62 ]
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  store i32 1, i32* %9, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  br label %59

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71, %52
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 101
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = icmp eq i32 %76, 69
  br i1 %77, label %78, label %114

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %114

81:                                               ; preds = %78
  %82 = load i32*, i32** %6, align 8
  store i32* %82, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %91, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %91, label %95

91:                                               ; preds = %88, %81
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %104, %95
  %97 = load i32, i32* %8, align 4
  %98 = icmp sge i32 %97, 48
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %8, align 4
  %101 = icmp sle i32 %100, 57
  br label %102

102:                                              ; preds = %99, %96
  %103 = phi i1 [ false, %96 ], [ %101, %99 ]
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  store i32 1, i32* %11, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %6, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  br label %96

108:                                              ; preds = %102
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  %112 = load i32*, i32** %10, align 8
  store i32* %112, i32** %6, align 8
  br label %113

113:                                              ; preds = %111, %108
  br label %114

114:                                              ; preds = %113, %78, %75
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %168

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = ptrtoint i32* %118 to i64
  %121 = ptrtoint i32* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 4
  store i64 %123, i64* %15, align 8
  %124 = load i32, i32* @use_heap, align 4
  %125 = call i32 @ALLOCA_FLAG(i32 %124)
  %126 = load i64, i64* %15, align 8
  %127 = icmp ult i64 %126, 64
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  store i8* %129, i8** %13, align 8
  br label %136

130:                                              ; preds = %117
  %131 = load i64, i64* %15, align 8
  %132 = add i64 %131, 1
  %133 = load i32, i32* @use_heap, align 4
  %134 = call i64 @do_alloca(i64 %132, i32 %133)
  %135 = inttoptr i64 %134 to i8*
  store i8* %135, i8** %13, align 8
  br label %136

136:                                              ; preds = %130, %128
  %137 = load i8*, i8** %13, align 8
  store i8* %137, i8** %14, align 8
  br label %138

138:                                              ; preds = %142, %136
  %139 = load i32*, i32** %7, align 8
  %140 = load i32*, i32** %6, align 8
  %141 = icmp ult i32* %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %7, align 8
  %145 = load i32, i32* %143, align 4
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %14, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %14, align 8
  store i8 %146, i8* %147, align 1
  br label %138

149:                                              ; preds = %138
  %150 = load i8*, i8** %14, align 8
  store i8 0, i8* %150, align 1
  %151 = load i8*, i8** %13, align 8
  %152 = call double @zend_strtod(i8* %151, i32* null)
  store double %152, double* %16, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %155 = icmp ne i8* %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load i8*, i8** %13, align 8
  %158 = load i32, i32* @use_heap, align 4
  %159 = call i32 @free_alloca(i8* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %149
  %161 = load i32**, i32*** %5, align 8
  %162 = icmp ne i32** %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32*, i32** %6, align 8
  %165 = load i32**, i32*** %5, align 8
  store i32* %164, i32** %165, align 8
  br label %166

166:                                              ; preds = %163, %160
  %167 = load double, double* %16, align 8
  store double %167, double* %3, align 8
  br label %175

168:                                              ; preds = %114
  %169 = load i32**, i32*** %5, align 8
  %170 = icmp ne i32** %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32*, i32** %4, align 8
  %173 = load i32**, i32*** %5, align 8
  store i32* %172, i32** %173, align 8
  br label %174

174:                                              ; preds = %171, %168
  store double 0.000000e+00, double* %3, align 8
  br label %175

175:                                              ; preds = %174, %166
  %176 = load double, double* %3, align 8
  ret double %176
}

declare dso_local i64 @u_isspace(i32) #1

declare dso_local i32 @ALLOCA_FLAG(i32) #1

declare dso_local i64 @do_alloca(i64, i32) #1

declare dso_local double @zend_strtod(i8*, i32*) #1

declare dso_local i32 @free_alloca(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
