; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgelq2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zgelq2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@zgelq2_.i__ = internal global i32 0, align 4
@zgelq2_.k = internal global i32 0, align 4
@zgelq2_.alpha = internal global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZGELQ2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zgelq2_(i32* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, %struct.TYPE_9__* %4, %struct.TYPE_9__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = add nsw i32 1, %23
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %27 = sext i32 %25 to i64
  %28 = sub i64 0, %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %28
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %11, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 -1
  store %struct.TYPE_9__* %31, %struct.TYPE_9__** %13, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 -1
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %14, align 8
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
  br label %226

66:                                               ; preds = %57
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @min(i32 %68, i32 %70)
  store i32 %71, i32* @zgelq2_.k, align 4
  %72 = load i32, i32* @zgelq2_.k, align 4
  store i32 %72, i32* %18, align 4
  store i32 1, i32* @zgelq2_.i__, align 4
  br label %73

73:                                               ; preds = %222, %66
  %74 = load i32, i32* @zgelq2_.i__, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %225

77:                                               ; preds = %73
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @zgelq2_.i__, align 4
  %81 = sub nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %84 = load i32, i32* @zgelq2_.i__, align 4
  %85 = load i32, i32* @zgelq2_.i__, align 4
  %86 = load i32, i32* %16, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %89
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @zlacgv_(i32* %19, %struct.TYPE_9__* %90, i32* %91)
  %93 = load i32, i32* @zgelq2_.i__, align 4
  %94 = load i32, i32* @zgelq2_.i__, align 4
  %95 = load i32, i32* %16, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  store i32 %97, i32* %19, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zgelq2_.alpha, i32 0, i32 0), align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zgelq2_.alpha, i32 0, i32 1), align 4
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @zgelq2_.i__, align 4
  %113 = sub nsw i32 %111, %112
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* @zgelq2_.i__, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %20, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %118 = load i32, i32* @zgelq2_.i__, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @min(i32 %119, i32 %121)
  %123 = load i32, i32* %16, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %118, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %126
  %128 = load i32*, i32** %12, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %130 = load i32, i32* @zgelq2_.i__, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = call i32 @zlarfg_(i32* %19, %struct.TYPE_9__* @zgelq2_.alpha, %struct.TYPE_9__* %127, i32* %128, %struct.TYPE_9__* %132)
  %134 = load i32, i32* @zgelq2_.i__, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %189

138:                                              ; preds = %77
  %139 = load i32, i32* @zgelq2_.i__, align 4
  %140 = load i32, i32* @zgelq2_.i__, align 4
  %141 = load i32, i32* %16, align 4
  %142 = mul nsw i32 %140, %141
  %143 = add nsw i32 %139, %142
  store i32 %143, i32* %19, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %145 = load i32, i32* %19, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 4
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 0, i32* %153, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @zgelq2_.i__, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %19, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @zgelq2_.i__, align 4
  %161 = sub nsw i32 %159, %160
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %20, align 4
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %164 = load i32, i32* @zgelq2_.i__, align 4
  %165 = load i32, i32* @zgelq2_.i__, align 4
  %166 = load i32, i32* %16, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %164, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %169
  %171 = load i32*, i32** %12, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %173 = load i32, i32* @zgelq2_.i__, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i64 %174
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %177 = load i32, i32* @zgelq2_.i__, align 4
  %178 = add nsw i32 %177, 1
  %179 = load i32, i32* @zgelq2_.i__, align 4
  %180 = load i32, i32* %16, align 4
  %181 = mul nsw i32 %179, %180
  %182 = add nsw i32 %178, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %183
  %185 = load i32*, i32** %12, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i64 1
  %188 = call i32 @zlarf_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32* %20, %struct.TYPE_9__* %170, i32* %171, %struct.TYPE_9__* %175, %struct.TYPE_9__* %184, i32* %185, %struct.TYPE_9__* %187)
  br label %189

189:                                              ; preds = %138, %77
  %190 = load i32, i32* @zgelq2_.i__, align 4
  %191 = load i32, i32* @zgelq2_.i__, align 4
  %192 = load i32, i32* %16, align 4
  %193 = mul nsw i32 %191, %192
  %194 = add nsw i32 %190, %193
  store i32 %194, i32* %19, align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zgelq2_.alpha, i32 0, i32 0), align 4
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  store i32 %195, i32* %200, align 4
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @zgelq2_.alpha, i32 0, i32 1), align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %203 = load i32, i32* %19, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 1
  store i32 %201, i32* %206, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @zgelq2_.i__, align 4
  %210 = sub nsw i32 %208, %209
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %19, align 4
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %213 = load i32, i32* @zgelq2_.i__, align 4
  %214 = load i32, i32* @zgelq2_.i__, align 4
  %215 = load i32, i32* %16, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 %218
  %220 = load i32*, i32** %12, align 8
  %221 = call i32 @zlacgv_(i32* %19, %struct.TYPE_9__* %219, i32* %220)
  br label %222

222:                                              ; preds = %189
  %223 = load i32, i32* @zgelq2_.i__, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @zgelq2_.i__, align 4
  br label %73

225:                                              ; preds = %73
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %225, %61
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @zlacgv_(i32*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @zlarfg_(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @zlarf_(i8*, i32*, i32*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
