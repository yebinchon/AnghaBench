; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_clacpy_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_clacpy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@clacpy_.i__ = internal global i32 0, align 4
@clacpy_.j = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clacpy_(i8* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3, i32* %4, %struct.TYPE_4__* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = add nsw i32 1, %25
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = sext i32 %27 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %11, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = add nsw i32 1, %34
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = sext i32 %36 to i64
  %39 = sub i64 0, %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %13, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i8* @lsame_(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %101

44:                                               ; preds = %7
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %19, align 4
  store i32 1, i32* @clacpy_.j, align 4
  br label %47

47:                                               ; preds = %97, %44
  %48 = load i32, i32* @clacpy_.j, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %100

51:                                               ; preds = %47
  %52 = load i32, i32* @clacpy_.j, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @min(i32 %52, i32 %54)
  store i32 %55, i32* %20, align 4
  store i32 1, i32* @clacpy_.i__, align 4
  br label %56

56:                                               ; preds = %93, %51
  %57 = load i32, i32* @clacpy_.i__, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %96

60:                                               ; preds = %56
  %61 = load i32, i32* @clacpy_.i__, align 4
  %62 = load i32, i32* @clacpy_.j, align 4
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* @clacpy_.i__, align 4
  %67 = load i32, i32* @clacpy_.j, align 4
  %68 = load i32, i32* %15, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %22, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %72 = load i32, i32* %22, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %78 = load i32, i32* %21, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %83 = load i32, i32* %22, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %89 = load i32, i32* %21, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 %87, i32* %92, align 4
  br label %93

93:                                               ; preds = %60
  %94 = load i32, i32* @clacpy_.i__, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* @clacpy_.i__, align 4
  br label %56

96:                                               ; preds = %56
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* @clacpy_.j, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @clacpy_.j, align 4
  br label %47

100:                                              ; preds = %47
  br label %217

101:                                              ; preds = %7
  %102 = load i8*, i8** %8, align 8
  %103 = call i8* @lsame_(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %161

105:                                              ; preds = %101
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %19, align 4
  store i32 1, i32* @clacpy_.j, align 4
  br label %108

108:                                              ; preds = %157, %105
  %109 = load i32, i32* @clacpy_.j, align 4
  %110 = load i32, i32* %19, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %160

112:                                              ; preds = %108
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %20, align 4
  %115 = load i32, i32* @clacpy_.j, align 4
  store i32 %115, i32* @clacpy_.i__, align 4
  br label %116

116:                                              ; preds = %153, %112
  %117 = load i32, i32* @clacpy_.i__, align 4
  %118 = load i32, i32* %20, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %156

120:                                              ; preds = %116
  %121 = load i32, i32* @clacpy_.i__, align 4
  %122 = load i32, i32* @clacpy_.j, align 4
  %123 = load i32, i32* %17, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* @clacpy_.i__, align 4
  %127 = load i32, i32* @clacpy_.j, align 4
  %128 = load i32, i32* %15, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %126, %129
  store i32 %130, i32* %22, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %132 = load i32, i32* %22, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  store i32 %136, i32* %141, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  store i32 %147, i32* %152, align 4
  br label %153

153:                                              ; preds = %120
  %154 = load i32, i32* @clacpy_.i__, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @clacpy_.i__, align 4
  br label %116

156:                                              ; preds = %116
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* @clacpy_.j, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* @clacpy_.j, align 4
  br label %108

160:                                              ; preds = %108
  br label %216

161:                                              ; preds = %101
  %162 = load i32*, i32** %10, align 8
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %19, align 4
  store i32 1, i32* @clacpy_.j, align 4
  br label %164

164:                                              ; preds = %212, %161
  %165 = load i32, i32* @clacpy_.j, align 4
  %166 = load i32, i32* %19, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %215

168:                                              ; preds = %164
  %169 = load i32*, i32** %9, align 8
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %20, align 4
  store i32 1, i32* @clacpy_.i__, align 4
  br label %171

171:                                              ; preds = %208, %168
  %172 = load i32, i32* @clacpy_.i__, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp sle i32 %172, %173
  br i1 %174, label %175, label %211

175:                                              ; preds = %171
  %176 = load i32, i32* @clacpy_.i__, align 4
  %177 = load i32, i32* @clacpy_.j, align 4
  %178 = load i32, i32* %17, align 4
  %179 = mul nsw i32 %177, %178
  %180 = add nsw i32 %176, %179
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* @clacpy_.i__, align 4
  %182 = load i32, i32* @clacpy_.j, align 4
  %183 = load i32, i32* %15, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %181, %184
  store i32 %185, i32* %22, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %187 = load i32, i32* %22, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %193 = load i32, i32* %21, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  store i32 %191, i32* %196, align 4
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %204 = load i32, i32* %21, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  store i32 %202, i32* %207, align 4
  br label %208

208:                                              ; preds = %175
  %209 = load i32, i32* @clacpy_.i__, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* @clacpy_.i__, align 4
  br label %171

211:                                              ; preds = %171
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* @clacpy_.j, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* @clacpy_.j, align 4
  br label %164

215:                                              ; preds = %164
  br label %216

216:                                              ; preds = %215, %160
  br label %217

217:                                              ; preds = %216, %100
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
