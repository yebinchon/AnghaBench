; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_draw_text.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdi/extr_nuklear_gdi.h_nk_gdi_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.nk_color = type { i32 }

@CP_UTF8 = common dso_local global i32 0, align 4
@ETO_OPAQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i16, i16, i16, i8*, i32, %struct.TYPE_3__*, i32, i32)* @nk_gdi_draw_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdi_draw_text(i32 %0, i16 signext %1, i16 signext %2, i16 zeroext %3, i16 zeroext %4, i8* %5, i32 %6, %struct.TYPE_3__* %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.nk_color, align 4
  %12 = alloca %struct.nk_color, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_3__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  store i32 %8, i32* %23, align 4
  %24 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %12, i32 0, i32 0
  store i32 %9, i32* %24, align 4
  store i32 %0, i32* %13, align 4
  store i16 %1, i16* %14, align 2
  store i16 %2, i16* %15, align 2
  store i16 %3, i16* %16, align 2
  store i16 %4, i16* %17, align 2
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %20, align 8
  %25 = load i8*, i8** %18, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %10
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %19, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %27, %10
  br label %73

34:                                               ; preds = %30
  %35 = load i32, i32* @CP_UTF8, align 4
  %36 = load i8*, i8** %18, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call i32 @MultiByteToWideChar(i32 %35, i32 0, i8* %36, i32 %37, i32* null, i32 0)
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %21, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i64 @_alloca(i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %22, align 8
  %45 = load i32, i32* @CP_UTF8, align 4
  %46 = load i8*, i8** %18, align 8
  %47 = load i32, i32* %19, align 4
  %48 = load i32*, i32** %22, align 8
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @MultiByteToWideChar(i32 %45, i32 0, i8* %46, i32 %47, i32* %48, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @convert_color(i32 %53)
  %55 = call i32 @SetBkColor(i32 %51, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %12, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @convert_color(i32 %58)
  %60 = call i32 @SetTextColor(i32 %56, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SelectObject(i32 %61, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i16, i16* %14, align 2
  %68 = load i16, i16* %15, align 2
  %69 = load i32, i32* @ETO_OPAQUE, align 4
  %70 = load i32*, i32** %22, align 8
  %71 = load i32, i32* %21, align 4
  %72 = call i32 @ExtTextOutW(i32 %66, i16 signext %67, i16 signext %68, i32 %69, i32* null, i32* %70, i32 %71, i32* null)
  br label %73

73:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i64 @_alloca(i32) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @ExtTextOutW(i32, i16 signext, i16 signext, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
