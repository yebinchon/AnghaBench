; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_print_preview.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_print_preview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__, i32, %struct.TYPE_13__, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }

@preview = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@SB_HORZ = common dso_local global i32 0, align 4
@SB_VERT = common dso_local global i32 0, align 4
@PS_SOLID = common dso_local global i32 0, align 4
@PS_INSIDEFRAME = common dso_local global i32 0, align 4
@RGN_DIFF = common dso_local global i32 0, align 4
@GRAY_BRUSH = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @print_preview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_preview(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 4
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @BeginPaint(i32 %13, i32* %10)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @GetClientRect(i32 %15, %struct.TYPE_14__* %8)
  %17 = call i32 @CreateRectRgnIndirect(%struct.TYPE_14__* %8)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 6, i32 0), align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SB_HORZ, align 4
  %21 = call i32 @GetScrollPos(i32 %19, i32 %20)
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 6, i32 1), align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @SB_VERT, align 4
  %26 = call i32 @GetScrollPos(i32 %24, i32 %25)
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @PS_SOLID, align 4
  %29 = load i32, i32* @PS_INSIDEFRAME, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @RGB(i32 0, i32 0, i32 0)
  %32 = call i32 @CreatePen(i32 %30, i32 2, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @SelectObject(i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sub nsw i32 %36, 2
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %38, 2
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 0), align 8
  %42 = add nsw i32 %40, %41
  %43 = add nsw i32 %42, 2
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 1), align 8
  %47 = add nsw i64 %45, %46
  %48 = add nsw i64 %47, 2
  %49 = call i32 @SetRect(%struct.TYPE_14__* %9, i32 %37, i32 %39, i32 %43, i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @Rectangle(i32 %50, i32 %52, i32 %54, i32 %56, i32 %58)
  %60 = call i32 @CreateRectRgnIndirect(%struct.TYPE_14__* %9)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @RGN_DIFF, align 4
  %65 = call i32 @CombineRgn(i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 0), align 8
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %106

68:                                               ; preds = %1
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 0), align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 6, i32 0), align 8
  %71 = add nsw i32 %69, %70
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 0), align 8
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 6, i32 0), align 8
  %77 = add nsw i32 %75, %76
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %5, align 4
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @Rectangle(i32 %81, i32 %83, i32 %85, i32 %87, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @SetRectRgn(i32 %91, i32 %93, i32 %95, i32 %97, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @RGN_DIFF, align 4
  %105 = call i32 @CombineRgn(i32 %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %68, %1
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @SelectObject(i32 %107, i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @DeleteObject(i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @GRAY_BRUSH, align 4
  %115 = call i32 @GetStockObject(i32 %114)
  %116 = call i32 @FillRgn(i32 %112, i32 %113, i32 %115)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @DeleteObject(i32 %117)
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @DeleteObject(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 0), align 8
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 1), align 8
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 8), align 4
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 3, i32 1), align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 3, i32 0), align 8
  %129 = load i32, i32* @SRCCOPY, align 4
  %130 = call i32 @StretchBlt(i32 %121, i32 %122, i32 %123, i32 %124, i64 %125, i32 %126, i32 0, i32 0, i32 %127, i32 %128, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 2), align 4
  %135 = call i32 @draw_margin_lines(i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 0), align 8
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %170

138:                                              ; preds = %106
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 7), align 8
  %140 = call i32 @is_last_preview_page(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %163, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 6, i32 0), align 8
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 0), align 8
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 0), align 8
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 5, i32 1), align 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 4), align 8
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 3, i32 1), align 4
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 3, i32 0), align 8
  %156 = load i32, i32* @SRCCOPY, align 4
  %157 = call i32 @StretchBlt(i32 %148, i32 %149, i32 %150, i32 %151, i64 %152, i32 %153, i32 0, i32 0, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 2), align 4
  %162 = call i32 @draw_margin_lines(i32 %158, i32 %159, i32 %160, i32 %161)
  br label %169

163:                                              ; preds = %138
  %164 = call i32 @InflateRect(%struct.TYPE_14__* %9, i32 -2, i32 -2)
  %165 = load i32, i32* %5, align 4
  %166 = load i32, i32* @WHITE_BRUSH, align 4
  %167 = call i32 @GetStockObject(i32 %166)
  %168 = call i32 @FillRect(i32 %165, %struct.TYPE_14__* %9, i32 %167)
  br label %169

169:                                              ; preds = %163, %142
  br label %170

170:                                              ; preds = %169, %106
  %171 = bitcast %struct.TYPE_14__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @preview, i32 0, i32 1) to i8*), i8* align 4 %171, i64 16, i1 false)
  %172 = load i32, i32* %2, align 4
  %173 = call i32 @EndPaint(i32 %172, i32* %10)
  ret i32 0
}

declare dso_local i32 @BeginPaint(i32, i32*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @CreateRectRgnIndirect(%struct.TYPE_14__*) #1

declare dso_local i32 @GetScrollPos(i32, i32) #1

declare dso_local i32 @CreatePen(i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_14__*, i32, i32, i32, i64) #1

declare dso_local i32 @Rectangle(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CombineRgn(i32, i32, i32, i32) #1

declare dso_local i32 @SetRectRgn(i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @FillRgn(i32, i32, i32) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @StretchBlt(i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @draw_margin_lines(i32, i32, i32, i32) #1

declare dso_local i32 @is_last_preview_page(i32) #1

declare dso_local i32 @InflateRect(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_14__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EndPaint(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
