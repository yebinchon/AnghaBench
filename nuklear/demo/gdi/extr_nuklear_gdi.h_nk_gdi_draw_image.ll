; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_draw_image.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_draw_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nk_image = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@gdi = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16, i32, i32)* @nk_gdi_draw_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_draw_image(i16 signext %0, i16 signext %1, i16 zeroext %2, i16 zeroext %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.nk_image, align 4
  %8 = alloca %struct.nk_color, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__, align 4
  %16 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %7, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %4, i32* %17, align 4
  %18 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %8, i32 0, i32 0
  store i32 %5, i32* %18, align 4
  store i16 %0, i16* %9, align 2
  store i16 %1, i16* %10, align 2
  store i16 %2, i16* %11, align 2
  store i16 %3, i16* %12, align 2
  %19 = getelementptr inbounds %struct.nk_image, %struct.nk_image* %7, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdi, i32 0, i32 0), align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %6
  br label %51

28:                                               ; preds = %24
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdi, i32 0, i32 0), align 4
  %30 = call i32 @CreateCompatibleDC(i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = ptrtoint %struct.TYPE_5__* %15 to i32
  %33 = call i32 @GetObject(i32 %31, i32 8, i32 %32)
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @SelectObject(i32 %34, i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gdi, i32 0, i32 0), align 4
  %38 = load i16, i16* %9, align 2
  %39 = load i16, i16* %10, align 2
  %40 = load i16, i16* %11, align 2
  %41 = load i16, i16* %12, align 2
  %42 = load i32, i32* %14, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SRCCOPY, align 4
  %48 = call i32 @StretchBlt(i32 %37, i16 signext %38, i16 signext %39, i16 zeroext %40, i16 zeroext %41, i32 %42, i32 0, i32 0, i32 %44, i32 %46, i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @DeleteDC(i32 %49)
  br label %51

51:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @GetObject(i32, i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @StretchBlt(i32, i16 signext, i16 signext, i16 zeroext, i16 zeroext, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
