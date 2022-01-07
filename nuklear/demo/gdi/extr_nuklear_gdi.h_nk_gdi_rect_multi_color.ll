; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_rect_multi_color.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_rect_multi_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i64, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i16, i16 }

@AC_SRC_OVER = common dso_local global i32 0, align 4
@AC_SRC_ALPHA = common dso_local global i32 0, align 4
@GRADIENT_FILL_TRIANGLE = common dso_local global i32 0, align 4
@gdi = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i32, i32, i32, i32)* @nk_gdi_rect_multi_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_rect_multi_color(i32 %0, i16 signext %1, i16 signext %2, i16 zeroext %3, i16 zeroext %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.nk_color, align 4
  %11 = alloca %struct.nk_color, align 4
  %12 = alloca %struct.nk_color, align 4
  %13 = alloca %struct.nk_color, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca i32, align 4
  %21 = alloca [2 x %struct.TYPE_10__], align 16
  %22 = alloca [4 x %struct.TYPE_9__], align 16
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  store i32 %5, i32* %23, align 4
  %24 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  store i32 %6, i32* %24, align 4
  %25 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %12, i32 0, i32 0
  store i32 %7, i32* %25, align 4
  %26 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %13, i32 0, i32 0
  store i32 %8, i32* %26, align 4
  store i32 %0, i32* %14, align 4
  store i16 %1, i16* %15, align 2
  store i16 %2, i16* %16, align 2
  store i16 %3, i16* %17, align 2
  store i16 %4, i16* %18, align 2
  %27 = load i32, i32* @AC_SRC_OVER, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @AC_SRC_ALPHA, align 4
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load i16, i16* %15, align 2
  %34 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i16 %33, i16* %35, align 16
  %36 = load i16, i16* %16, align 2
  %37 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i16 %36, i16* %38, align 2
  %39 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 0
  %40 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nk_gdi_set_vertexColor(%struct.TYPE_9__* %39, i32 %41)
  %43 = load i16, i16* %15, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* %17, align 2
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %44, %46
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i16 %48, i16* %50, align 4
  %51 = load i16, i16* %16, align 2
  %52 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store i16 %51, i16* %53, align 2
  %54 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 1
  %55 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nk_gdi_set_vertexColor(%struct.TYPE_9__* %54, i32 %56)
  %58 = load i16, i16* %15, align 2
  %59 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i16 %58, i16* %60, align 8
  %61 = load i16, i16* %16, align 2
  %62 = sext i16 %61 to i32
  %63 = load i16, i16* %18, align 2
  %64 = zext i16 %63 to i32
  %65 = add nsw i32 %62, %64
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 2
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store i16 %66, i16* %68, align 2
  %69 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 2
  %70 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %12, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nk_gdi_set_vertexColor(%struct.TYPE_9__* %69, i32 %71)
  %73 = load i16, i16* %15, align 2
  %74 = sext i16 %73 to i32
  %75 = load i16, i16* %17, align 2
  %76 = zext i16 %75 to i32
  %77 = add nsw i32 %74, %76
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 3
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i16 %78, i16* %80, align 4
  %81 = load i16, i16* %16, align 2
  %82 = sext i16 %81 to i32
  %83 = load i16, i16* %18, align 2
  %84 = zext i16 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 3
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  store i16 %86, i16* %88, align 2
  %89 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 3
  %90 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @nk_gdi_set_vertexColor(%struct.TYPE_9__* %89, i32 %91)
  %93 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %21, i64 0, i64 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  store i32 0, i32* %94, align 16
  %95 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %21, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %21, i64 0, i64 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store i32 2, i32* %98, align 8
  %99 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %21, i64 0, i64 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  store i32 2, i32* %100, align 4
  %101 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %21, i64 0, i64 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %21, i64 0, i64 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i32 3, i32* %104, align 4
  %105 = load i32, i32* %14, align 4
  %106 = getelementptr inbounds [4 x %struct.TYPE_9__], [4 x %struct.TYPE_9__]* %22, i64 0, i64 0
  %107 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %21, i64 0, i64 0
  %108 = load i32, i32* @GRADIENT_FILL_TRIANGLE, align 4
  %109 = call i32 @GdiGradientFill(i32 %105, %struct.TYPE_9__* %106, i32 4, %struct.TYPE_10__* %107, i32 2, i32 %108)
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gdi, i32 0, i32 1), align 4
  %111 = load i16, i16* %15, align 2
  %112 = load i16, i16* %16, align 2
  %113 = load i16, i16* %15, align 2
  %114 = sext i16 %113 to i32
  %115 = load i16, i16* %17, align 2
  %116 = zext i16 %115 to i32
  %117 = add nsw i32 %114, %116
  %118 = trunc i32 %117 to i16
  %119 = load i16, i16* %16, align 2
  %120 = sext i16 %119 to i32
  %121 = load i16, i16* %18, align 2
  %122 = zext i16 %121 to i32
  %123 = add nsw i32 %120, %122
  %124 = trunc i32 %123 to i16
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @gdi, i32 0, i32 0), align 4
  %126 = load i16, i16* %15, align 2
  %127 = load i16, i16* %16, align 2
  %128 = load i16, i16* %15, align 2
  %129 = sext i16 %128 to i32
  %130 = load i16, i16* %17, align 2
  %131 = zext i16 %130 to i32
  %132 = add nsw i32 %129, %131
  %133 = trunc i32 %132 to i16
  %134 = load i16, i16* %16, align 2
  %135 = sext i16 %134 to i32
  %136 = load i16, i16* %18, align 2
  %137 = zext i16 %136 to i32
  %138 = add nsw i32 %135, %137
  %139 = trunc i32 %138 to i16
  %140 = call i32 @AlphaBlend(i32 %110, i16 signext %111, i16 signext %112, i16 signext %118, i16 signext %124, i32 %125, i16 signext %126, i16 signext %127, i16 signext %133, i16 signext %139, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %19)
  ret void
}

declare dso_local i32 @nk_gdi_set_vertexColor(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @GdiGradientFill(i32, %struct.TYPE_9__*, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @AlphaBlend(i32, i16 signext, i16 signext, i16 signext, i16 signext, i32, i16 signext, i16 signext, i16 signext, i16 signext, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
