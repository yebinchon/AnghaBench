; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_object_get_data_page_index_reference.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_object_get_data_page_index_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU2 = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64, i32*, i32*)* @spiffs_object_get_data_page_index_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spiffs_object_get_data_page_index_reference(i32* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i64 @SPIFFS_OBJ_IX_ENTRY_SPAN_IX(i32* %14, i64 %15)
  store i64 %16, i64* %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %20 = or i32 %18, %19
  %21 = load i64, i64* %12, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @spiffs_obj_lu_find_id_and_span(i32* %17, i32 %20, i64 %21, i32 0, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @SPIFFS_CHECK_RES(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SPIFFS_PAGE_TO_PADDR(i32* %26, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i64, i64* %12, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %5
  %33 = load i64, i64* %8, align 8
  %34 = mul i64 %33, 4
  %35 = add i64 4, %34
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, %35
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  br label %51

40:                                               ; preds = %5
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @SPIFFS_OBJ_IX_ENTRY(i32* %41, i64 %42)
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 4, %45
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %40, %32
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @SPIFFS_OP_T_OBJ_LU2, align 4
  %54 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @_spiffs_rd(i32* %52, i32 %55, i32 0, i32 %56, i32 4, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i64 @SPIFFS_OBJ_IX_ENTRY_SPAN_IX(i32*, i64) #1

declare dso_local i32 @spiffs_obj_lu_find_id_and_span(i32*, i32, i64, i32, i32*) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i32) #1

declare dso_local i32 @SPIFFS_PAGE_TO_PADDR(i32*, i32) #1

declare dso_local i32 @SPIFFS_OBJ_IX_ENTRY(i32*, i64) #1

declare dso_local i32 @_spiffs_rd(i32*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
