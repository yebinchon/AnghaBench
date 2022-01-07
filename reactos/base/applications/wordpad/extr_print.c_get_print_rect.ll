; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_get_print_rect.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_print.c_get_print_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@LOGPIXELSY = common dso_local global i32 0, align 4
@LOGPIXELSX = common dso_local global i32 0, align 4
@PHYSICALWIDTH = common dso_local global i32 0, align 4
@PHYSICALHEIGHT = common dso_local global i32 0, align 4
@margins = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @get_print_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_print_rect(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = load i32, i32* @LOGPIXELSY, align 4
  %13 = call i32 @GetDeviceCaps(i64 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* @LOGPIXELSX, align 4
  %16 = call i32 @GetDeviceCaps(i64 %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* %2, align 8
  %18 = load i32, i32* @PHYSICALWIDTH, align 4
  %19 = call i32 @GetDeviceCaps(i64 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @devunits_to_twips(i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* @PHYSICALHEIGHT, align 4
  %24 = call i32 @GetDeviceCaps(i64 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @devunits_to_twips(i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %30

27:                                               ; preds = %1
  %28 = call i32 @centmm_to_twips(i32 18500)
  store i32 %28, i32* %4, align 4
  %29 = call i32 @centmm_to_twips(i32 27000)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %10
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @margins, i32 0, i32 3), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @margins, i32 0, i32 2), align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @margins, i32 0, i32 1), align 8
  %36 = sub nsw i64 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @margins, i32 0, i32 0), align 8
  %40 = sub nsw i64 %38, %39
  %41 = call i32 @SetRect(i32* %3, i32 %31, i32 %32, i64 %36, i64 %40)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @GetDeviceCaps(i64, i32) #1

declare dso_local i32 @devunits_to_twips(i32, i32) #1

declare dso_local i32 @centmm_to_twips(i32) #1

declare dso_local i32 @SetRect(i32*, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
