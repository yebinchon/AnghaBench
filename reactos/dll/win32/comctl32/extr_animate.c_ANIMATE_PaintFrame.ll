; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_animate.c_ANIMATE_PaintFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_animate.c_ANIMATE_PaintFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i8*, i32, i32, i8*, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@ANIMATE_COLOR_NONE = common dso_local global i32 0, align 4
@ACS_TRANSPARENT = common dso_local global i32 0, align 4
@OBJ_BRUSH = common dso_local global i32 0, align 4
@ACS_CENTER = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @ANIMATE_PaintFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ANIMATE_PaintFrame(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_12__, align 4
  %18 = alloca %struct.TYPE_12__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 7
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %3, align 4
  br label %206

28:                                               ; preds = %21
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 9
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %6, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = bitcast %struct.TYPE_10__* %39 to i32*
  store i32* %40, i32** %7, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  br label %69

51:                                               ; preds = %28
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 7
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = bitcast %struct.TYPE_11__* %57 to i32*
  store i32* %58, i32** %7, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 7
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 7
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %51, %33
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i8* @CreateCompatibleBitmap(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @CreateCompatibleDC(i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @SelectObject(i32 %84, i8* %87)
  store i8* %88, i8** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32, i32* @DIB_RGB_COLORS, align 4
  %97 = call i32 @SetDIBits(i32 %89, i8* %92, i32 0, i32 %93, i8* %94, i32* %95, i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @ANIMATE_COLOR_NONE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %81
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @GetPixel(i32 %104, i32 0, i32 0)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %81
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ACS_TRANSPARENT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %163

115:                                              ; preds = %108
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @CreateCompatibleDC(i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i8* @CreateCompatibleBitmap(i32 %118, i32 %119, i32 %120)
  store i8* %121, i8** %15, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i8*, i8** %15, align 8
  %124 = call i8* @SelectObject(i32 %122, i8* %123)
  store i8* %124, i8** %16, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @SetRect(%struct.TYPE_12__* %17, i32 0, i32 0, i32 %125, i32 %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %115
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @OBJ_BRUSH, align 4
  %135 = call i32 @GetCurrentObject(i32 %133, i32 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %132, %115
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @FillRect(i32 %139, %struct.TYPE_12__* %17, i32 %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @ANIMATE_TransparentBlt(%struct.TYPE_13__* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = load i8*, i8** %16, align 8
  %150 = call i8* @SelectObject(i32 %148, i8* %149)
  %151 = load i32, i32* %8, align 4
  %152 = load i8*, i8** %15, align 8
  %153 = call i8* @SelectObject(i32 %151, i8* %152)
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @DeleteDC(i32 %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @DeleteObject(i8* %158)
  %160 = load i8*, i8** %15, align 8
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %138, %108
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @ACS_CENTER, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %163
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @GetWindowRect(i32 %173, %struct.TYPE_12__* %18)
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %176, %178
  %180 = load i32, i32* %12, align 4
  %181 = sub nsw i32 %179, %180
  %182 = sdiv i32 %181, 2
  store i32 %182, i32* %10, align 4
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %184, %186
  %188 = load i32, i32* %13, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sdiv i32 %189, 2
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %170, %163
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @SRCCOPY, align 4
  %199 = call i32 @BitBlt(i32 %192, i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 0, i32 0, i32 %198)
  %200 = load i32, i32* %8, align 4
  %201 = load i8*, i8** %9, align 8
  %202 = call i8* @SelectObject(i32 %200, i8* %201)
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @DeleteDC(i32 %203)
  %205 = load i32, i32* @TRUE, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %191, %26
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i8* @CreateCompatibleBitmap(i32, i32, i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i8* @SelectObject(i32, i8*) #1

declare dso_local i32 @SetDIBits(i32, i8*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @GetPixel(i32, i32, i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_12__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetCurrentObject(i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ANIMATE_TransparentBlt(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @DeleteObject(i8*) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
