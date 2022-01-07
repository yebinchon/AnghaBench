; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgetrs_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgetrs_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgetrs_.notran = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SGETRS\00", align 1
@c__1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Unit\00", align 1
@c_b15 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_n1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgetrs_(i8* %0, i64* %1, i64* %2, i32* %3, i64* %4, i64* %5, i32* %6, i64* %7, i64* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i64* %1, i64** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32* %3, i32** %14, align 8
  store i64* %4, i64** %15, align 8
  store i64* %5, i64** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64* %7, i64** %18, align 8
  store i64* %8, i64** %19, align 8
  %25 = load i64*, i64** %15, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %20, align 8
  %27 = load i64, i64* %20, align 8
  %28 = add nsw i64 1, %27
  store i64 %28, i64* %21, align 8
  %29 = load i64, i64* %21, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = sub i64 0, %29
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %14, align 8
  %33 = load i64*, i64** %16, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 -1
  store i64* %34, i64** %16, align 8
  %35 = load i64*, i64** %18, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %22, align 8
  %37 = load i64, i64* %22, align 8
  %38 = add nsw i64 1, %37
  store i64 %38, i64* %23, align 8
  %39 = load i64, i64* %23, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = sub i64 0, %39
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %17, align 8
  %43 = load i64*, i64** %19, align 8
  store i64 0, i64* %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = call i8* @lsame_(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %45, i8** @sgetrs_.notran, align 8
  %46 = load i8*, i8** @sgetrs_.notran, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %9
  %49 = load i8*, i8** %11, align 8
  %50 = call i8* @lsame_(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp ne i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @lsame_(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp ne i8* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i64*, i64** %19, align 8
  store i64 -1, i64* %57, align 8
  br label %92

58:                                               ; preds = %52, %48, %9
  %59 = load i64*, i64** %12, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i64*, i64** %19, align 8
  store i64 -2, i64* %63, align 8
  br label %91

64:                                               ; preds = %58
  %65 = load i64*, i64** %13, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64*, i64** %19, align 8
  store i64 -3, i64* %69, align 8
  br label %90

70:                                               ; preds = %64
  %71 = load i64*, i64** %15, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @max(i32 1, i64 %74)
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i64*, i64** %19, align 8
  store i64 -5, i64* %78, align 8
  br label %89

79:                                               ; preds = %70
  %80 = load i64*, i64** %18, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %12, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @max(i32 1, i64 %83)
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i64*, i64** %19, align 8
  store i64 -8, i64* %87, align 8
  br label %88

88:                                               ; preds = %86, %79
  br label %89

89:                                               ; preds = %88, %77
  br label %90

90:                                               ; preds = %89, %68
  br label %91

91:                                               ; preds = %90, %62
  br label %92

92:                                               ; preds = %91, %56
  %93 = load i64*, i64** %19, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i64*, i64** %19, align 8
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 0, %98
  store i64 %99, i64* %24, align 8
  %100 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64* %24)
  store i32 0, i32* %10, align 4
  br label %178

101:                                              ; preds = %92
  %102 = load i64*, i64** %12, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i64*, i64** %13, align 8
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105, %101
  store i32 0, i32* %10, align 4
  br label %178

110:                                              ; preds = %105
  %111 = load i8*, i8** @sgetrs_.notran, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %145

113:                                              ; preds = %110
  %114 = load i64*, i64** %13, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = load i64, i64* %23, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i64*, i64** %18, align 8
  %119 = load i64*, i64** %12, align 8
  %120 = load i64*, i64** %16, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 1
  %122 = call i32 @slaswp_(i64* %114, i32* %117, i64* %118, i64* @c__1, i64* %119, i64* %121, i64* @c__1)
  %123 = load i64*, i64** %12, align 8
  %124 = load i64*, i64** %13, align 8
  %125 = load i32*, i32** %14, align 8
  %126 = load i64, i64* %21, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i64*, i64** %15, align 8
  %129 = load i32*, i32** %17, align 8
  %130 = load i64, i64* %23, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i64*, i64** %18, align 8
  %133 = call i32 @strsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64* %123, i64* %124, i32* @c_b15, i32* %127, i64* %128, i32* %131, i64* %132)
  %134 = load i64*, i64** %12, align 8
  %135 = load i64*, i64** %13, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load i64, i64* %21, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i64*, i64** %15, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = load i64, i64* %23, align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i64*, i64** %18, align 8
  %144 = call i32 @strsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64* %134, i64* %135, i32* @c_b15, i32* %138, i64* %139, i32* %142, i64* %143)
  br label %177

145:                                              ; preds = %110
  %146 = load i64*, i64** %12, align 8
  %147 = load i64*, i64** %13, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i64, i64* %21, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  %151 = load i64*, i64** %15, align 8
  %152 = load i32*, i32** %17, align 8
  %153 = load i64, i64* %23, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i64*, i64** %18, align 8
  %156 = call i32 @strsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64* %146, i64* %147, i32* @c_b15, i32* %150, i64* %151, i32* %154, i64* %155)
  %157 = load i64*, i64** %12, align 8
  %158 = load i64*, i64** %13, align 8
  %159 = load i32*, i32** %14, align 8
  %160 = load i64, i64* %21, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i64*, i64** %15, align 8
  %163 = load i32*, i32** %17, align 8
  %164 = load i64, i64* %23, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i64*, i64** %18, align 8
  %167 = call i32 @strsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64* %157, i64* %158, i32* @c_b15, i32* %161, i64* %162, i32* %165, i64* %166)
  %168 = load i64*, i64** %13, align 8
  %169 = load i32*, i32** %17, align 8
  %170 = load i64, i64* %23, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i64*, i64** %18, align 8
  %173 = load i64*, i64** %12, align 8
  %174 = load i64*, i64** %16, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 1
  %176 = call i32 @slaswp_(i64* %168, i32* %171, i64* %172, i64* @c__1, i64* %173, i64* %175, i64* @c_n1)
  br label %177

177:                                              ; preds = %145, %113
  store i32 0, i32* %10, align 4
  br label %178

178:                                              ; preds = %177, %109, %96
  %179 = load i32, i32* %10, align 4
  ret i32 %179
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @xerbla_(i8*, i64*) #1

declare dso_local i32 @slaswp_(i64*, i32*, i64*, i64*, i64*, i64*, i64*) #1

declare dso_local i32 @strsm_(i8*, i8*, i8*, i8*, i64*, i64*, i32*, i32*, i64*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
