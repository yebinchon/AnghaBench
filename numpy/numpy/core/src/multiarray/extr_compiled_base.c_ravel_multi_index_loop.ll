; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_ravel_multi_index_loop.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_compiled_base.c_ravel_multi_index_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"cannot unravel if shape has zero entries (is empty).\00", align 1
@NPY_FAIL = common dso_local global i32 0, align 4
@NPY_BEGIN_ALLOW_THREADS = common dso_local global i32 0, align 4
@NPY_END_ALLOW_THREADS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"invalid entry in coordinates array\00", align 1
@NPY_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*, i64, i32*, i8**, i64*)* @ravel_multi_index_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravel_multi_index_loop(i32 %0, i64* %1, i64* %2, i64 %3, i32* %4, i8** %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store i64* %1, i64** %10, align 8
  store i64* %2, i64** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i64* %6, i64** %15, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load i64*, i64** %10, align 8
  %30 = load i32, i32* %16, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @PyExc_ValueError, align 4
  %37 = call i32 @PyErr_SetString(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @NPY_FAIL, align 4
  store i32 %38, i32* %8, align 4
  br label %188

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %16, align 4
  br label %24

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43, %7
  %45 = load i32, i32* @NPY_BEGIN_ALLOW_THREADS, align 4
  store i8 0, i8* %17, align 1
  br label %46

46:                                               ; preds = %158, %44
  %47 = load i64, i64* %12, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %12, align 8
  %49 = icmp ne i64 %47, 0
  br i1 %49, label %50, label %177

50:                                               ; preds = %46
  store i64 0, i64* %20, align 8
  store i32 0, i32* %16, align 4
  br label %51

51:                                               ; preds = %155, %50
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %158

55:                                               ; preds = %51
  %56 = load i64*, i64** %10, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %19, align 8
  %61 = load i8**, i8*** %14, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to i64*
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %18, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %134 [
    i32 129, label %73
    i32 128, label %82
    i32 130, label %121
  ]

73:                                               ; preds = %55
  %74 = load i64, i64* %18, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* %19, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %73
  store i8 1, i8* %17, align 1
  br label %178

81:                                               ; preds = %76
  br label %134

82:                                               ; preds = %55
  %83 = load i64, i64* %18, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i64, i64* %19, align 8
  %87 = load i64, i64* %18, align 8
  %88 = add nsw i64 %87, %86
  store i64 %88, i64* %18, align 8
  %89 = load i64, i64* %18, align 8
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* %19, align 8
  %94 = srem i64 %92, %93
  store i64 %94, i64* %18, align 8
  %95 = load i64, i64* %18, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i64, i64* %19, align 8
  %99 = load i64, i64* %18, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %18, align 8
  br label %101

101:                                              ; preds = %97, %91
  br label %102

102:                                              ; preds = %101, %85
  br label %120

103:                                              ; preds = %82
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %19, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i64, i64* %19, align 8
  %109 = load i64, i64* %18, align 8
  %110 = sub nsw i64 %109, %108
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* %19, align 8
  %113 = icmp sge i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i64, i64* %18, align 8
  %116 = load i64, i64* %19, align 8
  %117 = srem i64 %115, %116
  store i64 %117, i64* %18, align 8
  br label %118

118:                                              ; preds = %114, %107
  br label %119

119:                                              ; preds = %118, %103
  br label %120

120:                                              ; preds = %119, %102
  br label %134

121:                                              ; preds = %55
  %122 = load i64, i64* %18, align 8
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i64 0, i64* %18, align 8
  br label %133

125:                                              ; preds = %121
  %126 = load i64, i64* %18, align 8
  %127 = load i64, i64* %19, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i64, i64* %19, align 8
  %131 = sub nsw i64 %130, 1
  store i64 %131, i64* %18, align 8
  br label %132

132:                                              ; preds = %129, %125
  br label %133

133:                                              ; preds = %132, %124
  br label %134

134:                                              ; preds = %55, %133, %120, %81
  %135 = load i64, i64* %18, align 8
  %136 = load i64*, i64** %11, align 8
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = mul nsw i64 %135, %140
  %142 = load i64, i64* %20, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %20, align 8
  %144 = load i64*, i64** %15, align 8
  %145 = load i32, i32* %16, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i8**, i8*** %14, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 %148
  store i8* %154, i8** %152, align 8
  br label %155

155:                                              ; preds = %134
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %16, align 4
  br label %51

158:                                              ; preds = %51
  %159 = load i64, i64* %20, align 8
  %160 = load i8**, i8*** %14, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = bitcast i8* %164 to i64*
  store i64 %159, i64* %165, align 8
  %166 = load i64*, i64** %15, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load i8**, i8*** %14, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %171, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 %170
  store i8* %176, i8** %174, align 8
  br label %46

177:                                              ; preds = %46
  br label %178

178:                                              ; preds = %177, %80
  %179 = load i32, i32* @NPY_END_ALLOW_THREADS, align 4
  %180 = load i8, i8* %17, align 1
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32, i32* @PyExc_ValueError, align 4
  %184 = call i32 @PyErr_SetString(i32 %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %185 = load i32, i32* @NPY_FAIL, align 4
  store i32 %185, i32* %8, align 4
  br label %188

186:                                              ; preds = %178
  %187 = load i32, i32* @NPY_SUCCEED, align 4
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %186, %182, %35
  %189 = load i32, i32* %8, align 4
  ret i32 %189
}

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
