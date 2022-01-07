; ModuleID = '/home/carl/AnghaBench/micropython/ports/samd/extr_mphalport.c_mp_hal_stdin_rx_chr.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/samd/extr_mphalport.c_mp_hal_stdin_rx_chr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@USARTx = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_hal_stdin_rx_chr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1 x i32], align 4
  %3 = alloca i64, align 8
  br label %4

4:                                                ; preds = %34, %0
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** @USARTx, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** @USARTx, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %1, align 4
  br label %36

19:                                               ; preds = %4
  %20 = call i64 (...) @tud_cdc_connected()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = call i64 (...) @tud_cdc_available()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %27 = call i64 @tud_cdc_read(i32* %26, i32 4)
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds [1 x i32], [1 x i32]* %2, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %1, align 4
  br label %36

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %22, %19
  %35 = call i32 (...) @__WFI()
  br label %4

36:                                               ; preds = %30, %12
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i64 @tud_cdc_connected(...) #1

declare dso_local i64 @tud_cdc_available(...) #1

declare dso_local i64 @tud_cdc_read(i32*, i32) #1

declare dso_local i32 @__WFI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
