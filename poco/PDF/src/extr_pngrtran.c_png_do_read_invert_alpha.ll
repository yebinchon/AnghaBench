; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_invert_alpha.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngrtran.c_png_do_read_invert_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"in png_do_read_invert_alpha\0A\00", align 1
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_read_invert_alpha(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %18 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  store i32* %39, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %54, %32
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 -1
  store i32* %46, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 255, %47
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 -1
  store i32* %50, i32** %7, align 8
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -3
  store i32* %52, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  store i32* %53, i32** %7, align 8
  br label %54

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %8, align 8
  br label %40

57:                                               ; preds = %40
  br label %90

58:                                               ; preds = %27
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  store i32* %65, i32** %10, align 8
  store i64 0, i64* %11, align 8
  br label %66

66:                                               ; preds = %86, %58
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %5, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %66
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 -1
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 255, %73
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 -1
  store i32* %76, i32** %10, align 8
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 -1
  store i32* %78, i32** %9, align 8
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 255, %79
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 -1
  store i32* %82, i32** %10, align 8
  store i32 %80, i32* %82, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 -6
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  store i32* %85, i32** %10, align 8
  br label %86

86:                                               ; preds = %70
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %66

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %89, %57
  br label %164

91:                                               ; preds = %2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %163

97:                                               ; preds = %91
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %130

102:                                              ; preds = %97
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32* %108, i32** %12, align 8
  %109 = load i32*, i32** %12, align 8
  store i32* %109, i32** %13, align 8
  store i64 0, i64* %14, align 8
  br label %110

110:                                              ; preds = %126, %102
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %5, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i32*, i32** %12, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 -1
  store i32* %116, i32** %12, align 8
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 255, %117
  %119 = load i32*, i32** %13, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 -1
  store i32* %120, i32** %13, align 8
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 -1
  store i32* %122, i32** %12, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 -1
  store i32* %125, i32** %13, align 8
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %114
  %127 = load i64, i64* %14, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %14, align 8
  br label %110

129:                                              ; preds = %110
  br label %162

130:                                              ; preds = %97
  %131 = load i32*, i32** %4, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  store i32* %136, i32** %15, align 8
  %137 = load i32*, i32** %15, align 8
  store i32* %137, i32** %16, align 8
  store i64 0, i64* %17, align 8
  br label %138

138:                                              ; preds = %158, %130
  %139 = load i64, i64* %17, align 8
  %140 = load i64, i64* %5, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %138
  %143 = load i32*, i32** %15, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 -1
  store i32* %144, i32** %15, align 8
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 255, %145
  %147 = load i32*, i32** %16, align 8
  %148 = getelementptr inbounds i32, i32* %147, i32 -1
  store i32* %148, i32** %16, align 8
  store i32 %146, i32* %148, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 -1
  store i32* %150, i32** %15, align 8
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 255, %151
  %153 = load i32*, i32** %16, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 -1
  store i32* %154, i32** %16, align 8
  store i32 %152, i32* %154, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 -2
  store i32* %156, i32** %15, align 8
  %157 = load i32*, i32** %15, align 8
  store i32* %157, i32** %16, align 8
  br label %158

158:                                              ; preds = %142
  %159 = load i64, i64* %17, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %17, align 8
  br label %138

161:                                              ; preds = %138
  br label %162

162:                                              ; preds = %161, %129
  br label %163

163:                                              ; preds = %162, %91
  br label %164

164:                                              ; preds = %163, %90
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
