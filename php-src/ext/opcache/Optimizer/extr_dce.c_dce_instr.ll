; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dce.c_dce_instr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dce.c_dce_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_27__*, %struct.TYPE_23__*, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_22__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i64, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64, %struct.TYPE_26__*, %struct.TYPE_26__* }

@ZEND_NOP = common dso_local global i64 0, align 8
@ZEND_FREE = common dso_local global i64 0, align 8
@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@MAY_BE_RESOURCE = common dso_local global i32 0, align 4
@MAY_BE_REF = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i32 0, align 4
@IS_TMP_VAR = common dso_local global i32 0, align 4
@ZEND_CASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_26__*)* @dce_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dce_instr(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %8, align 8
  store i32 -1, i32* %9, align 4
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ZEND_NOP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %256

20:                                               ; preds = %3
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ZEND_FREE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %28, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAY_BE_STRING, align 4
  %37 = load i32, i32* @MAY_BE_ARRAY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MAY_BE_OBJECT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MAY_BE_REF, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %35, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %26
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @is_var_dead(%struct.TYPE_29__* %48, i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %256

55:                                               ; preds = %47, %26, %20
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IS_VAR, align 4
  %60 = load i32, i32* @IS_TMP_VAR, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %119

64:                                               ; preds = %55
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @is_var_dead(%struct.TYPE_29__* %65, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %119, label %71

71:                                               ; preds = %64
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %77, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %80 = call i32 @try_remove_var_def(%struct.TYPE_29__* %72, i64 %75, %struct.TYPE_26__* %78, %struct.TYPE_28__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %118, label %82

82:                                               ; preds = %71
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MAY_BE_STRING, align 4
  %93 = load i32, i32* @MAY_BE_ARRAY, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MAY_BE_OBJECT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @MAY_BE_REF, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %91, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %82
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ZEND_CASE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %103
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %9, align 4
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %109, %103, %82
  br label %118

118:                                              ; preds = %117, %71
  br label %119

119:                                              ; preds = %118, %64, %55
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IS_VAR, align 4
  %124 = load i32, i32* @IS_TMP_VAR, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %194

128:                                              ; preds = %119
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @is_var_dead(%struct.TYPE_29__* %129, i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %194, label %135

135:                                              ; preds = %128
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %144 = call i32 @try_remove_var_def(%struct.TYPE_29__* %136, i64 %139, %struct.TYPE_26__* %142, %struct.TYPE_28__* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %193, label %146

146:                                              ; preds = %135
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %148, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @MAY_BE_STRING, align 4
  %157 = load i32, i32* @MAY_BE_ARRAY, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @MAY_BE_OBJECT, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @MAY_BE_RESOURCE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @MAY_BE_REF, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %155, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %146
  %168 = load i32, i32* %9, align 4
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = sub i64 0, %180
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i64 %181
  %183 = call i32 @zend_bitset_excl(i32 %173, %struct.TYPE_28__* %182)
  store i32 0, i32* %4, align 4
  br label %256

184:                                              ; preds = %167
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %9, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %10, align 4
  br label %192

192:                                              ; preds = %184, %146
  br label %193

193:                                              ; preds = %192, %135
  br label %194

194:                                              ; preds = %193, %128, %119
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %196, align 8
  %198 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %199 = call i32 @zend_ssa_rename_defs_of_instr(%struct.TYPE_27__* %197, %struct.TYPE_26__* %198)
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %201, align 8
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %205 = call i32 @zend_ssa_remove_instr(%struct.TYPE_27__* %202, %struct.TYPE_28__* %203, %struct.TYPE_26__* %204)
  %206 = load i32, i32* %9, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %255

208:                                              ; preds = %194
  %209 = load i64, i64* @ZEND_FREE, align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 0
  store i64 %209, i64* %211, align 8
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @ZEND_CALL_VAR_NUM(i32* null, i32 %219)
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  store i64 %220, i64* %223, align 8
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %232, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %237, align 8
  %239 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %239, i32 0, i32 2
  store %struct.TYPE_26__* %238, %struct.TYPE_26__** %240, align 8
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = sub i64 0, %245
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i64 %246
  %248 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  store %struct.TYPE_26__* %247, %struct.TYPE_26__** %254, align 8
  store i32 0, i32* %4, align 4
  br label %256

255:                                              ; preds = %194
  store i32 1, i32* %4, align 4
  br label %256

256:                                              ; preds = %255, %208, %170, %54, %19
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local i32 @is_var_dead(%struct.TYPE_29__*, i64) #1

declare dso_local i32 @try_remove_var_def(%struct.TYPE_29__*, i64, %struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @zend_bitset_excl(i32, %struct.TYPE_28__*) #1

declare dso_local i32 @zend_ssa_rename_defs_of_instr(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

declare dso_local i32 @zend_ssa_remove_instr(%struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i64 @ZEND_CALL_VAR_NUM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
