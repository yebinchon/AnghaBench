; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_wizchip_init.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_wizchip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_WIZCHIP_SOCK_NUM_ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wizchip_init(i64* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %7, align 8
  %8 = call i32 (...) @wizchip_sw_reset()
  %9 = load i64*, i64** %4, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @_WIZCHIP_SOCK_NUM_, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %27, 16
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 -1, i64* %3, align 8
  br label %85

30:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @_WIZCHIP_SOCK_NUM_, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @setSn_TXBUF_SIZE(i64 %36, i64 %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %31

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %2
  %47 = load i64*, i64** %5, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %84

49:                                               ; preds = %46
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @_WIZCHIP_SOCK_NUM_, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %7, align 8
  br label %61

61:                                               ; preds = %54
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %50

64:                                               ; preds = %50
  %65 = load i64, i64* %7, align 8
  %66 = icmp ugt i64 %65, 16
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i64 -1, i64* %3, align 8
  br label %85

68:                                               ; preds = %64
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %80, %68
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @_WIZCHIP_SOCK_NUM_, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load i64, i64* %6, align 8
  %75 = load i64*, i64** %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @setSn_RXBUF_SIZE(i64 %74, i64 %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i64, i64* %6, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %6, align 8
  br label %69

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %46
  store i64 0, i64* %3, align 8
  br label %85

85:                                               ; preds = %84, %67, %29
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local i32 @wizchip_sw_reset(...) #1

declare dso_local i32 @setSn_TXBUF_SIZE(i64, i64) #1

declare dso_local i32 @setSn_RXBUF_SIZE(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
