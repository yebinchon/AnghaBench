; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgelq2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgelq2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgelq2_.i__ = internal global i32 0, align 4
@sgelq2_.k = internal global i32 0, align 4
@sgelq2_.aii = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SGELQ2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgelq2_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 -1
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 -1
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %15, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = load i32*, i32** %15, align 8
  store i32 -1, i32* %39, align 4
  br label %57

40:                                               ; preds = %7
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32*, i32** %15, align 8
  store i32 -2, i32* %45, align 4
  br label %56

46:                                               ; preds = %40
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @max(i32 1, i32 %50)
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** %15, align 8
  store i32 -4, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32*, i32** %15, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %18, align 4
  %65 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %18)
  store i32 0, i32* %8, align 4
  br label %181

66:                                               ; preds = %57
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @min(i32 %68, i32 %70)
  store i32 %71, i32* @sgelq2_.k, align 4
  %72 = load i32, i32* @sgelq2_.k, align 4
  store i32 %72, i32* %18, align 4
  store i32 1, i32* @sgelq2_.i__, align 4
  br label %73

73:                                               ; preds = %177, %66
  %74 = load i32, i32* @sgelq2_.i__, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %180

77:                                               ; preds = %73
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @sgelq2_.i__, align 4
  %81 = sub nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* @sgelq2_.i__, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %20, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @sgelq2_.i__, align 4
  %87 = load i32, i32* @sgelq2_.i__, align 4
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %85, i64 %91
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* @sgelq2_.i__, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @min(i32 %95, i32 %97)
  %99 = load i32, i32* %16, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %94, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %93, i64 %102
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* @sgelq2_.i__, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = call i32 @slarfg_(i32* %19, i32* %92, i32* %103, i32* %104, i32* %108)
  %110 = load i32, i32* @sgelq2_.i__, align 4
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %176

114:                                              ; preds = %77
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* @sgelq2_.i__, align 4
  %117 = load i32, i32* @sgelq2_.i__, align 4
  %118 = load i32, i32* %16, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %115, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* @sgelq2_.aii, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = load i32, i32* @sgelq2_.i__, align 4
  %126 = load i32, i32* @sgelq2_.i__, align 4
  %127 = load i32, i32* %16, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %125, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %124, i64 %130
  store i32 1, i32* %131, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @sgelq2_.i__, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %19, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @sgelq2_.i__, align 4
  %139 = sub nsw i32 %137, %138
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %20, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* @sgelq2_.i__, align 4
  %143 = load i32, i32* @sgelq2_.i__, align 4
  %144 = load i32, i32* %16, align 4
  %145 = mul nsw i32 %143, %144
  %146 = add nsw i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %141, i64 %147
  %149 = load i32*, i32** %12, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* @sgelq2_.i__, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* @sgelq2_.i__, align 4
  %156 = add nsw i32 %155, 1
  %157 = load i32, i32* @sgelq2_.i__, align 4
  %158 = load i32, i32* %16, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %154, i64 %161
  %163 = load i32*, i32** %12, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = call i32 @slarf_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %20, i32* %148, i32* %149, i32* %153, i32* %162, i32* %163, i32* %165)
  %167 = load i32, i32* @sgelq2_.aii, align 4
  %168 = load i32*, i32** %11, align 8
  %169 = load i32, i32* @sgelq2_.i__, align 4
  %170 = load i32, i32* @sgelq2_.i__, align 4
  %171 = load i32, i32* %16, align 4
  %172 = mul nsw i32 %170, %171
  %173 = add nsw i32 %169, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %168, i64 %174
  store i32 %167, i32* %175, align 4
  br label %176

176:                                              ; preds = %114, %77
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* @sgelq2_.i__, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* @sgelq2_.i__, align 4
  br label %73

180:                                              ; preds = %73
  store i32 0, i32* %8, align 4
  br label %181

181:                                              ; preds = %180, %61
  %182 = load i32, i32* %8, align 4
  ret i32 %182
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @slarfg_(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @slarf_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
