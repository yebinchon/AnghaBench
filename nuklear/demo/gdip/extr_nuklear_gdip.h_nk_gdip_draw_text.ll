; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_draw_text.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdip_draw_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nk_color = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@CP_UTF8 = common dso_local global i32 0, align 4
@gdip = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16, i16, i16, i16, i8*, i32, %struct.TYPE_7__*, i32, i32)* @nk_gdip_draw_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nk_gdip_draw_text(i16 signext %0, i16 signext %1, i16 zeroext %2, i16 zeroext %3, i8* %4, i32 %5, %struct.TYPE_7__* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.nk_color, align 4
  %11 = alloca %struct.nk_color, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_6__, align 4
  %22 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %10, i32 0, i32 0
  store i32 %7, i32* %22, align 4
  %23 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  store i32 %8, i32* %23, align 4
  store i16 %0, i16* %12, align 2
  store i16 %1, i16* %13, align 2
  store i16 %2, i16* %14, align 2
  store i16 %3, i16* %15, align 2
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %18, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %25 = load i16, i16* %12, align 2
  %26 = sext i16 %25 to i32
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %28 = load i16, i16* %13, align 2
  %29 = sext i16 %28 to i32
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %31 = load i16, i16* %14, align 2
  %32 = zext i16 %31 to i32
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %34 = load i16, i16* %15, align 2
  %35 = zext i16 %34 to i32
  store i32 %35, i32* %33, align 4
  %36 = load i8*, i8** %16, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %9
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41, %38, %9
  br label %76

45:                                               ; preds = %41
  %46 = load i32, i32* @CP_UTF8, align 4
  %47 = load i8*, i8** %16, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @MultiByteToWideChar(i32 %46, i32 0, i8* %47, i32 %48, i32* null, i32 0)
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = call i64 @_alloca(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %20, align 8
  %56 = load i32, i32* @CP_UTF8, align 4
  %57 = load i8*, i8** %16, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32*, i32** %20, align 8
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @MultiByteToWideChar(i32 %56, i32 0, i8* %57, i32 %58, i32* %59, i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gdip, i32 0, i32 0), align 4
  %63 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @convert_color(i32 %64)
  %66 = call i32 @GdipSetSolidFillColor(i32 %62, i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gdip, i32 0, i32 2), align 4
  %68 = load i32*, i32** %20, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gdip, i32 0, i32 1), align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gdip, i32 0, i32 0), align 4
  %75 = call i32 @GdipDrawString(i32 %67, i32* %68, i32 %69, i32 %72, %struct.TYPE_6__* %21, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i64 @_alloca(i32) #1

declare dso_local i32 @GdipSetSolidFillColor(i32, i32) #1

declare dso_local i32 @convert_color(i32) #1

declare dso_local i32 @GdipDrawString(i32, i32*, i32, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
