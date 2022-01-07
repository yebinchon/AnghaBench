; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_knapsack.c_DiscreteKnapsack.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_knapsack.c_DiscreteKnapsack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Knapsack\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DiscreteKnapsack(i32 %0, i32 %1, i32* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store double* %3, double** %8, align 8
  %19 = load i32, i32* @CurrentMemoryContext, align 4
  %20 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %21 = call i32 @AllocSetContextCreate(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br label %33

33:                                               ; preds = %30, %4
  %34 = phi i1 [ false, %4 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 1, %37
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i8* @palloc(i32 %41)
  %43 = bitcast i8* %42 to double*
  store double* %43, double** %11, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 1, %44
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i8* @palloc(i32 %48)
  %50 = bitcast i8* %49 to i32**
  store i32** %50, i32*** %12, align 8
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %66, %33
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load double*, double** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double 0.000000e+00, double* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32* @bms_make_singleton(i32 %60)
  %62 = load i32**, i32*** %12, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  store i32* %61, i32** %65, align 8
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %51

69:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %176, %69
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %179

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %16, align 4
  %80 = load double*, double** %8, align 8
  %81 = icmp ne double* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load double*, double** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  br label %89

88:                                               ; preds = %74
  br label %89

89:                                               ; preds = %88, %82
  %90 = phi double [ %87, %82 ], [ 1.000000e+00, %88 ]
  store double %90, double* %17, align 8
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %172, %89
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %175

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %18, align 4
  %100 = load double*, double** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, double* %100, i64 %102
  %104 = load double, double* %103, align 8
  %105 = load double*, double** %11, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %105, i64 %107
  %109 = load double, double* %108, align 8
  %110 = load double, double* %17, align 8
  %111 = fadd double %109, %110
  %112 = fcmp ole double %104, %111
  br i1 %112, label %113, label %171

113:                                              ; preds = %96
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %18, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %113
  %118 = load i32**, i32*** %12, align 8
  %119 = load i32, i32* %15, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32**, i32*** %12, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = call i32* @bms_del_members(i32* %122, i32* %127)
  %129 = load i32**, i32*** %12, align 8
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* %128, i32** %132, align 8
  %133 = load i32**, i32*** %12, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32**, i32*** %12, align 8
  %139 = load i32, i32* %18, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = call i32* @bms_add_members(i32* %137, i32* %142)
  %144 = load i32**, i32*** %12, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32*, i32** %144, i64 %146
  store i32* %143, i32** %147, align 8
  br label %148

148:                                              ; preds = %117, %113
  %149 = load i32**, i32*** %12, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32* @bms_add_member(i32* %153, i32 %154)
  %156 = load i32**, i32*** %12, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32*, i32** %156, i64 %158
  store i32* %155, i32** %159, align 8
  %160 = load double*, double** %11, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds double, double* %160, i64 %162
  %164 = load double, double* %163, align 8
  %165 = load double, double* %17, align 8
  %166 = fadd double %164, %165
  %167 = load double*, double** %11, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  store double %166, double* %170, align 8
  br label %171

171:                                              ; preds = %148, %96
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %15, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %15, align 4
  br label %92

175:                                              ; preds = %92
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %70

179:                                              ; preds = %70
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @MemoryContextSwitchTo(i32 %180)
  %182 = load i32**, i32*** %12, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32*, i32** %182, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @bms_copy(i32* %186)
  %188 = load i32, i32* %6, align 4
  %189 = call i32* @bms_del_member(i32 %187, i32 %188)
  store i32* %189, i32** %13, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @MemoryContextDelete(i32 %190)
  %192 = load i32*, i32** %13, align 8
  ret i32* %192
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32* @bms_make_singleton(i32) #1

declare dso_local i32* @bms_del_members(i32*, i32*) #1

declare dso_local i32* @bms_add_members(i32*, i32*) #1

declare dso_local i32* @bms_add_member(i32*, i32) #1

declare dso_local i32* @bms_del_member(i32, i32) #1

declare dso_local i32 @bms_copy(i32*) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
