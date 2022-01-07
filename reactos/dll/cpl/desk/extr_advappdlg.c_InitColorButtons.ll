; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_advappdlg.c_InitColorButtons.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/desk/extr_advappdlg.c_InitColorButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@__const.InitColorButtons.Points = private unnamed_addr constant [3 x %struct.TYPE_9__] [%struct.TYPE_9__ { i32 29, i32 6 }, %struct.TYPE_9__ { i32 33, i32 6 }, %struct.TYPE_9__ { i32 31, i32 8 }], align 16
@IDC_ADVAPPEARANCE_COLOR1_B = common dso_local global i32 0, align 4
@COLOR_BTNFACE = common dso_local global i64 0, align 8
@COLOR_BTNTEXT = common dso_local global i64 0, align 8
@PS_SOLID = common dso_local global i32 0, align 4
@COLOR_BTNSHADOW = common dso_local global i64 0, align 8
@BLACK_PEN = common dso_local global i32 0, align 4
@COLOR_BTNHIGHLIGHT = common dso_local global i64 0, align 8
@WINDING = common dso_local global i32 0, align 4
@BM_SETIMAGE = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i64 0, align 8
@IDC_ADVAPPEARANCE_COLOR2_B = common dso_local global i32 0, align 4
@IDC_ADVAPPEARANCE_FONTCOLOR_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_10__*)* @InitColorButtons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InitColorButtons(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca [3 x %struct.TYPE_9__], align 16
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %14, align 8
  %18 = bitcast [3 x %struct.TYPE_9__]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([3 x %struct.TYPE_9__]* @__const.InitColorButtons.Points to i8*), i64 24, i1 false)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @IDC_ADVAPPEARANCE_COLOR1_B, align 4
  %21 = call i32 @GetDlgItem(i32 %19, i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @GetDC(i32 %22)
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %157, %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp sle i32 %25, 2
  br i1 %26, label %27, label %160

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @CreateCompatibleDC(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @CreateCompatibleBitmap(i32 %30, i32 36, i32 15)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 %31, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @SelectObject(i32 %38, i64 %45)
  store i64 %46, i64* %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 36, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32 15, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @COLOR_BTNFACE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @CreateSolidBrush(i32 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @FillRect(i32 %58, %struct.TYPE_8__* %9, i64 %59)
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @DeleteObject(i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32 23, i32* %65, align 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32 14, i32* %66, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @COLOR_BTNTEXT, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @CreateSolidBrush(i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @FillRect(i32 %74, %struct.TYPE_8__* %9, i64 %75)
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @DeleteObject(i64 %77)
  %79 = load i32, i32* @PS_SOLID, align 4
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @COLOR_BTNSHADOW, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @CreatePen(i32 %79, i32 1, i32 %85)
  store i64 %86, i64* %11, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @SelectObject(i32 %87, i64 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @MoveToEx(i32 %90, i32 26, i32 1, i32* null)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @LineTo(i32 %92, i32 26, i32 14)
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @BLACK_PEN, align 4
  %96 = call i64 @GetStockObject(i32 %95)
  %97 = call i64 @SelectObject(i32 %94, i64 %96)
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @DeleteObject(i64 %98)
  %100 = load i32, i32* @PS_SOLID, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @COLOR_BTNHIGHLIGHT, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @CreatePen(i32 %100, i32 1, i32 %106)
  store i64 %107, i64* %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = load i64, i64* %11, align 8
  %110 = call i64 @SelectObject(i32 %108, i64 %109)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @MoveToEx(i32 %111, i32 27, i32 1, i32* null)
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @LineTo(i32 %113, i32 27, i32 14)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @BLACK_PEN, align 4
  %117 = call i64 @GetStockObject(i32 %116)
  %118 = call i64 @SelectObject(i32 %115, i64 %117)
  %119 = load i64, i64* %11, align 8
  %120 = call i32 @DeleteObject(i64 %119)
  %121 = load i32, i32* @PS_SOLID, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* @COLOR_BTNTEXT, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @CreatePen(i32 %121, i32 1, i32 %127)
  store i64 %128, i64* %11, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* @COLOR_BTNTEXT, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @CreateSolidBrush(i32 %134)
  store i64 %135, i64* %10, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @SelectObject(i32 %136, i64 %137)
  %139 = load i32, i32* %8, align 4
  %140 = load i64, i64* %10, align 8
  %141 = call i64 @SelectObject(i32 %139, i64 %140)
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @WINDING, align 4
  %144 = call i32 @SetPolyFillMode(i32 %142, i32 %143)
  %145 = load i32, i32* %8, align 4
  %146 = getelementptr inbounds [3 x %struct.TYPE_9__], [3 x %struct.TYPE_9__]* %15, i64 0, i64 0
  %147 = call i32 @Polygon(i32 %145, %struct.TYPE_9__* %146, i32 3)
  %148 = load i32, i32* %8, align 4
  %149 = load i64, i64* %13, align 8
  %150 = call i64 @SelectObject(i32 %148, i64 %149)
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @DeleteDC(i32 %151)
  %153 = load i64, i64* %11, align 8
  %154 = call i32 @DeleteObject(i64 %153)
  %155 = load i64, i64* %10, align 8
  %156 = call i32 @DeleteObject(i64 %155)
  br label %157

157:                                              ; preds = %27
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %24

160:                                              ; preds = %24
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @ReleaseDC(i32 %161, i32 %162)
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @IDC_ADVAPPEARANCE_COLOR1_B, align 4
  %166 = load i32, i32* @BM_SETIMAGE, align 4
  %167 = load i64, i64* @IMAGE_BITMAP, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64*, i64** %170, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @SendDlgItemMessage(i32 %164, i32 %165, i32 %166, i32 %168, i32 %174)
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @IDC_ADVAPPEARANCE_COLOR2_B, align 4
  %178 = load i32, i32* @BM_SETIMAGE, align 4
  %179 = load i64, i64* @IMAGE_BITMAP, align 8
  %180 = trunc i64 %179 to i32
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @SendDlgItemMessage(i32 %176, i32 %177, i32 %178, i32 %180, i32 %186)
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @IDC_ADVAPPEARANCE_FONTCOLOR_B, align 4
  %190 = load i32, i32* @BM_SETIMAGE, align 4
  %191 = load i64, i64* @IMAGE_BITMAP, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 2
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @SendDlgItemMessage(i32 %188, i32 %189, i32 %190, i32 %192, i32 %198)
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GetDlgItem(i32, i32) #2

declare dso_local i32 @GetDC(i32) #2

declare dso_local i32 @CreateCompatibleDC(i32) #2

declare dso_local i64 @CreateCompatibleBitmap(i32, i32, i32) #2

declare dso_local i64 @SelectObject(i32, i64) #2

declare dso_local i64 @CreateSolidBrush(i32) #2

declare dso_local i32 @FillRect(i32, %struct.TYPE_8__*, i64) #2

declare dso_local i32 @DeleteObject(i64) #2

declare dso_local i64 @CreatePen(i32, i32, i32) #2

declare dso_local i32 @MoveToEx(i32, i32, i32, i32*) #2

declare dso_local i32 @LineTo(i32, i32, i32) #2

declare dso_local i64 @GetStockObject(i32) #2

declare dso_local i32 @SetPolyFillMode(i32, i32) #2

declare dso_local i32 @Polygon(i32, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @DeleteDC(i32) #2

declare dso_local i32 @ReleaseDC(i32, i32) #2

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
