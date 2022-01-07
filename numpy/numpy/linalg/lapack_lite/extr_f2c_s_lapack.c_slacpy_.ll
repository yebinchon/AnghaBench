; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slacpy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slacpy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slacpy_.i__ = internal global i32 0, align 4
@slacpy_.j = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slacpy_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = add nsw i32 1, %32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = sext i32 %34 to i64
  %37 = sub i64 0, %36
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %13, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @lsame_(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %84

42:                                               ; preds = %7
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %19, align 4
  store i32 1, i32* @slacpy_.j, align 4
  br label %45

45:                                               ; preds = %80, %42
  %46 = load i32, i32* @slacpy_.j, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load i32, i32* @slacpy_.j, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @min(i32 %50, i32 %52)
  store i32 %53, i32* %20, align 4
  store i32 1, i32* @slacpy_.i__, align 4
  br label %54

54:                                               ; preds = %76, %49
  %55 = load i32, i32* @slacpy_.i__, align 4
  %56 = load i32, i32* %20, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* @slacpy_.i__, align 4
  %61 = load i32, i32* @slacpy_.j, align 4
  %62 = load i32, i32* %15, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* @slacpy_.i__, align 4
  %70 = load i32, i32* @slacpy_.j, align 4
  %71 = load i32, i32* %17, align 4
  %72 = mul nsw i32 %70, %71
  %73 = add nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %68, i64 %74
  store i32 %67, i32* %75, align 4
  br label %76

76:                                               ; preds = %58
  %77 = load i32, i32* @slacpy_.i__, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* @slacpy_.i__, align 4
  br label %54

79:                                               ; preds = %54
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* @slacpy_.j, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @slacpy_.j, align 4
  br label %45

83:                                               ; preds = %45
  br label %170

84:                                               ; preds = %7
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @lsame_(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %129

88:                                               ; preds = %84
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %19, align 4
  store i32 1, i32* @slacpy_.j, align 4
  br label %91

91:                                               ; preds = %125, %88
  %92 = load i32, i32* @slacpy_.j, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp sle i32 %92, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %91
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* @slacpy_.j, align 4
  store i32 %98, i32* @slacpy_.i__, align 4
  br label %99

99:                                               ; preds = %121, %95
  %100 = load i32, i32* @slacpy_.i__, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %99
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* @slacpy_.i__, align 4
  %106 = load i32, i32* @slacpy_.j, align 4
  %107 = load i32, i32* %15, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* @slacpy_.i__, align 4
  %115 = load i32, i32* @slacpy_.j, align 4
  %116 = load i32, i32* %17, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %113, i64 %119
  store i32 %112, i32* %120, align 4
  br label %121

121:                                              ; preds = %103
  %122 = load i32, i32* @slacpy_.i__, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* @slacpy_.i__, align 4
  br label %99

124:                                              ; preds = %99
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* @slacpy_.j, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @slacpy_.j, align 4
  br label %91

128:                                              ; preds = %91
  br label %169

129:                                              ; preds = %84
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %19, align 4
  store i32 1, i32* @slacpy_.j, align 4
  br label %132

132:                                              ; preds = %165, %129
  %133 = load i32, i32* @slacpy_.j, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %168

136:                                              ; preds = %132
  %137 = load i32*, i32** %9, align 8
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %20, align 4
  store i32 1, i32* @slacpy_.i__, align 4
  br label %139

139:                                              ; preds = %161, %136
  %140 = load i32, i32* @slacpy_.i__, align 4
  %141 = load i32, i32* %20, align 4
  %142 = icmp sle i32 %140, %141
  br i1 %142, label %143, label %164

143:                                              ; preds = %139
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* @slacpy_.i__, align 4
  %146 = load i32, i32* @slacpy_.j, align 4
  %147 = load i32, i32* %15, align 4
  %148 = mul nsw i32 %146, %147
  %149 = add nsw i32 %145, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %144, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %13, align 8
  %154 = load i32, i32* @slacpy_.i__, align 4
  %155 = load i32, i32* @slacpy_.j, align 4
  %156 = load i32, i32* %17, align 4
  %157 = mul nsw i32 %155, %156
  %158 = add nsw i32 %154, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %153, i64 %159
  store i32 %152, i32* %160, align 4
  br label %161

161:                                              ; preds = %143
  %162 = load i32, i32* @slacpy_.i__, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @slacpy_.i__, align 4
  br label %139

164:                                              ; preds = %139
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* @slacpy_.j, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* @slacpy_.j, align 4
  br label %132

168:                                              ; preds = %132
  br label %169

169:                                              ; preds = %168, %128
  br label %170

170:                                              ; preds = %169, %83
  ret i32 0
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
