; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_rewrite_index.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_check.c_spiffs_rewrite_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }

@SPIFFS_OBJ_ID_IX_FLAG = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU2 = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_ERR_CHECK_OBJ_ID_MISM = common dso_local global i32 0, align 4
@SPIFFS_ERR_CHECK_SPIX_MISM = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_USED = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_IXDELE = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_INDEX = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_FINAL = common dso_local global i32 0, align 4
@SPIFFS_PH_FLAG_DELET = common dso_local global i32 0, align 4
@SPIFFS_ERR_CHECK_FLAGS_BAD = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_DA = common dso_local global i32 0, align 4
@SPIFFS_OP_C_UPDT = common dso_local global i32 0, align 4
@SPIFFS_OP_T_OBJ_LU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i64, i32, i32)* @spiffs_rewrite_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spiffs_rewrite_index(%struct.TYPE_17__* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @SPIFFS_OBJ_ID_IX_FLAG, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @spiffs_obj_lu_find_free(%struct.TYPE_17__* %21, i32 %24, i32 %27, i32* %13, i32* %14)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @SPIFFS_CHECK_RES(i32 %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(%struct.TYPE_17__* %31, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @SPIFFS_OBJ_IX_ENTRY_SPAN_IX(%struct.TYPE_17__* %35, i64 %36)
  store i64 %37, i64* %16, align 8
  %38 = load i64, i64* %16, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  br label %48

43:                                               ; preds = %5
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i64 @SPIFFS_OBJ_IX_ENTRY(%struct.TYPE_17__* %44, i64 %45)
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %43, %40
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %50 = load i32, i32* @SPIFFS_OP_T_OBJ_LU2, align 4
  %51 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_17__* %53, i32 %54)
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_17__* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @_spiffs_rd(%struct.TYPE_17__* %49, i32 %52, i32 0, i64 %55, i32 %57, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @SPIFFS_CHECK_RES(i32 %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = bitcast i32* %66 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %17, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %48
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @spiffs_page_delete(%struct.TYPE_17__* %74, i32 %75)
  %77 = load i32, i32* @SPIFFS_ERR_CHECK_OBJ_ID_MISM, align 4
  store i32 %77, i32* %6, align 4
  br label %171

78:                                               ; preds = %48
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @spiffs_page_delete(%struct.TYPE_17__* %85, i32 %86)
  %88 = load i32, i32* @SPIFFS_ERR_CHECK_SPIX_MISM, align 4
  store i32 %88, i32* %6, align 4
  br label %171

89:                                               ; preds = %78
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SPIFFS_PH_FLAG_USED, align 4
  %94 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SPIFFS_PH_FLAG_INDEX, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SPIFFS_PH_FLAG_FINAL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %92, %101
  %103 = load i32, i32* @SPIFFS_PH_FLAG_IXDELE, align 4
  %104 = load i32, i32* @SPIFFS_PH_FLAG_DELET, align 4
  %105 = or i32 %103, %104
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %89
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @spiffs_page_delete(%struct.TYPE_17__* %108, i32 %109)
  %111 = load i32, i32* @SPIFFS_ERR_CHECK_FLAGS_BAD, align 4
  store i32 %111, i32* %6, align 4
  br label %171

112:                                              ; preds = %89
  %113 = load i64, i64* %16, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %116, i32* %122, align 4
  br label %133

123:                                              ; preds = %112
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = load i64, i64* %9, align 8
  %131 = call i64 @SPIFFS_OBJ_IX_ENTRY(%struct.TYPE_17__* %129, i64 %130)
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %124, i32* %132, align 4
  br label %133

133:                                              ; preds = %123, %115
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %135 = load i32, i32* @SPIFFS_OP_T_OBJ_DA, align 4
  %136 = load i32, i32* @SPIFFS_OP_C_UPDT, align 4
  %137 = or i32 %135, %136
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = load i32, i32* %15, align 4
  %140 = call i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_17__* %138, i32 %139)
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %142 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_17__* %141)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @_spiffs_wr(%struct.TYPE_17__* %134, i32 %137, i32 0, i64 %140, i32 %142, i32* %145)
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @SPIFFS_CHECK_RES(i32 %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = load i32, i32* @SPIFFS_OP_T_OBJ_LU, align 4
  %151 = load i32, i32* @SPIFFS_OP_C_UPDT, align 4
  %152 = or i32 %150, %151
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @SPIFFS_BLOCK_FOR_PAGE(%struct.TYPE_17__* %154, i32 %155)
  %157 = call i64 @SPIFFS_BLOCK_TO_PADDR(%struct.TYPE_17__* %153, i32 %156)
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %159 = load i32, i32* %15, align 4
  %160 = call i32 @SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE(%struct.TYPE_17__* %158, i32 %159)
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 4
  %163 = add i64 %157, %162
  %164 = call i32 @_spiffs_wr(%struct.TYPE_17__* %149, i32 %152, i32 0, i64 %163, i32 4, i32* %8)
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @SPIFFS_CHECK_RES(i32 %165)
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @spiffs_page_delete(%struct.TYPE_17__* %167, i32 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %133, %107, %84, %73
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @spiffs_obj_lu_find_free(%struct.TYPE_17__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @SPIFFS_CHECK_RES(i32) #1

declare dso_local i32 @SPIFFS_OBJ_LOOKUP_ENTRY_TO_PIX(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i64 @SPIFFS_OBJ_IX_ENTRY_SPAN_IX(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @SPIFFS_OBJ_IX_ENTRY(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @_spiffs_rd(%struct.TYPE_17__*, i32, i32, i64, i32, i32*) #1

declare dso_local i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_17__*) #1

declare dso_local i32 @spiffs_page_delete(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @_spiffs_wr(%struct.TYPE_17__*, i32, i32, i64, i32, i32*) #1

declare dso_local i64 @SPIFFS_BLOCK_TO_PADDR(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @SPIFFS_BLOCK_FOR_PAGE(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @SPIFFS_OBJ_LOOKUP_ENTRY_FOR_PAGE(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
