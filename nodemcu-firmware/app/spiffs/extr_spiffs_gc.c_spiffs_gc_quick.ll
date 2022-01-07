; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_gc.c_spiffs_gc_quick.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/spiffs/extr_spiffs_gc.c_spiffs_gc_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i64 }

@SPIFFS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gc_quick: running\0A\00", align 1
@SPIFFS_OP_T_OBJ_LU = common dso_local global i32 0, align 4
@SPIFFS_OP_C_READ = common dso_local global i32 0, align 4
@SPIFFS_OBJ_ID_DELETED = common dso_local global i64 0, align 8
@SPIFFS_OBJ_ID_FREE = common dso_local global i64 0, align 8
@SPIFFS_ERR_NO_DELETED_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spiffs_gc_quick(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i32, i32* @SPIFFS_OK, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i64*
  store i64* %25, i64** %11, align 8
  %26 = call i32 @SPIFFS_GC_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_10__* %27)
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %170, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SPIFFS_OK, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %37, -1
  store i64 %38, i64* %7, align 8
  %39 = icmp ne i64 %37, 0
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %177

42:                                               ; preds = %40
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %132, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SPIFFS_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = call i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_10__* %49)
  %51 = trunc i64 %50 to i32
  %52 = icmp slt i32 %48, %51
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i1 [ false, %43 ], [ %52, %47 ]
  br i1 %54, label %55, label %135

55:                                               ; preds = %53
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %16, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = load i32, i32* @SPIFFS_OP_T_OBJ_LU, align 4
  %61 = load i32, i32* @SPIFFS_OP_C_READ, align 4
  %62 = or i32 %60, %61
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_10__* %64, i32 %65)
  %67 = add nsw i64 %63, %66
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_10__* %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @_spiffs_rd(%struct.TYPE_10__* %59, i32 %62, i32 0, i64 %67, i32 %69, i64 %72)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %129, %55
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @SPIFFS_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %16, align 4
  %81 = sub nsw i32 %79, %80
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %87 = call i64 @SPIFFS_PAGES_PER_BLOCK(%struct.TYPE_10__* %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = call i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_10__* %88)
  %90 = sub nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  %92 = icmp slt i32 %85, %91
  br label %93

93:                                               ; preds = %84, %78, %74
  %94 = phi i1 [ false, %78 ], [ false, %74 ], [ %92, %84 ]
  br i1 %94, label %95, label %132

95:                                               ; preds = %93
  %96 = load i64*, i64** %11, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %17, align 8
  %103 = load i64, i64* %17, align 8
  %104 = load i64, i64* @SPIFFS_OBJ_ID_DELETED, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %95
  %107 = load i64, i64* %13, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %13, align 8
  br label %129

109:                                              ; preds = %95
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* @SPIFFS_OBJ_ID_FREE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i64, i64* %14, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %5, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %121 = call i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_10__* %120)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %15, align 4
  store i32 1, i32* %6, align 4
  br label %132

123:                                              ; preds = %113
  br label %128

124:                                              ; preds = %109
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = call i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_10__* %125)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %15, align 4
  store i32 1, i32* %6, align 4
  br label %132

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %106
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %74

132:                                              ; preds = %124, %119, %93
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %15, align 4
  br label %43

135:                                              ; preds = %53
  %136 = load i32, i32* %6, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @SPIFFS_OK, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @SPIFFS_OK, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %170

144:                                              ; preds = %140
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %14, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = call i64 @SPIFFS_PAGES_PER_BLOCK(%struct.TYPE_10__* %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %151 = call i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_10__* %150)
  %152 = sub nsw i64 %149, %151
  %153 = icmp eq i64 %147, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %144
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %5, align 8
  %157 = icmp sle i64 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i64, i64* %13, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = sub nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %167 = load i64, i64* %8, align 8
  %168 = call i32 @spiffs_gc_erase_block(%struct.TYPE_10__* %166, i64 %167)
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %3, align 4
  br label %185

170:                                              ; preds = %154, %144, %140
  store i32 0, i32* %10, align 4
  %171 = load i64, i64* %8, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %8, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %174 = call i64 @SPIFFS_CFG_LOG_BLOCK_SZ(%struct.TYPE_10__* %173)
  %175 = load i64, i64* %9, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %9, align 8
  br label %32

177:                                              ; preds = %40
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @SPIFFS_OK, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @SPIFFS_ERR_NO_DELETED_BLOCKS, align 4
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %181, %177
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %183, %158
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @SPIFFS_GC_DBG(i8*) #1

declare dso_local i32 @SPIFFS_CFG_LOG_PAGE_SZ(%struct.TYPE_10__*) #1

declare dso_local i64 @SPIFFS_OBJ_LOOKUP_PAGES(%struct.TYPE_10__*) #1

declare dso_local i32 @_spiffs_rd(%struct.TYPE_10__*, i32, i32, i64, i32, i64) #1

declare dso_local i64 @SPIFFS_PAGE_TO_PADDR(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @SPIFFS_PAGES_PER_BLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @spiffs_gc_erase_block(%struct.TYPE_10__*, i64) #1

declare dso_local i64 @SPIFFS_CFG_LOG_BLOCK_SZ(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
