; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageScaleNearestNeighbour.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageScaleNearestNeighbour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32**, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @gdImageScaleNearestNeighbour(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @MAX(i32 1, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @MAX(i32 1, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to float
  %39 = load i64, i64* %8, align 8
  %40 = uitofp i64 %39 to float
  %41 = fdiv float %38, %40
  store float %41, float* %10, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = sitofp i64 %44 to float
  %46 = load i64, i64* %9, align 8
  %47 = uitofp i64 %46 to float
  %48 = fdiv float %45, %47
  store float %48, float* %11, align 4
  %49 = load float, float* %10, align 4
  %50 = call i32 @gd_ftofx(float %49)
  store i32 %50, i32* %12, align 4
  %51 = load float, float* %11, align 4
  %52 = call i32 @gd_ftofx(float %51)
  store i32 %52, i32* %13, align 4
  store i64 0, i64* %16, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %3
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %172

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = call %struct.TYPE_5__* @gdImageCreateTrueColor(i64 %60, i64 %61)
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %14, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %64 = icmp eq %struct.TYPE_5__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %172

66:                                               ; preds = %59
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %167, %66
  %68 = load i32, i32* %17, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %9, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %170

72:                                               ; preds = %67
  store i64 0, i64* %15, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %120

77:                                               ; preds = %72
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %116, %77
  %79 = load i32, i32* %18, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* %8, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %119

83:                                               ; preds = %78
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @gd_itofx(i32 %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @gd_itofx(i32 %86)
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @gd_mulfx(i32 %88, i32 %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @gd_mulfx(i32 %91, i32 %92)
  store i32 %93, i32* %22, align 4
  %94 = load i32, i32* %21, align 4
  %95 = call i64 @gd_fxtoi(i32 %94)
  store i64 %95, i64* %23, align 8
  %96 = load i32, i32* %22, align 4
  %97 = call i64 @gd_fxtoi(i32 %96)
  store i64 %97, i64* %24, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load i32**, i32*** %99, align 8
  %101 = load i64, i64* %23, align 8
  %102 = getelementptr inbounds i32*, i32** %100, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %24, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32**, i32*** %108, align 8
  %110 = load i64, i64* %16, align 8
  %111 = getelementptr inbounds i32*, i32** %109, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %15, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %15, align 8
  %115 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %106, i32* %115, align 4
  br label %116

116:                                              ; preds = %83
  %117 = load i32, i32* %18, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %78

119:                                              ; preds = %78
  br label %164

120:                                              ; preds = %72
  store i32 0, i32* %18, align 4
  br label %121

121:                                              ; preds = %160, %120
  %122 = load i32, i32* %18, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* %8, align 8
  %125 = icmp ult i64 %123, %124
  br i1 %125, label %126, label %163

126:                                              ; preds = %121
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @gd_itofx(i32 %127)
  store i32 %128, i32* %25, align 4
  %129 = load i32, i32* %18, align 4
  %130 = call i32 @gd_itofx(i32 %129)
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @gd_mulfx(i32 %131, i32 %132)
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %26, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @gd_mulfx(i32 %134, i32 %135)
  store i32 %136, i32* %28, align 4
  %137 = load i32, i32* %27, align 4
  %138 = call i64 @gd_fxtoi(i32 %137)
  store i64 %138, i64* %29, align 8
  %139 = load i32, i32* %28, align 4
  %140 = call i64 @gd_fxtoi(i32 %139)
  store i64 %140, i64* %30, align 8
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32**, i32*** %142, align 8
  %144 = load i64, i64* %29, align 8
  %145 = getelementptr inbounds i32*, i32** %143, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = load i64, i64* %30, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @colorIndex2RGBA(i32 %149)
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = load i64, i64* %16, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %15, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %15, align 8
  %159 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %150, i32* %159, align 4
  br label %160

160:                                              ; preds = %126
  %161 = load i32, i32* %18, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %121

163:                                              ; preds = %121
  br label %164

164:                                              ; preds = %163, %119
  %165 = load i64, i64* %16, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %16, align 8
  br label %167

167:                                              ; preds = %164
  %168 = load i32, i32* %17, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %17, align 4
  br label %67

170:                                              ; preds = %67
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %171, %struct.TYPE_5__** %4, align 8
  br label %172

172:                                              ; preds = %170, %65, %58
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %173
}

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @gd_ftofx(float) #1

declare dso_local %struct.TYPE_5__* @gdImageCreateTrueColor(i64, i64) #1

declare dso_local i32 @gd_itofx(i32) #1

declare dso_local i32 @gd_mulfx(i32, i32) #1

declare dso_local i64 @gd_fxtoi(i32) #1

declare dso_local i32 @colorIndex2RGBA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
