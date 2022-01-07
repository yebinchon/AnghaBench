; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_magic_date_calc.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_tm2unixtime.c_magic_date_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@EPOCH_DAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @magic_date_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @magic_date_calc(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, -719498
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EPOCH_DAY, align 4
  %19 = add nsw i32 %17, %18
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 10000, %21
  %23 = add nsw i32 %22, 14780
  %24 = sdiv i32 %23, 3652425
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 365, %26
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %28, 4
  %30 = add nsw i32 %27, %29
  %31 = load i32, i32* %3, align 4
  %32 = sdiv i32 %31, 100
  %33 = sub nsw i32 %30, %32
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 400
  %36 = add nsw i32 %33, %35
  %37 = sub nsw i32 %25, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %14
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %3, align 4
  %45 = mul nsw i32 365, %44
  %46 = load i32, i32* %3, align 4
  %47 = sdiv i32 %46, 4
  %48 = add nsw i32 %45, %47
  %49 = load i32, i32* %3, align 4
  %50 = sdiv i32 %49, 100
  %51 = sub nsw i32 %48, %50
  %52 = load i32, i32* %3, align 4
  %53 = sdiv i32 %52, 400
  %54 = add nsw i32 %51, %53
  %55 = sub nsw i32 %43, %54
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %40, %14
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 100, %57
  %59 = add nsw i32 %58, 52
  %60 = sdiv i32 %59, 3060
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 2
  %63 = srem i32 %62, 12
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 2
  %68 = sdiv i32 %67, 12
  %69 = add nsw i32 %65, %68
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 306
  %73 = add nsw i32 %72, 5
  %74 = sdiv i32 %73, 10
  %75 = sub nsw i32 %70, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %56, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
