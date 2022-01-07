; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_SetPLL.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_SetPLL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AT91C_BASE_PMC = common dso_local global %struct.TYPE_5__* null, align 8
@AT91C_BASE_CKGR = common dso_local global %struct.TYPE_6__* null, align 8
@AT91C_PLLA_VALUE = common dso_local global i32 0, align 4
@AT91C_PMC_SR = common dso_local global i32* null, align 8
@AT91C_PMC_LOCKA = common dso_local global i32 0, align 4
@AT91C_PMC_MCKRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @AT91F_SetPLL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AT91F_SetPLL() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AT91C_BASE_PMC, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AT91C_BASE_CKGR, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 4
  %8 = load i32, i32* @AT91C_PLLA_VALUE, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %18, %0
  %12 = load i32*, i32** @AT91C_PMC_SR, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AT91C_PMC_LOCKA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %11

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = and i32 %23, 28
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i32, i32* %1, align 4
  %28 = and i32 %27, -29
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %39, %26
  %33 = load i32*, i32** @AT91C_PMC_SR, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AT91C_PMC_MCKRDY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %32

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* %1, align 4
  %43 = icmp ne i32 %42, 514
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 514, i32* %46, align 4
  %47 = load i32, i32* %1, align 4
  %48 = and i32 %47, 3
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %58, %50
  %52 = load i32*, i32** @AT91C_PMC_SR, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AT91C_PMC_MCKRDY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %51

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %41
  ret i32 1
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
