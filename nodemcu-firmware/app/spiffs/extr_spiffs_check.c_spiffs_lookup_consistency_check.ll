; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_lookup_consistency_check.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_lookup_consistency_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_CHECK_LOOKUP = common dso_local global i32 0, align 4
@SPIFFS_CHECK_PROGRESS = common dso_local global i32 0, align 4
@spiffs_lookup_check_v = common dso_local global i32 0, align 4
@SPIFFS_VIS_END = common dso_local global i64 0, align 8
@SPIFFS_CHECK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spiffs_lookup_consistency_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @SPIFFS_CHECK_LOOKUP, align 4
  %10 = load i32, i32* @SPIFFS_CHECK_PROGRESS, align 4
  %11 = call i32 @CHECK_CB(i32* %8, i32 %9, i32 %10, i32 0, i32 0)
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @spiffs_lookup_check_v, align 4
  %14 = call i64 @spiffs_obj_lu_find_entry_visitor(i32* %12, i32 0, i32 0, i32 0, i32 0, i32 %13, i32 0, i32 0, i32 0, i32 0)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @SPIFFS_VIS_END, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @SPIFFS_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @SPIFFS_CHECK_LOOKUP, align 4
  %27 = load i32, i32* @SPIFFS_CHECK_ERROR, align 4
  %28 = load i64, i64* %5, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @CHECK_CB(i32* %25, i32 %26, i32 %27, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %24, %20
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @SPIFFS_CHECK_LOOKUP, align 4
  %34 = load i32, i32* @SPIFFS_CHECK_PROGRESS, align 4
  %35 = call i32 @CHECK_CB(i32* %32, i32 %33, i32 %34, i32 256, i32 0)
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

declare dso_local i32 @CHECK_CB(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @spiffs_obj_lu_find_entry_visitor(i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
