; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/fontview/extr_display.c_Display_DrawText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/fontview/extr_display.c_Display_DrawText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8**, i32, i32*, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@LF_FULLFACESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i32] [i32 37, i32 115, i32 37, i32 115, i32 0], align 4
@SPACING1 = common dso_local global i64 0, align 8
@BLACK_PEN = common dso_local global i32 0, align 4
@SPACING2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i32] [i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 0], align 4
@.str.2 = private unnamed_addr constant [27 x i32] [i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 0], align 4
@.str.3 = private unnamed_addr constant [29 x i32] [i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 46, i32 58, i32 44, i32 59, i32 40, i32 34, i32 126, i32 33, i32 64, i32 35, i32 36, i32 37, i32 37, i32 94, i32 38, i32 42, i32 39, i32 41, i32 0], align 4
@MAX_SIZES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i32] [i32 37, i32 100, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*, i32)* @Display_DrawText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Display_DrawText(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @LF_FULLFACESIZE, align 4
  %15 = add nsw i32 %14, 20
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @SelectObject(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @GetTextMetrics(i32 %26, %struct.TYPE_5__* %8)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32*, i8*, ...) @swprintf(i32* %18, i8* bitcast ([5 x i32]* @.str to i8*), i8* %30, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @wcslen(i32* %18)
  %38 = trunc i64 %37 to i32
  %39 = call i32 @TextOutW(i32 %35, i32 0, i32 %36, i32* %18, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPACING1, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @BLACK_PEN, align 4
  %50 = call i32 @GetStockObject(i32 %49)
  %51 = call i32 @SelectObject(i32 %48, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @MoveToEx(i32 %52, i32 0, i32 %53, i32* null)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @LineTo(i32 %55, i32 10000, i32 %56)
  %58 = load i64, i64* @SPACING2, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @SelectObject(i32 %63, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @GetTextMetrics(i32 %68, %struct.TYPE_5__* %8)
  %70 = call i32 (i32*, i8*, ...) @swprintf(i32* %18, i8* bitcast ([27 x i32]* @.str.1 to i8*))
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @wcslen(i32* %18)
  %74 = trunc i64 %73 to i32
  %75 = call i32 @TextOutW(i32 %71, i32 0, i32 %72, i32* %18, i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 1
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %10, align 4
  %83 = call i32 (i32*, i8*, ...) @swprintf(i32* %18, i8* bitcast ([27 x i32]* @.str.2 to i8*))
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @wcslen(i32* %18)
  %87 = trunc i64 %86 to i32
  %88 = call i32 @TextOutW(i32 %84, i32 0, i32 %85, i32* %18, i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %10, align 4
  %96 = call i32 (i32*, i8*, ...) @swprintf(i32* %18, i8* bitcast ([29 x i32]* @.str.3 to i8*))
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @wcslen(i32* %18)
  %100 = trunc i64 %99 to i32
  %101 = call i32 @TextOutW(i32 %97, i32 0, i32 %98, i32* %18, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 1
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @BLACK_PEN, align 4
  %111 = call i32 @GetStockObject(i32 %110)
  %112 = call i32 @SelectObject(i32 %109, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @MoveToEx(i32 %113, i32 0, i32 %114, i32* null)
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @LineTo(i32 %116, i32 10000, i32 %117)
  %119 = load i64, i64* @SPACING2, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %183, %3
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @MAX_SIZES, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %186

128:                                              ; preds = %124
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 4
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @SelectObject(i32 %129, i32 %136)
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = call i64 @wcslen(i32* %145)
  %147 = trunc i64 %146 to i32
  %148 = call i32 @TextOutW(i32 %138, i32 20, i32 %139, i32* %142, i32 %147)
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @GetTextMetrics(i32 %149, %struct.TYPE_5__* %8)
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %152, 1
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @SelectObject(i32 %158, i32 %161)
  %163 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i8**, i8*** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i32*, i8*, ...) @swprintf(i32* %163, i8* bitcast ([3 x i32]* @.str.4 to i8*), i8* %170)
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %10, align 4
  %174 = sub nsw i32 %173, 13
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %174, %176
  %178 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %179 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %180 = call i64 @wcslen(i32* %179)
  %181 = trunc i64 %180 to i32
  %182 = call i32 @TextOutW(i32 %172, i32 0, i32 %177, i32* %178, i32 %181)
  br label %183

183:                                              ; preds = %128
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  br label %124

186:                                              ; preds = %124
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @SelectObject(i32 %187, i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %191)
  ret i32 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SelectObject(i32, i32) #2

declare dso_local i32 @GetTextMetrics(i32, %struct.TYPE_5__*) #2

declare dso_local i32 @swprintf(i32*, i8*, ...) #2

declare dso_local i32 @TextOutW(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @wcslen(i32*) #2

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32 @MoveToEx(i32, i32, i32, i32*) #2

declare dso_local i32 @LineTo(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
