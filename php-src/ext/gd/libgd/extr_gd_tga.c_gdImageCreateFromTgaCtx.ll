; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_tga.c_gdImageCreateFromTgaCtx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_tga.c_gdImageCreateFromTgaCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32** }
%struct.TYPE_13__ = type { i32*, i32, i32, i64, i64, i64, i64, i32* }

@TGA_BPP_24 = common dso_local global i64 0, align 8
@TGA_BPP_32 = common dso_local global i64 0, align 8
@gdAlphaMax = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @gdImageCreateFromTgaCtx(i32* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store volatile %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i64 @gdMalloc(i32 56)
  %12 = inttoptr i64 %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %212

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = call i64 @read_header_tga(i32* %21, %struct.TYPE_13__* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = call i32 @free_tga(%struct.TYPE_13__* %26)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %212

28:                                               ; preds = %16
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %31 = call i64 @read_image_tga(i32* %29, %struct.TYPE_13__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = call i32 @free_tga(%struct.TYPE_13__* %34)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %212

36:                                               ; preds = %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_14__* @gdImageCreateTrueColor(i32 %39, i32 %42)
  store volatile %struct.TYPE_14__* %43, %struct.TYPE_14__** %6, align 8
  %44 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = icmp eq %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %48 = call i32 @free_tga(%struct.TYPE_13__* %47)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %2, align 8
  br label %212

49:                                               ; preds = %36
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = call i32 @gdImageAlphaBlending(%struct.TYPE_14__* %55, i32 0)
  %57 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = call i32 @gdImageSaveAlpha(%struct.TYPE_14__* %57, i32 1)
  br label %59

59:                                               ; preds = %54, %49
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %174, %59
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %177

66:                                               ; preds = %60
  %67 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %168, %66
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %173

80:                                               ; preds = %74
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @TGA_BPP_24, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @gdTrueColor(i32 %94, i32 %102, i32 %109)
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 3
  store i32 %113, i32* %4, align 4
  br label %167

114:                                              ; preds = %80
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @TGA_BPP_32, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %166

120:                                              ; preds = %114
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %166

125:                                              ; preds = %120
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 3
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i64, i64* @gdAlphaMax, align 8
  %158 = load i32, i32* %10, align 4
  %159 = ashr i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = sub nsw i64 %157, %160
  %162 = call i32 @gdTrueColorAlpha(i32 %141, i32 %149, i32 %156, i64 %161)
  %163 = load i32*, i32** %9, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %125, %120, %114
  br label %167

167:                                              ; preds = %166, %86
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  %171 = load i32*, i32** %9, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %9, align 8
  br label %74

173:                                              ; preds = %74
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %60

177:                                              ; preds = %60
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %177
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %189 = call i32 @gdImageFlipBoth(%struct.TYPE_14__* %188)
  br label %208

190:                                              ; preds = %182, %177
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = call i32 @gdImageFlipVertical(%struct.TYPE_14__* %196)
  br label %207

198:                                              ; preds = %190
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %205 = call i32 @gdImageFlipHorizontal(%struct.TYPE_14__* %204)
  br label %206

206:                                              ; preds = %203, %198
  br label %207

207:                                              ; preds = %206, %195
  br label %208

208:                                              ; preds = %207, %187
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = call i32 @free_tga(%struct.TYPE_13__* %209)
  %211 = load volatile %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %211, %struct.TYPE_14__** %2, align 8
  br label %212

212:                                              ; preds = %208, %46, %33, %25, %15
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %213
}

declare dso_local i64 @gdMalloc(i32) #1

declare dso_local i64 @read_header_tga(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @free_tga(%struct.TYPE_13__*) #1

declare dso_local i64 @read_image_tga(i32*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i32 @gdImageAlphaBlending(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @gdImageSaveAlpha(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @gdTrueColor(i32, i32, i32) #1

declare dso_local i32 @gdTrueColorAlpha(i32, i32, i32, i64) #1

declare dso_local i32 @gdImageFlipBoth(%struct.TYPE_14__*) #1

declare dso_local i32 @gdImageFlipVertical(%struct.TYPE_14__*) #1

declare dso_local i32 @gdImageFlipHorizontal(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
