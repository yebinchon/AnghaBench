; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_keyboard.c_send_report.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/pjrc/extr_usb_keyboard.c_send_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@SREG = common dso_local global i64 0, align 8
@UENUM = common dso_local global i64 0, align 8
@UDFNUML = common dso_local global i64 0, align 8
@UEINTX = common dso_local global i32 0, align 4
@RWAL = common dso_local global i32 0, align 4
@UEDATX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64, i64, i64)* @send_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_report(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = call i32 (...) @usb_configured()
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %61

16:                                               ; preds = %4
  %17 = load i64, i64* @SREG, align 8
  store i64 %17, i64* %10, align 8
  %18 = call i32 (...) @cli()
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* @UENUM, align 8
  %20 = load i64, i64* @UDFNUML, align 8
  %21 = add nsw i64 %20, 50
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %16, %39
  %23 = load i32, i32* @UEINTX, align 4
  %24 = load i32, i32* @RWAL, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %43

29:                                               ; preds = %22
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* @SREG, align 8
  %31 = call i32 (...) @usb_configured()
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %61

34:                                               ; preds = %29
  %35 = load i64, i64* @UDFNUML, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %61

39:                                               ; preds = %34
  %40 = load i64, i64* @SREG, align 8
  store i64 %40, i64* %10, align 8
  %41 = call i32 (...) @cli()
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* @UENUM, align 8
  br label %22

43:                                               ; preds = %28
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %56, %43
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %12, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @UEDATX, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %12, align 8
  br label %45

59:                                               ; preds = %45
  store i32 58, i32* @UEINTX, align 4
  %60 = load i64, i64* %10, align 8
  store i64 %60, i64* @SREG, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %38, %33, %15
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @usb_configured(...) #1

declare dso_local i32 @cli(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
