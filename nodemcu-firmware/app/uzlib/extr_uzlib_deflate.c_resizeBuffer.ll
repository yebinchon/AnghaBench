; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_deflate.c_resizeBuffer.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/uzlib/extr_uzlib_deflate.c_resizeBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, i32*, i64, i64 }

@oBuf = common dso_local global %struct.TYPE_2__* null, align 8
@UZLIB_MEMORY_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resizeBuffer() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca double, align 8
  %3 = call i32 @DBG_COUNT(i32 2)
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oBuf, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oBuf, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fmul double %7, %10
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oBuf, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = fdiv double %11, %14
  store double %15, double* %2, align 8
  %16 = load double, double* %2, align 8
  %17 = fptosi double %16 to i64
  %18 = add nsw i64 128, %17
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oBuf, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oBuf, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oBuf, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32* @realloc(i32* %23, i64 %26)
  store i32* %27, i32** %1, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %0
  %30 = load i32, i32* @UZLIB_MEMORY_ERROR, align 4
  %31 = call i32 @UZLIB_THROW(i32 %30)
  br label %32

32:                                               ; preds = %29, %0
  %33 = load i32*, i32** %1, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oBuf, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  ret void
}

declare dso_local i32 @DBG_COUNT(i32) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @UZLIB_THROW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
