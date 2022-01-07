; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_rect.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_fill_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32 }
%struct.TYPE_3__ = type { i16, i16, i16, i16 }

@ETO_OPAQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i16, i32)* @nk_gdi_fill_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_fill_rect(i32 %0, i16 signext %1, i16 signext %2, i16 zeroext %3, i16 zeroext %4, i16 zeroext %5, i32 %6) #0 {
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_3__, align 2
  %17 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %6, i32* %17, align 4
  store i32 %0, i32* %9, align 4
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  store i16 %4, i16* %13, align 2
  store i16 %5, i16* %14, align 2
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @convert_color(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i16, i16* %14, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %26 = load i16, i16* %10, align 2
  store i16 %26, i16* %25, align 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %28 = load i16, i16* %11, align 2
  store i16 %28, i16* %27, align 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %30 = load i16, i16* %10, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* %12, align 2
  %33 = zext i16 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %29, align 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %37 = load i16, i16* %11, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* %13, align 2
  %40 = zext i16 %39 to i32
  %41 = add nsw i32 %38, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %36, align 2
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @SetBkColor(i32 %43, i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @ETO_OPAQUE, align 4
  %48 = call i32 @ExtTextOutW(i32 %46, i32 0, i32 0, i32 %47, %struct.TYPE_3__* %16, i32* null, i32 0, i32* null)
  br label %74

49:                                               ; preds = %7
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @SetDCPenColor(i32 %50, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @SetDCBrushColor(i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i16, i16* %10, align 2
  %58 = load i16, i16* %11, align 2
  %59 = load i16, i16* %10, align 2
  %60 = sext i16 %59 to i32
  %61 = load i16, i16* %12, align 2
  %62 = zext i16 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = trunc i32 %63 to i16
  %65 = load i16, i16* %11, align 2
  %66 = sext i16 %65 to i32
  %67 = load i16, i16* %13, align 2
  %68 = zext i16 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = trunc i32 %69 to i16
  %71 = load i16, i16* %14, align 2
  %72 = load i16, i16* %14, align 2
  %73 = call i32 @RoundRect(i32 %56, i16 signext %57, i16 signext %58, i16 signext %64, i16 signext %70, i16 zeroext %71, i16 zeroext %72)
  br label %74

74:                                               ; preds = %49, %24
  ret void
}

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i32, i32, i32, %struct.TYPE_3__*, i32*, i32, i32*) #1

declare dso_local i32 @SetDCPenColor(i32, i32) #1

declare dso_local i32 @SetDCBrushColor(i32, i32) #1

declare dso_local i32 @RoundRect(i32, i16 signext, i16 signext, i16 signext, i16 signext, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
