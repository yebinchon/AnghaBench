; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_GetPrintingRect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_dialog.c_GetPrintingRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@PHYSICALOFFSETX = common dso_local global i32 0, align 4
@PHYSICALOFFSETY = common dso_local global i32 0, align 4
@PHYSICALWIDTH = common dso_local global i32 0, align 4
@PHYSICALHEIGHT = common dso_local global i32 0, align 4
@LOGPIXELSX = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@HORZRES = common dso_local global i32 0, align 4
@VERTRES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i64 } (i32, i64, i64)* @GetPrintingRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i64 } @GetPrintingRect(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_4__* %5 to { i64, i64 }*
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0
  store i64 %1, i64* %16, align 4
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1
  store i64 %2, i64* %17, align 4
  store i32 %0, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PHYSICALOFFSETX, align 4
  %20 = call i32 @GetDeviceCaps(i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PHYSICALOFFSETY, align 4
  %23 = call i32 @GetDeviceCaps(i32 %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PHYSICALWIDTH, align 4
  %26 = call i32 @GetDeviceCaps(i32 %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PHYSICALHEIGHT, align 4
  %29 = call i32 @GetDeviceCaps(i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @LOGPIXELSX, align 4
  %32 = call i32 @GetDeviceCaps(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @LOGPIXELSY, align 4
  %35 = call i32 @GetDeviceCaps(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @HORZRES, align 4
  %38 = call i32 @GetDeviceCaps(i32 %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @VERTRES, align 4
  %41 = call i32 @GetDeviceCaps(i32 %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sdiv i32 %45, 2540
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 %46, %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sdiv i32 %53, 2540
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sdiv i32 %62, 2540
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %63, %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sdiv i32 %69, 2540
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %70, %75
  %77 = add nsw i32 %65, %76
  %78 = sub nsw i32 %58, %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sdiv i32 %84, 2540
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %85, %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 %89, %90
  %92 = sdiv i32 %91, 2540
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sub nsw i32 %92, %97
  %99 = add nsw i32 %87, %98
  %100 = sub nsw i32 %80, %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  store i32 %100, i32* %101, align 4
  %102 = bitcast %struct.TYPE_4__* %4 to { i64, i64 }*
  %103 = load { i64, i64 }, { i64, i64 }* %102, align 4
  ret { i64, i64 } %103
}

declare dso_local i32 @GetDeviceCaps(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
