; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddTransparentBitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_RtfAddTransparentBitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RtfData = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@CBM_INIT = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@SRCAND = common dso_local global i32 0, align 4
@SRCPAINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"{\\pict\\emfblip\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RtfData*, %struct.TYPE_7__*, i8*, i32)* @HLPFILE_RtfAddTransparentBitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_RtfAddTransparentBitmap(%struct.RtfData* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.RtfData*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store %struct.RtfData* %0, %struct.RtfData** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %18, align 4
  %22 = call i32 @GetDC(i32 0)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* @CBM_INIT, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load i32, i32* @DIB_RGB_COLORS, align 4
  %29 = call i32 @CreateDIBitmap(i32 %22, %struct.TYPE_8__* %24, i32 %25, i8* %26, %struct.TYPE_7__* %27, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @CreateCompatibleDC(i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @SelectObject(i32 %32, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @CreateCompatibleDC(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @CreateBitmap(i32 %40, i32 %44, i32 1, i32 1, i32* null)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @SelectObject(i32 %46, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sub i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sub i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sub i32 %71, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @RGB(i32 %58, i32 %67, i32 %76)
  %78 = call i32 @SetBkColor(i32 %49, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @SRCCOPY, align 4
  %90 = call i32 @BitBlt(i32 %79, i32 0, i32 0, i32 %83, i32 %87, i32 %88, i32 0, i32 0, i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @RGB(i32 0, i32 0, i32 0)
  %93 = call i32 @SetBkColor(i32 %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @RGB(i32 255, i32 255, i32 255)
  %96 = call i32 @SetTextColor(i32 %94, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @SRCAND, align 4
  %108 = call i32 @BitBlt(i32 %97, i32 0, i32 0, i32 %101, i32 %105, i32 %106, i32 0, i32 0, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @SelectObject(i32 %109, i32 %110)
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @DeleteDC(i32 %112)
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @SelectObject(i32 %114, i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @DeleteDC(i32 %117)
  %119 = call i32 @CreateEnhMetaFileW(i32* null, i32* null, i32* null, i32* null)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @CreateCompatibleDC(i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @SelectObject(i32 %122, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @RGB(i32 255, i32 255, i32 255)
  %127 = call i32 @SetBkColor(i32 %125, i32 %126)
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @RGB(i32 0, i32 0, i32 0)
  %130 = call i32 @SetTextColor(i32 %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @SRCAND, align 4
  %142 = call i32 @BitBlt(i32 %131, i32 0, i32 0, i32 %135, i32 %139, i32 %140, i32 0, i32 0, i32 %141)
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @SelectObject(i32 %143, i32 %144)
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @SRCPAINT, align 4
  %157 = call i32 @BitBlt(i32 %146, i32 0, i32 0, i32 %150, i32 %154, i32 %155, i32 0, i32 0, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @SelectObject(i32 %158, i32 %159)
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @DeleteDC(i32 %161)
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @ReleaseDC(i32 0, i32 %163)
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @DeleteObject(i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @DeleteObject(i32 %167)
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @CloseEnhMetaFile(i32 %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = call i64 @GetEnhMetaFileBits(i32 %171, i64 0, i8* null)
  store i64 %172, i64* %20, align 8
  %173 = load i64, i64* %20, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %4
  %176 = call i32 (...) @GetProcessHeap()
  %177 = load i64, i64* %20, align 8
  %178 = call i8* @HeapAlloc(i32 %176, i32 0, i64 %177)
  store i8* %178, i8** %19, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %208

180:                                              ; preds = %175
  %181 = load i64, i64* %20, align 8
  %182 = load i32, i32* %17, align 4
  %183 = load i64, i64* %20, align 8
  %184 = load i8*, i8** %19, align 8
  %185 = call i64 @GetEnhMetaFileBits(i32 %182, i64 %183, i8* %184)
  %186 = icmp eq i64 %181, %185
  br i1 %186, label %187, label %204

187:                                              ; preds = %180
  %188 = load %struct.RtfData*, %struct.RtfData** %5, align 8
  %189 = call i64 @HLPFILE_RtfAddControl(%struct.RtfData* %188, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load %struct.RtfData*, %struct.RtfData** %5, align 8
  %193 = load i8*, i8** %19, align 8
  %194 = load i64, i64* %20, align 8
  %195 = call i64 @HLPFILE_RtfAddHexBytes(%struct.RtfData* %192, i8* %193, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load %struct.RtfData*, %struct.RtfData** %5, align 8
  %199 = call i64 @HLPFILE_RtfAddControl(%struct.RtfData* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %200 = icmp ne i64 %199, 0
  br label %201

201:                                              ; preds = %197, %191, %187
  %202 = phi i1 [ false, %191 ], [ false, %187 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  store i32 %203, i32* %18, align 4
  br label %204

204:                                              ; preds = %201, %180
  %205 = call i32 (...) @GetProcessHeap()
  %206 = load i8*, i8** %19, align 8
  %207 = call i32 @HeapFree(i32 %205, i32 0, i8* %206)
  br label %208

208:                                              ; preds = %204, %175, %4
  %209 = load i32, i32* %17, align 4
  %210 = call i32 @DeleteEnhMetaFile(i32 %209)
  %211 = load i32, i32* %18, align 4
  ret i32 %211
}

declare dso_local i32 @CreateDIBitmap(i32, %struct.TYPE_8__*, i32, i8*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @CreateBitmap(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

declare dso_local i32 @CreateEnhMetaFileW(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @CloseEnhMetaFile(i32) #1

declare dso_local i64 @GetEnhMetaFileBits(i32, i64, i8*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @HLPFILE_RtfAddControl(%struct.RtfData*, i8*) #1

declare dso_local i64 @HLPFILE_RtfAddHexBytes(%struct.RtfData*, i8*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @DeleteEnhMetaFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
