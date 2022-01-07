; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_free.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SPIFFS_ERR_NO_DELETED_BLOCKS = common dso_local global i64 0, align 8
@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_ERR_FULL = common dso_local global i64 0, align 8
@SPIFFS_OBJ_ID_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fs full\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spiffs_obj_lu_find_free(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %40, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = call i64 @spiffs_gc_quick(%struct.TYPE_5__* %23, i32 0)
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @SPIFFS_ERR_NO_DELETED_BLOCKS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @SPIFFS_CHECK_RES(i64 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @SPIFFS_ERR_FULL, align 8
  store i64 %38, i64* %6, align 8
  br label %78

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %17, %5
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SPIFFS_OBJ_ID_FREE, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @spiffs_obj_lu_find_id(%struct.TYPE_5__* %41, i32 %42, i32 %43, i32 %44, i32* %45, i32* %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* @SPIFFS_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %40
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %51
  br label %70

70:                                               ; preds = %69, %40
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @SPIFFS_ERR_FULL, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @SPIFFS_DBG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %76, %37
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i64 @spiffs_gc_quick(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i64) #1

declare dso_local i64 @spiffs_obj_lu_find_id(%struct.TYPE_5__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SPIFFS_DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
