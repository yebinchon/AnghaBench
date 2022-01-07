; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_object_update_index_hdr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_nucleus.c_spiffs_object_update_index_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_15__, i32, i64 }
%struct.TYPE_15__ = type { i32 }

@SPIFFS_OK = common dso_local global i64 0, align 8
@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_IX = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_OBJ_NAME_LEN = common dso_local global i32 0, align 4
@SPIFFS_EV_IX_UPD = common dso_local global i32 0, align 4
@SPIFFS_EV_IX_UPD_HDR = common dso_local global i32 0, align 4
@SPIFFS_OBJ_META_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spiffs_object_update_index_hdr(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i64 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i64, i64* @SPIFFS_OK, align 8
  store i64 %22, i64* %19, align 8
  %23 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %24 = load i32, i32* %12, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %9
  %29 = load i32*, i32** %14, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %20, align 8
  br label %54

31:                                               ; preds = %9
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = load i32, i32* @SPIFFS_OP_T_OBJ_IX, align 4
  %34 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_14__* %39, i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @_spiffs_rd(%struct.TYPE_14__* %32, i32 %35, i32 %38, i32 %41, i32 %43, i64 %46)
  store i64 %47, i64* %19, align 8
  %48 = load i64, i64* %19, align 8
  %49 = call i32 @SPIFFS_CHECK_RES(i64 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %20, align 8
  br label %54

54:                                               ; preds = %31, %28
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %12, align 4
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @SPIFFS_VALIDATE_OBJIX(i32 %59, i32 %57, i32 0)
  %61 = load i32*, i32** %15, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32*, i32** %15, align 8
  %69 = bitcast i32* %68 to i8*
  %70 = load i32, i32* @SPIFFS_OBJ_NAME_LEN, align 4
  %71 = call i32 @strncpy(i8* %67, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %63, %54
  %73 = load i32*, i32** %16, align 8
  %74 = load i64, i64* %17, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64, i64* %17, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = icmp eq %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  br label %89

89:                                               ; preds = %85, %84
  %90 = phi i32 [ 0, %84 ], [ %88, %85 ]
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %92 = bitcast %struct.TYPE_12__* %91 to i32*
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i64 @spiffs_page_move(%struct.TYPE_14__* %81, i32 %90, i32* %92, i32 %93, i32 0, i32 %94, i32* %21)
  store i64 %95, i64* %19, align 8
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* @SPIFFS_OK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %134

99:                                               ; preds = %89
  %100 = load i32*, i32** %18, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %21, align 4
  %104 = load i32*, i32** %18, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %108 = bitcast %struct.TYPE_12__* %107 to i32*
  %109 = load i32*, i32** %14, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @SPIFFS_EV_IX_UPD, align 4
  br label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @SPIFFS_EV_IX_UPD_HDR, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %21, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @spiffs_cb_object_event(%struct.TYPE_14__* %106, i32* %108, i32 %116, i32 %117, i32 %121, i32 %122, i64 %125)
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %128 = icmp ne %struct.TYPE_13__* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %115
  %130 = load i32, i32* %21, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %115
  br label %134

134:                                              ; preds = %133, %89
  %135 = load i64, i64* %19, align 8
  ret i64 %135
}

declare dso_local i64 @_spiffs_rd(%struct.TYPE_14__*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_14__*) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i64) #1

declare dso_local i32 @SPIFFS_VALIDATE_OBJIX(i32, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @spiffs_page_move(%struct.TYPE_14__*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @spiffs_cb_object_event(%struct.TYPE_14__*, i32*, i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
