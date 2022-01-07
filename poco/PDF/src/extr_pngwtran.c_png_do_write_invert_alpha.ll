; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwtran.c_png_do_write_invert_alpha.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwtran.c_png_do_write_invert_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"in png_do_write_invert_alpha\0A\00", align 1
@PNG_COLOR_TYPE_RGB_ALPHA = common dso_local global i64 0, align 8
@PNG_COLOR_TYPE_GRAY_ALPHA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_do_write_invert_alpha(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %21 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PNG_COLOR_TYPE_RGB_ALPHA, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %94

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  store i64 0, i64* %7, align 8
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %6, align 8
  store i32* %36, i32** %5, align 8
  br label %37

37:                                               ; preds = %54, %32
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  store i32* %43, i32** %5, align 8
  %44 = load i32*, i32** %5, align 8
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  %47 = load i32, i32* %45, align 4
  %48 = sub nsw i32 255, %47
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %37

57:                                               ; preds = %37
  br label %93

58:                                               ; preds = %27
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %62 = load i32*, i32** %4, align 8
  store i32* %62, i32** %10, align 8
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %89, %58
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %71, align 4
  %74 = sub nsw i32 255, %73
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %10, align 8
  store i32 %77, i32* %78, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %9, align 8
  %82 = load i32, i32* %80, align 4
  %83 = sub nsw i32 255, %82
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %89

89:                                               ; preds = %67
  %90 = load i64, i64* %11, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %11, align 8
  br label %63

92:                                               ; preds = %63
  br label %93

93:                                               ; preds = %92, %57
  br label %170

94:                                               ; preds = %2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PNG_COLOR_TYPE_GRAY_ALPHA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %169

100:                                              ; preds = %94
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 8
  br i1 %104, label %105, label %133

105:                                              ; preds = %100
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %16, align 8
  store i64 0, i64* %15, align 8
  %109 = load i32*, i32** %4, align 8
  store i32* %109, i32** %14, align 8
  store i32* %109, i32** %13, align 8
  br label %110

110:                                              ; preds = %129, %105
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %16, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %132

114:                                              ; preds = %110
  %115 = load i32*, i32** %13, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %13, align 8
  %117 = load i32, i32* %115, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %14, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %13, align 8
  %122 = load i32, i32* %120, align 4
  %123 = sub nsw i32 255, %122
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i8*
  %126 = ptrtoint i8* %125 to i32
  %127 = load i32*, i32** %14, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %14, align 8
  store i32 %126, i32* %127, align 4
  br label %129

129:                                              ; preds = %114
  %130 = load i64, i64* %15, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %15, align 8
  br label %110

132:                                              ; preds = %110
  br label %168

133:                                              ; preds = %100
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %20, align 8
  store i64 0, i64* %19, align 8
  %137 = load i32*, i32** %4, align 8
  store i32* %137, i32** %18, align 8
  store i32* %137, i32** %17, align 8
  br label %138

138:                                              ; preds = %164, %133
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %20, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %167

142:                                              ; preds = %138
  %143 = load i32*, i32** %17, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 2
  store i32* %144, i32** %17, align 8
  %145 = load i32*, i32** %17, align 8
  store i32* %145, i32** %18, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %17, align 8
  %148 = load i32, i32* %146, align 4
  %149 = sub nsw i32 255, %148
  %150 = sext i32 %149 to i64
  %151 = inttoptr i64 %150 to i8*
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %18, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %18, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32*, i32** %17, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %17, align 8
  %157 = load i32, i32* %155, align 4
  %158 = sub nsw i32 255, %157
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = ptrtoint i8* %160 to i32
  %162 = load i32*, i32** %18, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %18, align 8
  store i32 %161, i32* %162, align 4
  br label %164

164:                                              ; preds = %142
  %165 = load i64, i64* %19, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %19, align 8
  br label %138

167:                                              ; preds = %138
  br label %168

168:                                              ; preds = %167, %132
  br label %169

169:                                              ; preds = %168, %94
  br label %170

170:                                              ; preds = %169, %93
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
