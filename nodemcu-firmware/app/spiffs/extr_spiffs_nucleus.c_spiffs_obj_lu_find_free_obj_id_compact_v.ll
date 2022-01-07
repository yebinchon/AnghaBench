; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_free_obj_id_compact_v.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_obj_lu_find_free_obj_id_compact_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@SPIFFS_OBJ_ID_FREE = common dso_local global i64 0, align 8
@SPIFFS_OBJ_ID_DELETED = common dso_local global i64 0, align 8
@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i64 0, align 8
@SPIFFS_OP_T_OBJ_LU2 = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_PH_FLAG_INDEX = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_FINAL = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_DELET = common dso_local global i32 0, align 4
@SPIFFS_ERR_CONFLICTING_NAME = common dso_local global i64 0, align 8
@SPIFFS_VIS_COUNTINUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i64, i32, i32, i8*, i8*)* @spiffs_obj_lu_find_free_obj_id_compact_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spiffs_obj_lu_find_free_obj_id_compact_v(%struct.TYPE_11__* %0, i64 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @SPIFFS_OBJ_ID_FREE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %121

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @SPIFFS_OBJ_ID_DELETED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %121

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @SPIFFS_OBJ_ID_IX_FLAG, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %121

32:                                               ; preds = %27
  %33 = load i8*, i8** %12, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %15, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = load i32, i32* @SPIFFS_OP_T_OBJ_LU2, align 4
  %37 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PADDR(%struct.TYPE_11__* %39, i32 %40, i32 %41)
  %43 = bitcast %struct.TYPE_9__* %16 to i32*
  %44 = call i64 @_spiffs_rd(%struct.TYPE_11__* %35, i32 %38, i32 0, i32 %42, i32 24, i32* %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @SPIFFS_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %120

48:                                               ; preds = %32
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %120

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SPIFFS_PH_FLAG_INDEX, align 4
  %58 = load i32, i32* @SPIFFS_PH_FLAG_FINAL, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %56, %61
  %63 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %120

65:                                               ; preds = %53
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i64 @strcmp(i8* %74, i8* %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i64, i64* @SPIFFS_ERR_CONFLICTING_NAME, align 8
  store i64 %81, i64* %7, align 8
  br label %123

82:                                               ; preds = %70, %65
  %83 = load i64, i64* @SPIFFS_OBJ_ID_IX_FLAG, align 8
  %84 = xor i64 %83, -1
  %85 = load i64, i64* %9, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %87, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %82
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp sle i64 %93, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %17, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %103, %106
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = sdiv i64 %107, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %18, align 4
  %113 = load i32*, i32** %17, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %98, %92, %82
  br label %120

120:                                              ; preds = %119, %53, %48, %32
  br label %121

121:                                              ; preds = %120, %27, %23, %6
  %122 = load i64, i64* @SPIFFS_VIS_COUNTINUE, align 8
  store i64 %122, i64* %7, align 8
  br label %123

123:                                              ; preds = %121, %80
  %124 = load i64, i64* %7, align 8
  ret i64 %124
}

declare dso_local i64 @_spiffs_rd(%struct.TYPE_11__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PADDR(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
