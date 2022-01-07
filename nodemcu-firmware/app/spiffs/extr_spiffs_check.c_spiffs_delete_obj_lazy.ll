; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_delete_obj_lazy.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_delete_obj_lazy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPIFFS_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_PH_FLAG_IXDELE = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU = common dso_local global i32 0, align 4
@SPIFFS_OP_C_UPDT = common dso_local global i32 0, align 4
@spiffs_page_header = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @spiffs_delete_obj_lazy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spiffs_delete_obj_lazy(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @spiffs_obj_lu_find_id_and_span(i32* %9, i32 %10, i32 0, i32 0, i32* %6)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* @SPIFFS_ERR_NOT_FOUND, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %16, i64* %3, align 8
  br label %37

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @SPIFFS_CHECK_RES(i64 %18)
  store i32 255, i32* %8, align 4
  %20 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* @SPIFFS_OP_T_OBJ_LU, align 4
  %26 = load i32, i32* @SPIFFS_OP_C_UPDT, align 4
  %27 = or i32 %25, %26
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @SPIFFS_PAGE_TO_PADDR(i32* %28, i32 %29)
  %31 = load i32, i32* @spiffs_page_header, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @offsetof(i32 %31, i32 %32)
  %34 = add nsw i64 %30, %33
  %35 = call i64 @_spiffs_wr(i32* %24, i32 %27, i32 0, i64 %34, i32 4, i32* %8)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %17, %15
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i64 @spiffs_obj_lu_find_id_and_span(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i64) #1

declare dso_local i64 @_spiffs_wr(i32*, i32, i32, i64, i32, i32*) #1

declare dso_local i64 @SPIFFS_PAGE_TO_PADDR(i32*, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
