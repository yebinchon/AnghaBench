; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaset_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slaset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slaset_.i__ = internal global i32 0, align 4
@slaset_.j = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slaset_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
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
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @lsame_(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %69

32:                                               ; preds = %7
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  store i32 2, i32* @slaset_.j, align 4
  br label %35

35:                                               ; preds = %65, %32
  %36 = load i32, i32* @slaset_.j, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load i32, i32* @slaset_.j, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @min(i32 %42, i32 %44)
  store i32 %45, i32* %18, align 4
  store i32 1, i32* @slaset_.i__, align 4
  br label %46

46:                                               ; preds = %61, %39
  %47 = load i32, i32* @slaset_.i__, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* @slaset_.i__, align 4
  %55 = load i32, i32* @slaset_.j, align 4
  %56 = load i32, i32* %15, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %53, i64 %59
  store i32 %52, i32* %60, align 4
  br label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @slaset_.i__, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* @slaset_.i__, align 4
  br label %46

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @slaset_.j, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @slaset_.j, align 4
  br label %35

68:                                               ; preds = %35
  br label %145

69:                                               ; preds = %7
  %70 = load i8*, i8** %8, align 8
  %71 = call i8* @lsame_(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @min(i32 %75, i32 %77)
  store i32 %78, i32* %17, align 4
  store i32 1, i32* @slaset_.j, align 4
  br label %79

79:                                               ; preds = %107, %73
  %80 = load i32, i32* @slaset_.j, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* @slaset_.j, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @slaset_.i__, align 4
  br label %88

88:                                               ; preds = %103, %83
  %89 = load i32, i32* @slaset_.i__, align 4
  %90 = load i32, i32* %18, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %88
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = load i32, i32* @slaset_.i__, align 4
  %97 = load i32, i32* @slaset_.j, align 4
  %98 = load i32, i32* %15, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %95, i64 %101
  store i32 %94, i32* %102, align 4
  br label %103

103:                                              ; preds = %92
  %104 = load i32, i32* @slaset_.i__, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @slaset_.i__, align 4
  br label %88

106:                                              ; preds = %88
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* @slaset_.j, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @slaset_.j, align 4
  br label %79

110:                                              ; preds = %79
  br label %144

111:                                              ; preds = %69
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %17, align 4
  store i32 1, i32* @slaset_.j, align 4
  br label %114

114:                                              ; preds = %140, %111
  %115 = load i32, i32* @slaset_.j, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %114
  %119 = load i32*, i32** %9, align 8
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %18, align 4
  store i32 1, i32* @slaset_.i__, align 4
  br label %121

121:                                              ; preds = %136, %118
  %122 = load i32, i32* @slaset_.i__, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* @slaset_.i__, align 4
  %130 = load i32, i32* @slaset_.j, align 4
  %131 = load i32, i32* %15, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %128, i64 %134
  store i32 %127, i32* %135, align 4
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* @slaset_.i__, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* @slaset_.i__, align 4
  br label %121

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* @slaset_.j, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* @slaset_.j, align 4
  br label %114

143:                                              ; preds = %114
  br label %144

144:                                              ; preds = %143, %110
  br label %145

145:                                              ; preds = %144, %68
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @min(i32 %147, i32 %149)
  store i32 %150, i32* %17, align 4
  store i32 1, i32* @slaset_.i__, align 4
  br label %151

151:                                              ; preds = %166, %145
  %152 = load i32, i32* @slaset_.i__, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp sle i32 %152, %153
  br i1 %154, label %155, label %169

155:                                              ; preds = %151
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* @slaset_.i__, align 4
  %160 = load i32, i32* @slaset_.i__, align 4
  %161 = load i32, i32* %15, align 4
  %162 = mul nsw i32 %160, %161
  %163 = add nsw i32 %159, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  store i32 %157, i32* %165, align 4
  br label %166

166:                                              ; preds = %155
  %167 = load i32, i32* @slaset_.i__, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @slaset_.i__, align 4
  br label %151

169:                                              ; preds = %151
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
