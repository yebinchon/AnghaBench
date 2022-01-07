; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_page_consistency_check.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_page_consistency_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPIFFS_CHECK_PAGE = common dso_local global i32 0, align 4
@SPIFFS_CHECK_PROGRESS = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_CHECK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spiffs_page_consistency_check(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @SPIFFS_CHECK_PAGE, align 4
  %6 = load i32, i32* @SPIFFS_CHECK_PROGRESS, align 4
  %7 = call i32 @CHECK_CB(i32* %4, i32 %5, i32 %6, i32 0, i32 0)
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @spiffs_page_consistency_check_i(i32* %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @SPIFFS_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* @SPIFFS_CHECK_PAGE, align 4
  %16 = load i32, i32* @SPIFFS_CHECK_ERROR, align 4
  %17 = load i64, i64* %3, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @CHECK_CB(i32* %14, i32 %15, i32 %16, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @SPIFFS_CHECK_PAGE, align 4
  %23 = load i32, i32* @SPIFFS_CHECK_PROGRESS, align 4
  %24 = call i32 @CHECK_CB(i32* %21, i32 %22, i32 %23, i32 256, i32 0)
  %25 = load i64, i64* %3, align 8
  ret i64 %25
}

declare dso_local i32 @CHECK_CB(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @spiffs_page_consistency_check_i(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
