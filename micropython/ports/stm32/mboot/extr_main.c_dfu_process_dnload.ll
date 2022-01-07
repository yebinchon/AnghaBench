; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_process_dnload.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_dfu_process_dnload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@dfu_state = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DFU_XFER_SIZE = common dso_local global i32 0, align 4
@DFU_STATUS_DNLOAD_IDLE = common dso_local global i32 0, align 4
@DFU_STATUS_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dfu_process_dnload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfu_process_dnload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 -1, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 2), align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 65
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @do_mass_erase()
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %15
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %22 = icmp eq i32 %21, 5
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 2), align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = call i64 @get_le32(i32* %25)
  %27 = call i32 @do_page_erase(i64 %26, i64* %3)
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %20
  br label %29

29:                                               ; preds = %28, %18
  br label %47

30:                                               ; preds = %10, %7
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %32 = icmp sge i32 %31, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 2), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 33
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 2), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = call i64 @get_le32(i32* %43)
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 3), align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %33, %30
  br label %47

47:                                               ; preds = %46, %29
  br label %64

48:                                               ; preds = %0
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 0), align 8
  %53 = sub nsw i32 %52, 2
  %54 = load i32, i32* @DFU_XFER_SIZE, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 3), align 8
  %58 = add nsw i64 %56, %57
  store i64 %58, i64* %4, align 8
  %59 = load i64, i64* %4, align 8
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 2), align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dfu_state, i32 0, i32 1), align 4
  %62 = call i32 @do_write(i64 %59, i32* %60, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %51, %48
  br label %64

64:                                               ; preds = %63, %47
  %65 = load i32, i32* %2, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @DFU_STATUS_DNLOAD_IDLE, align 4
  store i32 %68, i32* %1, align 4
  br label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @DFU_STATUS_ERROR, align 4
  store i32 %70, i32* %1, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i32 @do_mass_erase(...) #1

declare dso_local i32 @do_page_erase(i64, i64*) #1

declare dso_local i64 @get_le32(i32*) #1

declare dso_local i32 @do_write(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
