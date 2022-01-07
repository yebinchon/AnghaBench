; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_object_index_consistency_check.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_object_index_consistency_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_CHECK_INDEX = common dso_local global i32 0, align 4
@SPIFFS_CHECK_PROGRESS = common dso_local global i32 0, align 4
@spiffs_object_index_consistency_check_v = common dso_local global i32 0, align 4
@SPIFFS_VIS_END = common dso_local global i64 0, align 8
@SPIFFS_CHECK_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spiffs_object_index_consistency_check(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_6__* %9)
  %11 = call i32 @memset(i32 %8, i32 0, i32 %10)
  store i32 0, i32* %4, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = load i32, i32* @SPIFFS_CHECK_INDEX, align 4
  %14 = load i32, i32* @SPIFFS_CHECK_PROGRESS, align 4
  %15 = call i32 @CHECK_CB(%struct.TYPE_6__* %12, i32 %13, i32 %14, i32 0, i32 0)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %17 = load i32, i32* @spiffs_object_index_consistency_check_v, align 4
  %18 = call i64 @spiffs_obj_lu_find_entry_visitor(%struct.TYPE_6__* %16, i32 0, i32 0, i32 0, i32 0, i32 %17, i32 0, i32* %4, i32 0, i32 0)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @SPIFFS_VIS_END, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %22, %1
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @SPIFFS_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = load i32, i32* @SPIFFS_CHECK_INDEX, align 4
  %31 = load i32, i32* @SPIFFS_CHECK_ERROR, align 4
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @CHECK_CB(%struct.TYPE_6__* %29, i32 %30, i32 %31, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %28, %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = load i32, i32* @SPIFFS_CHECK_INDEX, align 4
  %38 = load i32, i32* @SPIFFS_CHECK_PROGRESS, align 4
  %39 = call i32 @CHECK_CB(%struct.TYPE_6__* %36, i32 %37, i32 %38, i32 256, i32 0)
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_6__*) #1

declare dso_local i32 @CHECK_CB(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i64 @spiffs_obj_lu_find_entry_visitor(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
