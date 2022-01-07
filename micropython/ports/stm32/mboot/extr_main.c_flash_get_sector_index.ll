; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_flash_get_sector_index.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_flash_get_sector_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@flash_layout = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64*)* @flash_get_sector_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flash_get_sector_index(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %10, %14
  br i1 %15, label %16, label %74

16:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %70, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %20 = call i32 @MP_ARRAY_SIZE(%struct.TYPE_3__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %66, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %24, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %40, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %38, %48
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %32
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flash_layout, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64*, i64** %5, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  br label %75

63:                                               ; preds = %32
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %23

69:                                               ; preds = %23
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %17

73:                                               ; preds = %17
  br label %74

74:                                               ; preds = %73, %2
  store i64 0, i64* %3, align 8
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i32 @MP_ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
