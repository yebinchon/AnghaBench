; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_page_delete.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_page_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@SPIFFS_OBJ_ID_DELETED = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU = common dso_local global i32 0, align 4
@SPIFFS_OP_C_DELE = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_DELET = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_USED = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_DA = common dso_local global i32 0, align 4
@spiffs_page_header = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spiffs_page_delete(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @SPIFFS_OBJ_ID_DELETED, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = load i32, i32* @SPIFFS_OP_T_OBJ_LU, align 4
  %11 = load i32, i32* @SPIFFS_OP_C_DELE, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SPIFFS_BLOCK_FOR_PAGE(%struct.TYPE_9__* %14, i32 %15)
  %17 = call i64 @SPIFFS_BLOCK_TO_PADDR(%struct.TYPE_9__* %13, i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE(%struct.TYPE_9__* %18, i32 %19)
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = add i64 %17, %22
  %24 = call i32 @_spiffs_wr(%struct.TYPE_9__* %9, i32 %12, i32 0, i64 %23, i32 4, i32* %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @SPIFFS_CHECK_RES(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %32, align 4
  store i32 255, i32* %7, align 4
  %35 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %36 = load i32, i32* @SPIFFS_PH_FLAG_USED, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = load i32, i32* @SPIFFS_OP_T_OBJ_DA, align 4
  %43 = load i32, i32* @SPIFFS_OP_C_DELE, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_9__* %45, i32 %46)
  %48 = load i32, i32* @spiffs_page_header, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @offsetof(i32 %48, i32 %49)
  %51 = add nsw i64 %47, %50
  %52 = call i32 @_spiffs_wr(%struct.TYPE_9__* %41, i32 %44, i32 0, i64 %51, i32 4, i32* %7)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @_spiffs_wr(%struct.TYPE_9__*, i32, i32, i64, i32, i32*) #1

declare dso_local i64 @SPIFFS_BLOCK_TO_PADDR(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SPIFFS_BLOCK_FOR_PAGE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i32) #1

declare dso_local i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
