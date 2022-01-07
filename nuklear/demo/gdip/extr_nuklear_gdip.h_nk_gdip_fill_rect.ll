; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_fill_rect.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.nk_color = type { i32 }

@gdip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16, i16, i32)* @nk_gdip_fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_fill_rect(i16 signext %0, i16 signext %1, i16 zeroext %2, i16 zeroext %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.nk_color, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  store i32 %5, i32* %14, align 4
  store i16 %0, i16* %8, align 2
  store i16 %1, i16* %9, align 2
  store i16 %2, i16* %10, align 2
  store i16 %3, i16* %11, align 2
  store i16 %4, i16* %12, align 2
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %7, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @convert_color(i32 %17)
  %19 = call i32 @GdipSetSolidFillColor(i32 %15, i32 %18)
  %20 = load i16, i16* %12, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %6
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %26 = load i16, i16* %8, align 2
  %27 = load i16, i16* %9, align 2
  %28 = load i16, i16* %10, align 2
  %29 = load i16, i16* %11, align 2
  %30 = call i32 @GdipFillRectangleI(i32 %24, i32 %25, i16 signext %26, i16 signext %27, i16 zeroext %28, i16 zeroext %29)
  br label %155

31:                                               ; preds = %6
  %32 = load i16, i16* %12, align 2
  %33 = zext i16 %32 to i32
  %34 = mul nsw i32 2, %33
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %13, align 2
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %38 = load i16, i16* %8, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16, i16* %12, align 2
  %41 = zext i16 %40 to i32
  %42 = add nsw i32 %39, %41
  %43 = trunc i32 %42 to i16
  %44 = load i16, i16* %9, align 2
  %45 = load i16, i16* %10, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %13, align 2
  %48 = zext i16 %47 to i32
  %49 = sub nsw i32 %46, %48
  %50 = trunc i32 %49 to i16
  %51 = load i16, i16* %11, align 2
  %52 = call i32 @GdipFillRectangleI(i32 %36, i32 %37, i16 signext %43, i16 signext %44, i16 zeroext %50, i16 zeroext %51)
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %55 = load i16, i16* %8, align 2
  %56 = load i16, i16* %9, align 2
  %57 = sext i16 %56 to i32
  %58 = load i16, i16* %12, align 2
  %59 = zext i16 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = trunc i32 %60 to i16
  %62 = load i16, i16* %12, align 2
  %63 = load i16, i16* %11, align 2
  %64 = zext i16 %63 to i32
  %65 = load i16, i16* %13, align 2
  %66 = zext i16 %65 to i32
  %67 = sub nsw i32 %64, %66
  %68 = trunc i32 %67 to i16
  %69 = call i32 @GdipFillRectangleI(i32 %53, i32 %54, i16 signext %55, i16 signext %61, i16 zeroext %62, i16 zeroext %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %72 = load i16, i16* %8, align 2
  %73 = sext i16 %72 to i32
  %74 = load i16, i16* %10, align 2
  %75 = zext i16 %74 to i32
  %76 = add nsw i32 %73, %75
  %77 = load i16, i16* %12, align 2
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %76, %78
  %80 = trunc i32 %79 to i16
  %81 = load i16, i16* %9, align 2
  %82 = sext i16 %81 to i32
  %83 = load i16, i16* %12, align 2
  %84 = zext i16 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = trunc i32 %85 to i16
  %87 = load i16, i16* %12, align 2
  %88 = load i16, i16* %11, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* %13, align 2
  %91 = zext i16 %90 to i32
  %92 = sub nsw i32 %89, %91
  %93 = trunc i32 %92 to i16
  %94 = call i32 @GdipFillRectangleI(i32 %70, i32 %71, i16 signext %80, i16 signext %86, i16 zeroext %87, i16 zeroext %93)
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %97 = load i16, i16* %8, align 2
  %98 = load i16, i16* %9, align 2
  %99 = load i16, i16* %13, align 2
  %100 = load i16, i16* %13, align 2
  %101 = call i32 @GdipFillPieI(i32 %95, i32 %96, i16 signext %97, i16 signext %98, i16 zeroext %99, i16 zeroext %100, i32 180, i32 90)
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %104 = load i16, i16* %8, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* %10, align 2
  %107 = zext i16 %106 to i32
  %108 = add nsw i32 %105, %107
  %109 = load i16, i16* %13, align 2
  %110 = zext i16 %109 to i32
  %111 = sub nsw i32 %108, %110
  %112 = trunc i32 %111 to i16
  %113 = load i16, i16* %9, align 2
  %114 = load i16, i16* %13, align 2
  %115 = load i16, i16* %13, align 2
  %116 = call i32 @GdipFillPieI(i32 %102, i32 %103, i16 signext %112, i16 signext %113, i16 zeroext %114, i16 zeroext %115, i32 270, i32 90)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %119 = load i16, i16* %8, align 2
  %120 = sext i16 %119 to i32
  %121 = load i16, i16* %10, align 2
  %122 = zext i16 %121 to i32
  %123 = add nsw i32 %120, %122
  %124 = load i16, i16* %13, align 2
  %125 = zext i16 %124 to i32
  %126 = sub nsw i32 %123, %125
  %127 = trunc i32 %126 to i16
  %128 = load i16, i16* %9, align 2
  %129 = sext i16 %128 to i32
  %130 = load i16, i16* %11, align 2
  %131 = zext i16 %130 to i32
  %132 = add nsw i32 %129, %131
  %133 = load i16, i16* %13, align 2
  %134 = zext i16 %133 to i32
  %135 = sub nsw i32 %132, %134
  %136 = trunc i32 %135 to i16
  %137 = load i16, i16* %13, align 2
  %138 = load i16, i16* %13, align 2
  %139 = call i32 @GdipFillPieI(i32 %117, i32 %118, i16 signext %127, i16 signext %136, i16 zeroext %137, i16 zeroext %138, i32 0, i32 90)
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 1), align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gdip, i32 0, i32 0), align 4
  %142 = load i16, i16* %8, align 2
  %143 = load i16, i16* %9, align 2
  %144 = sext i16 %143 to i32
  %145 = load i16, i16* %11, align 2
  %146 = zext i16 %145 to i32
  %147 = add nsw i32 %144, %146
  %148 = load i16, i16* %13, align 2
  %149 = zext i16 %148 to i32
  %150 = sub nsw i32 %147, %149
  %151 = trunc i32 %150 to i16
  %152 = load i16, i16* %13, align 2
  %153 = load i16, i16* %13, align 2
  %154 = call i32 @GdipFillPieI(i32 %140, i32 %141, i16 signext %142, i16 signext %151, i16 zeroext %152, i16 zeroext %153, i32 90, i32 90)
  br label %155

155:                                              ; preds = %31, %23
  ret void
}

declare dso_local i32 @GdipSetSolidFillColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipFillRectangleI(i32, i32, i16 signext, i16 signext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @GdipFillPieI(i32, i32, i16 signext, i16 signext, i16 zeroext, i16 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
