; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdScaleRow.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c__gdScaleRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32** }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, double* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_9__*)* @_gdScaleRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_gdScaleRow(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, %struct.TYPE_9__* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %12, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %186, %6
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub i32 %40, 1
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %189

43:                                               ; preds = %38
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %20, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %20, align 4
  store i32 %60, i32* %22, align 4
  br label %61

61:                                               ; preds = %173, %43
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %21, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %176

65:                                               ; preds = %61
  %66 = load i32, i32* %22, align 4
  %67 = load i32, i32* %20, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %23, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load double*, double** %75, align 8
  %77 = load i32, i32* %23, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %76, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = load i32, i32* %22, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @gdTrueColorGetRed(i32 %85)
  %87 = sitofp i64 %86 to double
  %88 = fmul double %80, %87
  %89 = fptoui double %88 to i8
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* %16, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, %90
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %16, align 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load double*, double** %101, align 8
  %103 = load i32, i32* %23, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  %106 = load double, double* %105, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %22, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @gdTrueColorGetGreen(i32 %111)
  %113 = sitofp i64 %112 to double
  %114 = fmul double %106, %113
  %115 = fptoui double %114 to i8
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* %17, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, %116
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %17, align 1
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %15, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load double*, double** %127, align 8
  %129 = load i32, i32* %23, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds double, double* %128, i64 %130
  %132 = load double, double* %131, align 8
  %133 = load i32*, i32** %13, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @gdTrueColorGetBlue(i32 %137)
  %139 = sitofp i64 %138 to double
  %140 = fmul double %132, %139
  %141 = fptoui double %140 to i8
  %142 = zext i8 %141 to i32
  %143 = load i8, i8* %18, align 1
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 %144, %142
  %146 = trunc i32 %145 to i8
  store i8 %146, i8* %18, align 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load double*, double** %153, align 8
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, double* %154, i64 %156
  %158 = load double, double* %157, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %22, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @gdTrueColorGetAlpha(i32 %163)
  %165 = sitofp i64 %164 to double
  %166 = fmul double %158, %165
  %167 = fptoui double %166 to i8
  %168 = zext i8 %167 to i32
  %169 = load i8, i8* %19, align 1
  %170 = zext i8 %169 to i32
  %171 = add nsw i32 %170, %168
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %19, align 1
  br label %173

173:                                              ; preds = %65
  %174 = load i32, i32* %22, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %22, align 4
  br label %61

176:                                              ; preds = %61
  %177 = load i8, i8* %16, align 1
  %178 = load i8, i8* %17, align 1
  %179 = load i8, i8* %18, align 1
  %180 = load i8, i8* %19, align 1
  %181 = call i32 @gdTrueColorAlpha(i8 zeroext %177, i8 zeroext %178, i8 zeroext %179, i8 zeroext %180)
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %15, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %176
  %187 = load i32, i32* %15, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %15, align 4
  br label %38

189:                                              ; preds = %38
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
