; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_mcelem_array_contain_overlap_selec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_mcelem_array_contain_overlap_selec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_CONTAIN_SEL = common dso_local global i64 0, align 8
@OID_ARRAY_CONTAINS_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, i32, i32*, i32, i32*, i32, i64, i32*)* @mcelem_array_contain_overlap_selec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @mcelem_array_contain_overlap_selec(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 3
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %22, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load i64, i64* @DEFAULT_CONTAIN_SEL, align 8
  %41 = trunc i64 %40 to i32
  %42 = mul nsw i32 2, %41
  store i32 %42, i32* %22, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @floor_log2(i32 %45)
  %47 = mul nsw i32 %44, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 1, i32* %21, align 4
  br label %54

53:                                               ; preds = %43
  store i32 0, i32* %21, align 4
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @OID_ARRAY_CONTAINS_OP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store double 1.000000e+00, double* %17, align 8
  br label %60

59:                                               ; preds = %54
  store double 0.000000e+00, double* %17, align 8
  br label %60

60:                                               ; preds = %59, %58
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %61

61:                                               ; preds = %162, %60
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %165

65:                                               ; preds = %61
  store i32 0, i32* %23, align 4
  %66 = load i32, i32* %20, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %20, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @element_compare(i32* %73, i32* %77, i32* %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %162

82:                                               ; preds = %68, %65
  %83 = load i32, i32* %21, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = call i32 @find_next_mcelem(i32* %86, i32 %87, i32 %92, i32* %19, i32* %93)
  store i32 %94, i32* %23, align 4
  br label %123

95:                                               ; preds = %82
  br label %96

96:                                               ; preds = %121, %95
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @element_compare(i32* %104, i32* %108, i32* %109)
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %24, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %121

116:                                              ; preds = %100
  %117 = load i32, i32* %24, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, i32* %23, align 4
  br label %120

120:                                              ; preds = %119, %116
  br label %122

121:                                              ; preds = %113
  br label %96

122:                                              ; preds = %120, %96
  br label %123

123:                                              ; preds = %122, %85
  %124 = load i32, i32* %23, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i32*, i32** %11, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %19, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sitofp i32 %134 to double
  store double %135, double* %18, align 8
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %143

138:                                              ; preds = %126, %123
  %139 = load i64, i64* @DEFAULT_CONTAIN_SEL, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sdiv i32 %140, 2
  %142 = call double @Min(i64 %139, i32 %141)
  store double %142, double* %18, align 8
  br label %143

143:                                              ; preds = %138, %129
  %144 = load i64, i64* %15, align 8
  %145 = load i64, i64* @OID_ARRAY_CONTAINS_OP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load double, double* %18, align 8
  %149 = load double, double* %17, align 8
  %150 = fmul double %149, %148
  store double %150, double* %17, align 8
  br label %159

151:                                              ; preds = %143
  %152 = load double, double* %17, align 8
  %153 = load double, double* %18, align 8
  %154 = fadd double %152, %153
  %155 = load double, double* %17, align 8
  %156 = load double, double* %18, align 8
  %157 = fmul double %155, %156
  %158 = fsub double %154, %157
  store double %158, double* %17, align 8
  br label %159

159:                                              ; preds = %151, %147
  %160 = load double, double* %17, align 8
  %161 = call i32 @CLAMP_PROBABILITY(double %160)
  br label %162

162:                                              ; preds = %159, %81
  %163 = load i32, i32* %20, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %20, align 4
  br label %61

165:                                              ; preds = %61
  %166 = load double, double* %17, align 8
  ret double %166
}

declare dso_local i32 @floor_log2(i32) #1

declare dso_local i32 @element_compare(i32*, i32*, i32*) #1

declare dso_local i32 @find_next_mcelem(i32*, i32, i32, i32*, i32*) #1

declare dso_local double @Min(i64, i32) #1

declare dso_local i32 @CLAMP_PROBABILITY(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
