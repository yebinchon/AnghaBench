; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_handle_tx.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_handle_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@DFU_UPLOAD = common dso_local global i32 0, align 4
@dfu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DFU_GETSTATUS = common dso_local global i32 0, align 4
@DFU_STATUS_MANIFEST = common dso_local global i32 0, align 4
@DFU_STATUS_UPLOAD_IDLE = common dso_local global i32 0, align 4
@DFU_STATUS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, i32)* @dfu_handle_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfu_handle_tx(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @DFU_UPLOAD, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 2
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 2
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 2), align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @do_read(i64 %27, i32 %28, i32* %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %6, align 4
  br label %66

32:                                               ; preds = %16
  br label %65

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DFU_GETSTATUS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 6
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  switch i32 %41, label %49 [
    i32 129, label %42
    i32 130, label %43
    i32 128, label %45
    i32 131, label %47
  ]

42:                                               ; preds = %40
  br label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @DFU_STATUS_MANIFEST, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  br label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @DFU_STATUS_UPLOAD_IDLE, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @DFU_STATUS_BUSY, align 4
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  br label %49

49:                                               ; preds = %40, %47, %45, %43, %42
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 0, i32* %63, align 4
  store i32 6, i32* %6, align 4
  br label %66

64:                                               ; preds = %37, %33
  br label %65

65:                                               ; preds = %64, %32
  store i32 -1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %49, %19
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @do_read(i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
