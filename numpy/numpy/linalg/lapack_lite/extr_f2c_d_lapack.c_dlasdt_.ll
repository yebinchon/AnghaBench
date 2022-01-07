; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasdt_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlasdt_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlasdt_.i__ = internal global i32 0, align 4
@dlasdt_.il = internal global i32 0, align 4
@dlasdt_.ir = internal global i32 0, align 4
@dlasdt_.maxn = internal global i32 0, align 4
@dlasdt_.temp = internal global i32 0, align 4
@dlasdt_.nlvl = internal global i32 0, align 4
@dlasdt_.llst = internal global i32 0, align 4
@dlasdt_.ncrnt = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlasdt_(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 -1
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 -1
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 -1
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @max(i32 1, i32 %24)
  store i32 %25, i32* @dlasdt_.maxn, align 4
  %26 = load i32, i32* @dlasdt_.maxn, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = sdiv i32 %26, %29
  %31 = call i32 @log(i32 %30)
  %32 = call i32 @log(i32 2)
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* @dlasdt_.temp, align 4
  %34 = load i32, i32* @dlasdt_.temp, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 2
  store i32 %39, i32* @dlasdt_.i__, align 4
  %40 = load i32, i32* @dlasdt_.i__, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32*, i32** %11, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @dlasdt_.i__, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @dlasdt_.i__, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = load i32*, i32** %13, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* @dlasdt_.il, align 4
  store i32 1, i32* @dlasdt_.ir, align 4
  store i32 1, i32* @dlasdt_.llst, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  store i32 1, i32* @dlasdt_.nlvl, align 4
  br label %57

57:                                               ; preds = %166, %7
  %58 = load i32, i32* @dlasdt_.nlvl, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %169

61:                                               ; preds = %57
  %62 = load i32, i32* @dlasdt_.llst, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  store i32 0, i32* @dlasdt_.i__, align 4
  br label %64

64:                                               ; preds = %160, %61
  %65 = load i32, i32* @dlasdt_.i__, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %163

68:                                               ; preds = %64
  %69 = load i32, i32* @dlasdt_.il, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* @dlasdt_.il, align 4
  %71 = load i32, i32* @dlasdt_.ir, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* @dlasdt_.ir, align 4
  %73 = load i32, i32* @dlasdt_.llst, align 4
  %74 = load i32, i32* @dlasdt_.i__, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* @dlasdt_.ncrnt, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* @dlasdt_.ncrnt, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 2
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* @dlasdt_.il, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* @dlasdt_.ncrnt, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* @dlasdt_.il, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %90, %95
  %97 = sub nsw i32 %96, 1
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* @dlasdt_.il, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* @dlasdt_.ncrnt, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* @dlasdt_.il, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %106, %111
  %113 = sub nsw i32 %112, 1
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* @dlasdt_.il, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* @dlasdt_.ncrnt, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 2
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* @dlasdt_.ir, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* @dlasdt_.ncrnt, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* @dlasdt_.ir, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = sub nsw i32 %132, %137
  %139 = sub nsw i32 %138, 1
  %140 = load i32*, i32** %13, align 8
  %141 = load i32, i32* @dlasdt_.ir, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = load i32, i32* @dlasdt_.ncrnt, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* @dlasdt_.ir, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %148, %153
  %155 = add nsw i32 %154, 1
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* @dlasdt_.ir, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %155, i32* %159, align 4
  br label %160

160:                                              ; preds = %68
  %161 = load i32, i32* @dlasdt_.i__, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* @dlasdt_.i__, align 4
  br label %64

163:                                              ; preds = %64
  %164 = load i32, i32* @dlasdt_.llst, align 4
  %165 = shl i32 %164, 1
  store i32 %165, i32* @dlasdt_.llst, align 4
  br label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @dlasdt_.nlvl, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @dlasdt_.nlvl, align 4
  br label %57

169:                                              ; preds = %57
  %170 = load i32, i32* @dlasdt_.llst, align 4
  %171 = shl i32 %170, 1
  %172 = sub nsw i32 %171, 1
  %173 = load i32*, i32** %10, align 8
  store i32 %172, i32* %173, align 4
  ret i32 0
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
