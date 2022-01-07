; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdScaleCol.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdScaleCol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_9__*)* @_gdScaleCol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gdScaleCol(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i32 %5, %struct.TYPE_9__* %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %14, align 8
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %174, %7
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sub i32 %27, 1
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %177

30:                                               ; preds = %25
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %15, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %20, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %21, align 4
  %47 = load i32, i32* %20, align 4
  store i32 %47, i32* %22, align 4
  br label %48

48:                                               ; preds = %155, %30
  %49 = load i32, i32* %22, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %158

52:                                               ; preds = %48
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %22, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %23, align 4
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %20, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %24, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load double*, double** %73, align 8
  %75 = load i32, i32* %24, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = load i32, i32* %23, align 4
  %80 = call i64 @gdTrueColorGetRed(i32 %79)
  %81 = sitofp i64 %80 to double
  %82 = fmul double %78, %81
  %83 = fptoui double %82 to i8
  %84 = zext i8 %83 to i32
  %85 = load i8, i8* %16, align 1
  %86 = zext i8 %85 to i32
  %87 = add nsw i32 %86, %84
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %16, align 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 2
  %96 = load double*, double** %95, align 8
  %97 = load i32, i32* %24, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = load i32, i32* %23, align 4
  %102 = call i64 @gdTrueColorGetGreen(i32 %101)
  %103 = sitofp i64 %102 to double
  %104 = fmul double %100, %103
  %105 = fptoui double %104 to i8
  %106 = zext i8 %105 to i32
  %107 = load i8, i8* %17, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %108, %106
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %17, align 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = load i32, i32* %15, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load double*, double** %117, align 8
  %119 = load i32, i32* %24, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds double, double* %118, i64 %120
  %122 = load double, double* %121, align 8
  %123 = load i32, i32* %23, align 4
  %124 = call i64 @gdTrueColorGetBlue(i32 %123)
  %125 = sitofp i64 %124 to double
  %126 = fmul double %122, %125
  %127 = fptoui double %126 to i8
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* %18, align 1
  %130 = zext i8 %129 to i32
  %131 = add nsw i32 %130, %128
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %18, align 1
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  %140 = load double*, double** %139, align 8
  %141 = load i32, i32* %24, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds double, double* %140, i64 %142
  %144 = load double, double* %143, align 8
  %145 = load i32, i32* %23, align 4
  %146 = call i64 @gdTrueColorGetAlpha(i32 %145)
  %147 = sitofp i64 %146 to double
  %148 = fmul double %144, %147
  %149 = fptoui double %148 to i8
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* %19, align 1
  %152 = zext i8 %151 to i32
  %153 = add nsw i32 %152, %150
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %19, align 1
  br label %155

155:                                              ; preds = %52
  %156 = load i32, i32* %22, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %22, align 4
  br label %48

158:                                              ; preds = %48
  %159 = load i8, i8* %16, align 1
  %160 = load i8, i8* %17, align 1
  %161 = load i8, i8* %18, align 1
  %162 = load i8, i8* %19, align 1
  %163 = call i32 @gdTrueColorAlpha(i8 zeroext %159, i8 zeroext %160, i8 zeroext %161, i8 zeroext %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %15, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %163, i32* %173, align 4
  br label %174

174:                                              ; preds = %158
  %175 = load i32, i32* %15, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %25

177:                                              ; preds = %25
  ret void
}

declare dso_local i64 @gdTrueColorGetRed(i32) #1

declare dso_local i64 @gdTrueColorGetGreen(i32) #1

declare dso_local i64 @gdTrueColorGetBlue(i32) #1

declare dso_local i64 @gdTrueColorGetAlpha(i32) #1

declare dso_local i32 @gdTrueColorAlpha(i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
