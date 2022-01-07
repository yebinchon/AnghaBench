; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_intrapixel.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_intrapixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [27 x i8] c"in png_do_read_intrapixel\0A\00", align 1
@PNG_COLOR_MASK_COLOR = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB = common dso_local global i32 0, align 4
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_read_intrapixel(%struct.TYPE_3__* %0, i32* %1) #0 {
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
  %16 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PNG_COLOR_MASK_COLOR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %177

23:                                               ; preds = %2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 8
  br i1 %30, label %31, label %82

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
  br label %177

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %37
  store i64 0, i64* %8, align 8
  %48 = load i32*, i32** %4, align 8
  store i32* %48, i32** %7, align 8
  br label %49

49:                                               ; preds = %74, %47
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 256, %55
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = and i32 %60, 255
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 256, %65
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %66, %69
  %71 = and i32 %70, 255
  %72 = load i32*, i32** %7, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %53
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %7, align 8
  br label %49

81:                                               ; preds = %49
  br label %176

82:                                               ; preds = %23
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %87, label %175

87:                                               ; preds = %82
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @PNG_COLOR_TYPE_RGB, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 6, i32* %5, align 4
  br label %103

94:                                               ; preds = %87
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PNG_COLOR_TYPE_RGB_ALPHA, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 8, i32* %5, align 4
  br label %102

101:                                              ; preds = %94
  br label %177

102:                                              ; preds = %100
  br label %103

103:                                              ; preds = %102, %93
  store i64 0, i64* %10, align 8
  %104 = load i32*, i32** %4, align 8
  store i32* %104, i32** %9, align 8
  br label %105

105:                                              ; preds = %167, %103
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %174

109:                                              ; preds = %105
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %112, %115
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %11, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = load i32*, i32** %9, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %12, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 %129, 8
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %130, %133
  %135 = sext i32 %134 to i64
  store i64 %135, i64* %13, align 8
  %136 = load i64, i64* %11, align 8
  %137 = load i64, i64* %12, align 8
  %138 = add nsw i64 %136, %137
  %139 = add nsw i64 %138, 65536
  %140 = and i64 %139, 65535
  store i64 %140, i64* %14, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %12, align 8
  %143 = add nsw i64 %141, %142
  %144 = add nsw i64 %143, 65536
  %145 = and i64 %144, 65535
  store i64 %145, i64* %15, align 8
  %146 = load i64, i64* %14, align 8
  %147 = ashr i64 %146, 8
  %148 = and i64 %147, 255
  %149 = trunc i64 %148 to i32
  %150 = load i32*, i32** %9, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i64, i64* %14, align 8
  %152 = and i64 %151, 255
  %153 = trunc i64 %152 to i32
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %153, i32* %155, align 4
  %156 = load i64, i64* %15, align 8
  %157 = ashr i64 %156, 8
  %158 = and i64 %157, 255
  %159 = trunc i64 %158 to i32
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  store i32 %159, i32* %161, align 4
  %162 = load i64, i64* %15, align 8
  %163 = and i64 %162, 255
  %164 = trunc i64 %163 to i32
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 5
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %109
  %168 = load i64, i64* %10, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %10, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %9, align 8
  br label %105

174:                                              ; preds = %105
  br label %175

175:                                              ; preds = %174, %82
  br label %176

176:                                              ; preds = %175, %81
  br label %177

177:                                              ; preds = %45, %101, %176, %2
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
