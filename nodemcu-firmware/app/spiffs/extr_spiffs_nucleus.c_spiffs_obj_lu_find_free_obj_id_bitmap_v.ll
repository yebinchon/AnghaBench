; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_free_obj_id_bitmap_v.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_free_obj_id_bitmap_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }

@SPIFFS_OBJ_ID_FREE = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_DELETED = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU2 = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_DELET = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_FINAL = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_IXDELE = common dso_local global i32 0, align 4
@SPIFFS_ERR_CONFLICTING_NAME = common dso_local global i32 0, align 4
@SPIFFS_VIS_COUNTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32, i8*, i8*)* @spiffs_obj_lu_find_free_obj_id_bitmap_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spiffs_obj_lu_find_free_obj_id_bitmap_v(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @SPIFFS_OBJ_ID_FREE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %121

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @SPIFFS_OBJ_ID_DELETED, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %121

28:                                               ; preds = %24
  %29 = load i8*, i8** %13, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %14, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %86

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %86

41:                                               ; preds = %36
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(%struct.TYPE_11__* %42, i32 %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = load i32, i32* @SPIFFS_OP_T_OBJ_LU2, align 4
  %48 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = load i32, i32* %16, align 4
  %52 = call i32 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_11__* %50, i32 %51)
  %53 = bitcast %struct.TYPE_10__* %18 to i32*
  %54 = call i32 @_spiffs_rd(%struct.TYPE_11__* %46, i32 %49, i32 0, i32 %52, i32 24, i32* %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @SPIFFS_CHECK_RES(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %41
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %66 = load i32, i32* @SPIFFS_PH_FLAG_FINAL, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %64, %69
  %71 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %72 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %73 = or i32 %71, %72
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %61
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i64 @strcmp(i8* %76, i8* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @SPIFFS_ERR_CONFLICTING_NAME, align 4
  store i32 %83, i32* %7, align 4
  br label %123

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %61, %41
  br label %86

86:                                               ; preds = %85, %36, %28
  %87 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %14, align 4
  %93 = sub nsw i32 %91, %92
  %94 = and i32 %93, 7
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %19, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %96, %97
  %99 = ashr i32 %98, 3
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %86
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = call i64 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_11__* %105)
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %102
  %109 = load i64, i64* %19, align 8
  %110 = trunc i64 %109 to i32
  %111 = shl i32 1, %110
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %111
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %108, %102, %86
  br label %121

121:                                              ; preds = %120, %24, %6
  %122 = load i32, i32* @SPIFFS_VIS_COUNTINUE, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %121, %82
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @_spiffs_rd(%struct.TYPE_11__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
