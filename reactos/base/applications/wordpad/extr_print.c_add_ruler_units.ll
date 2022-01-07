; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_add_ruler_units.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_add_ruler_units.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@add_ruler_units.hdc = internal global i64 0, align 8
@add_ruler_units.hBitmap = internal global i32 0, align 4
@__const.add_ruler_units.FontName = private unnamed_addr constant [14 x i8] c"MS Sans Serif\00", align 1
@LOGPIXELSX = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@TRANSPARENT = common dso_local global i32 0, align 4
@TA_CENTER = common dso_local global i32 0, align 4
@__const.add_ruler_units.format = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SRCAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_4__*, i64, i32)* @add_ruler_units to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_ruler_units(i64 %0, %struct.TYPE_4__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [14 x i8], align 1
  %17 = alloca [3 x i8], align 1
  %18 = alloca [3 x i8], align 1
  %19 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %178

22:                                               ; preds = %4
  %23 = bitcast [14 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.add_ruler_units.FontName, i32 0, i32 0), i64 14, i1 false)
  %24 = load i64, i64* @add_ruler_units.hdc, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i64, i64* @add_ruler_units.hdc, align 8
  %28 = call i32 @DeleteDC(i64 %27)
  %29 = load i32, i32* @add_ruler_units.hBitmap, align 4
  %30 = call i32 @DeleteObject(i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = call i64 @CreateCompatibleDC(i32 0)
  store i64 %32, i64* @add_ruler_units.hdc, align 8
  %33 = call i32 @centmm_to_twips(i32 1000)
  %34 = load i64, i64* @add_ruler_units.hdc, align 8
  %35 = load i32, i32* @LOGPIXELSX, align 4
  %36 = call i32 @GetDeviceCaps(i64 %34, i32 %35)
  %37 = call i32 @twips_to_pixels(i32 %33, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sitofp i32 %38 to float
  %40 = fpext float %39 to double
  %41 = fdiv double %40, 4.000000e+00
  %42 = fptosi double %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load i64, i64* @add_ruler_units.hdc, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @CreateCompatibleBitmap(i64 %43, i32 %46, i64 %49)
  store i32 %50, i32* @add_ruler_units.hBitmap, align 4
  %51 = load i64, i64* @add_ruler_units.hdc, align 8
  %52 = load i32, i32* @add_ruler_units.hBitmap, align 4
  %53 = call i32 @SelectObject(i64 %51, i32 %52)
  %54 = load i64, i64* @add_ruler_units.hdc, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = load i32, i32* @WHITE_BRUSH, align 4
  %57 = call i32 @GetStockObject(i32 %56)
  %58 = call i32 @FillRect(i64 %54, %struct.TYPE_4__* %55, i32 %57)
  %59 = getelementptr inbounds [14 x i8], [14 x i8]* %16, i64 0, i64 0
  %60 = call i32 @CreateFontW(i32 10, i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i64, i64* @add_ruler_units.hdc, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @SelectObject(i64 %61, i32 %62)
  %64 = load i64, i64* @add_ruler_units.hdc, align 8
  %65 = load i32, i32* @TRANSPARENT, align 4
  %66 = call i32 @SetBkMode(i64 %64, i32 %65)
  %67 = load i64, i64* @add_ruler_units.hdc, align 8
  %68 = load i32, i32* @TA_CENTER, align 4
  %69 = call i32 @SetTextAlign(i64 %67, i32 %68)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sitofp i64 %72 to float
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sitofp i64 %76 to float
  %78 = fsub float %73, %77
  %79 = fpext float %78 to double
  %80 = fdiv double %79, 2.000000e+00
  %81 = fptosi double %80 to i32
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  store i32 1, i32* %9, align 4
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %172, %31
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sub nsw i32 %94, %95
  %97 = add nsw i32 %96, 1
  %98 = icmp slt i32 %91, %97
  br i1 %98, label %99, label %175

99:                                               ; preds = %90
  %100 = bitcast [3 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %100, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.add_ruler_units.format, i32 0, i32 0), i64 3, i1 false)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  br label %175

109:                                              ; preds = %99
  %110 = load i64, i64* @add_ruler_units.hdc, align 8
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @MoveToEx(i64 %110, i32 %111, i32 %112, i32* null)
  %114 = load i64, i64* @add_ruler_units.hdc, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 2
  %118 = call i32 @LineTo(i64 %114, i32 %115, i32 %117)
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  br label %175

126:                                              ; preds = %109
  %127 = load i64, i64* @add_ruler_units.hdc, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %11, align 4
  %130 = sub nsw i32 %129, 3
  %131 = call i32 @MoveToEx(i64 %127, i32 %128, i32 %130, i32* null)
  %132 = load i64, i64* @add_ruler_units.hdc, align 8
  %133 = load i32, i32* %19, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 3
  %136 = call i32 @LineTo(i64 %132, i32 %133, i32 %135)
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %126
  br label %175

144:                                              ; preds = %126
  %145 = load i64, i64* @add_ruler_units.hdc, align 8
  %146 = load i32, i32* %19, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @MoveToEx(i64 %145, i32 %146, i32 %147, i32* null)
  %149 = load i64, i64* @add_ruler_units.hdc, align 8
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 2
  %153 = call i32 @LineTo(i64 %149, i32 %150, i32 %152)
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %144
  br label %175

161:                                              ; preds = %144
  %162 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %163 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @wsprintfW(i8* %162, i8* %163, i32 %164)
  %166 = load i64, i64* @add_ruler_units.hdc, align 8
  %167 = load i32, i32* %10, align 4
  %168 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %169 = getelementptr inbounds [3 x i8], [3 x i8]* %17, i64 0, i64 0
  %170 = call i32 @lstrlenW(i8* %169)
  %171 = call i32 @TextOutW(i64 %166, i32 %167, i32 5, i8* %168, i32 %170)
  br label %172

172:                                              ; preds = %161
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %90

175:                                              ; preds = %160, %143, %125, %108, %90
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @DeleteObject(i32 %176)
  br label %178

178:                                              ; preds = %175, %4
  %179 = load i64, i64* %5, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @add_ruler_units.hdc, align 8
  %187 = load i32, i32* @SRCAND, align 4
  %188 = call i32 @BitBlt(i64 %179, i32 0, i32 0, i32 %182, i64 %185, i64 %186, i32 0, i32 0, i32 %187)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DeleteDC(i64) #2

declare dso_local i32 @DeleteObject(i32) #2

declare dso_local i64 @CreateCompatibleDC(i32) #2

declare dso_local i32 @twips_to_pixels(i32, i32) #2

declare dso_local i32 @centmm_to_twips(i32) #2

declare dso_local i32 @GetDeviceCaps(i64, i32) #2

declare dso_local i32 @CreateCompatibleBitmap(i64, i32, i64) #2

declare dso_local i32 @SelectObject(i64, i32) #2

declare dso_local i32 @FillRect(i64, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @GetStockObject(i32) #2

declare dso_local i32 @CreateFontW(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @SetBkMode(i64, i32) #2

declare dso_local i32 @SetTextAlign(i64, i32) #2

declare dso_local i32 @MoveToEx(i64, i32, i32, i32*) #2

declare dso_local i32 @LineTo(i64, i32, i32) #2

declare dso_local i32 @wsprintfW(i8*, i8*, i32) #2

declare dso_local i32 @TextOutW(i64, i32, i32, i8*, i32) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @BitBlt(i64, i32, i32, i32, i64, i64, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
