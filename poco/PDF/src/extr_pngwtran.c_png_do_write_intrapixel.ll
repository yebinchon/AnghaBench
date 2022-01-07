; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwtran.c_png_do_write_intrapixel.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwtran.c_png_do_write_intrapixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"in png_do_write_intrapixel\0A\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_write_intrapixel(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %173

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %80

31:                                               ; preds = %23
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 3, i32* %5, align 4
  br label %47

38:                                               ; preds = %31
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 4, i32* %5, align 4
  br label %46

45:                                               ; preds = %38
  br label %173

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %37
  store i64 0, i64* %8, align 8
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %72, %47
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %55, %58
  %60 = and i32 %59, 255
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = and i32 %68, 255
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %53
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %8, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %7, align 8
  br label %49

79:                                               ; preds = %49
  br label %172

80:                                               ; preds = %23
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %85, label %171

85:                                               ; preds = %80
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 6, i32* %5, align 4
  br label %101

92:                                               ; preds = %85
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  store i32 8, i32* %5, align 4
  br label %100

99:                                               ; preds = %92
  br label %173

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %91
  store i64 0, i64* %10, align 8
  %102 = load i32*, i32** %4, align 8
  store i32* %102, i32** %9, align 8
  br label %103

103:                                              ; preds = %163, %101
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %6, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %170

107:                                              ; preds = %103
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 8
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %11, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %119, %122
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %12, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 8
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %128, %131
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %13, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = sub nsw i64 %134, %135
  %137 = and i64 %136, 65535
  store i64 %137, i64* %14, align 8
  %138 = load i64, i64* %13, align 8
  %139 = load i64, i64* %12, align 8
  %140 = sub nsw i64 %138, %139
  %141 = and i64 %140, 65535
  store i64 %141, i64* %15, align 8
  %142 = load i64, i64* %14, align 8
  %143 = ashr i64 %142, 8
  %144 = and i64 %143, 255
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i64, i64* %14, align 8
  %148 = and i64 %147, 255
  %149 = trunc i64 %148 to i32
  %150 = load i32*, i32** %9, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  store i32 %149, i32* %151, align 4
  %152 = load i64, i64* %15, align 8
  %153 = ashr i64 %152, 8
  %154 = and i64 %153, 255
  %155 = trunc i64 %154 to i32
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  store i32 %155, i32* %157, align 4
  %158 = load i64, i64* %15, align 8
  %159 = and i64 %158, 255
  %160 = trunc i64 %159 to i32
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 5
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %107
  %164 = load i64, i64* %10, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %10, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %9, align 8
  br label %103

170:                                              ; preds = %103
  br label %171

171:                                              ; preds = %170, %80
  br label %172

172:                                              ; preds = %171, %79
  br label %173

173:                                              ; preds = %45, %99, %172, %2
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
