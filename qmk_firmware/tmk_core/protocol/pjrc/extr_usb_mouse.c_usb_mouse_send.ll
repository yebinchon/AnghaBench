; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_mouse.c_usb_mouse_send.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_mouse.c_usb_mouse_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SREG = common dso_local global i64 0, align 8
@MOUSE_ENDPOINT = common dso_local global i32 0, align 4
@UENUM = common dso_local global i32 0, align 4
@UDFNUML = common dso_local global i64 0, align 8
@UEINTX = common dso_local global i32 0, align 4
@RWAL = common dso_local global i32 0, align 4
@UEDATX = common dso_local global i32 0, align 4
@usb_mouse_protocol = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_mouse_send(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = call i32 (...) @usb_configured()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %72

17:                                               ; preds = %5
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -128
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -127, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, -128
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -127, i32* %8, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, -128
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -127, i32* %9, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, -128
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 -127, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i64, i64* @SREG, align 8
  store i64 %34, i64* %12, align 8
  %35 = call i32 (...) @cli()
  %36 = load i32, i32* @MOUSE_ENDPOINT, align 4
  store i32 %36, i32* @UENUM, align 4
  %37 = load i64, i64* @UDFNUML, align 8
  %38 = add nsw i64 %37, 50
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %33, %56
  %40 = load i32, i32* @UEINTX, align 4
  %41 = load i32, i32* @RWAL, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %60

46:                                               ; preds = %39
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* @SREG, align 8
  %48 = call i32 (...) @usb_configured()
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 -1, i32* %6, align 4
  br label %72

51:                                               ; preds = %46
  %52 = load i64, i64* @UDFNUML, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %6, align 4
  br label %72

56:                                               ; preds = %51
  %57 = load i64, i64* @SREG, align 8
  store i64 %57, i64* %12, align 8
  %58 = call i32 (...) @cli()
  %59 = load i32, i32* @MOUSE_ENDPOINT, align 4
  store i32 %59, i32* @UENUM, align 4
  br label %39

60:                                               ; preds = %45
  %61 = load i64, i64* %11, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* @UEDATX, align 4
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* @UEDATX, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* @UEDATX, align 4
  %65 = load i64, i64* @usb_mouse_protocol, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* @UEDATX, align 4
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* @UEDATX, align 4
  br label %70

70:                                               ; preds = %67, %60
  store i32 58, i32* @UEINTX, align 4
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* @SREG, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %55, %50, %16
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i32 @usb_configured(...) #1

declare dso_local i32 @cli(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
