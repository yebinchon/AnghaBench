; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_debug.c_sendchar.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_debug.c_sendchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sendchar.previous_timeout = internal global i32 0, align 4
@SREG = common dso_local global i32 0, align 4
@DEBUG_TX_ENDPOINT = common dso_local global i32 0, align 4
@UENUM = common dso_local global i32 0, align 4
@UEINTX = common dso_local global i32 0, align 4
@RWAL = common dso_local global i32 0, align 4
@UDFNUML = common dso_local global i32 0, align 4
@UEDATX = common dso_local global i32 0, align 4
@debug_flush_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sendchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 (...) @usb_configured()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %59

9:                                                ; preds = %1
  %10 = load i32, i32* @SREG, align 4
  store i32 %10, i32* %5, align 4
  %11 = call i32 (...) @cli()
  %12 = load i32, i32* @DEBUG_TX_ENDPOINT, align 4
  store i32 %12, i32* @UENUM, align 4
  %13 = load i32, i32* @sendchar.previous_timeout, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load i32, i32* @UEINTX, align 4
  %17 = load i32, i32* @RWAL, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* @SREG, align 4
  store i32 -1, i32* %2, align 4
  br label %59

23:                                               ; preds = %15
  store i32 0, i32* @sendchar.previous_timeout, align 4
  br label %24

24:                                               ; preds = %23, %9
  %25 = load i32, i32* @UDFNUML, align 4
  %26 = add nsw i32 %25, 4
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %44
  %28 = load i32, i32* @UEINTX, align 4
  %29 = load i32, i32* @RWAL, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %48

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* @SREG, align 4
  %36 = load i32, i32* @UDFNUML, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* @sendchar.previous_timeout, align 4
  store i32 -1, i32* %2, align 4
  br label %59

40:                                               ; preds = %34
  %41 = call i32 (...) @usb_configured()
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %59

44:                                               ; preds = %40
  %45 = load i32, i32* @SREG, align 4
  store i32 %45, i32* %5, align 4
  %46 = call i32 (...) @cli()
  %47 = load i32, i32* @DEBUG_TX_ENDPOINT, align 4
  store i32 %47, i32* @UENUM, align 4
  br label %27

48:                                               ; preds = %33
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* @UEDATX, align 4
  %50 = load i32, i32* @UEINTX, align 4
  %51 = load i32, i32* @RWAL, align 4
  %52 = shl i32 1, %51
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  store i32 58, i32* @UEINTX, align 4
  store i32 0, i32* @debug_flush_timer, align 4
  br label %57

56:                                               ; preds = %48
  store i32 2, i32* @debug_flush_timer, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* @SREG, align 4
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %43, %39, %21, %8
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @usb_configured(...) #1

declare dso_local i32 @cli(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
