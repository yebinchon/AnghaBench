; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRGBA.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgRGBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i8, i8, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvgRGBA(i8 zeroext %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8 %0, i8* %6, align 1
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = sitofp i32 %11 to float
  %13 = fdiv float %12, 2.550000e+02
  %14 = fptoui float %13 to i8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8 %14, i8* %15, align 1
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = sitofp i32 %17 to float
  %19 = fdiv float %18, 2.550000e+02
  %20 = fptoui float %19 to i8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i8 %20, i8* %21, align 1
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %24, 2.550000e+02
  %26 = fptoui float %25 to i8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8 %26, i8* %27, align 1
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i32
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, 2.550000e+02
  %32 = fptoui float %31 to i8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i8 %32, i8* %33, align 1
  %34 = bitcast %struct.TYPE_3__* %5 to i32*
  %35 = load i32, i32* %34, align 1
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
