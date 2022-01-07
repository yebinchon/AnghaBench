; ModuleID = '/home/carl/AnghaBench/micropython/ports/samd/extr_mphalport.c_mp_hal_stdout_tx_strn.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/samd/extr_mphalport.c_mp_hal_stdout_tx_strn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@USARTx = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_stdout_tx_strn(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = call i64 (...) @tud_cdc_connected()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %35, %10
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %6, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @tud_cdc_write(i8* %21, i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %32, %27
  %29 = call i32 (...) @tud_cdc_write_flush()
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 (...) @__WFI()
  br label %28

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %5, align 8
  br label %11

39:                                               ; preds = %11
  br label %40

40:                                               ; preds = %44, %39
  %41 = call i32 (...) @tud_cdc_write_flush()
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i32 (...) @__WFI()
  br label %40

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %2
  br label %48

48:                                               ; preds = %63, %47
  %49 = load i64, i64* %4, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %4, align 8
  %51 = icmp ne i64 %49, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  br label %53

53:                                               ; preds = %62, %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @USARTx, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %53

63:                                               ; preds = %53
  %64 = load i8*, i8** %3, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %3, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @USARTx, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  br label %48

73:                                               ; preds = %48
  ret void
}

declare dso_local i64 @tud_cdc_connected(...) #1

declare dso_local i64 @tud_cdc_write(i8*, i64) #1

declare dso_local i32 @tud_cdc_write_flush(...) #1

declare dso_local i32 @__WFI(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
