; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_compute_use_def_chains.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_zend_ssa_compute_use_def_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32*, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_33__, %struct.TYPE_30__*, %struct.TYPE_23__*, %struct.TYPE_34__* }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, i32, i64, i64*, %struct.TYPE_22__*, %struct.TYPE_22__**, %struct.TYPE_22__*, %struct.TYPE_31__, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_23__ = type { i64, i32, i64, i32, i64, i32, i64, i64, i64 }
%struct.TYPE_34__ = type { i32, i32, i32, i32, i32, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__* }

@ZEND_FUNC_INDIRECT_VAR_ACCESS = common dso_local global i32 0, align 4
@SYMTABLE_ALIAS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"http_response_header\00", align 1
@HTTP_RESPONSE_HEADER_ALIAS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_ssa_compute_use_def_chains(i32** %0, %struct.TYPE_25__* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %18 = icmp ne %struct.TYPE_34__* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load i32**, i32*** %4, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.TYPE_34__* @zend_arena_calloc(i32** %20, i32 %23, i32 48)
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 4
  store %struct.TYPE_34__* %24, %struct.TYPE_34__** %26, align 8
  br label %27

27:                                               ; preds = %19, %3
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  store %struct.TYPE_34__* %30, %struct.TYPE_34__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %59, %27
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 0
  store i32 %38, i32* %43, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 2
  store i32 -1, i32* %53, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 3
  store i32 -1, i32* %58, align 4
  br label %59

59:                                               ; preds = %37
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %31

62:                                               ; preds = %31
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %93, %62
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %66
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 0
  store i32 -1, i32* %77, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 1
  store i32 -1, i32* %82, align 4
  %83 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %86, i32 0, i32 2
  store i32 -1, i32* %87, align 8
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %91, i32 0, i32 3
  store i32 -1, i32* %92, align 4
  br label %93

93:                                               ; preds = %72
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %66

96:                                               ; preds = %66
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %291, %96
  %102 = load i32, i32* %8, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %294

104:                                              ; preds = %101
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i64 %109
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %9, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp uge i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %104
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %126, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %130, i32 0, i32 3
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %115, %104
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp uge i64 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %162

145:                                              ; preds = %137
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i32 0, i32 3
  store i32 %155, i32* %161, align 4
  br label %162

162:                                              ; preds = %145, %137, %132
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp uge i64 %165, 0
  br i1 %166, label %167, label %200

167:                                              ; preds = %162
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %170, %173
  br i1 %174, label %175, label %200

175:                                              ; preds = %167
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 4
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %175
  %184 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %184, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 4
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 3
  store i32 %193, i32* %199, align 4
  br label %200

200:                                              ; preds = %183, %175, %167, %162
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = icmp uge i64 %203, 0
  br i1 %204, label %205, label %230

205:                                              ; preds = %200
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_29__*, %struct.TYPE_29__** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @EX_VAR_TO_NUM(i32 %214)
  %216 = ptrtoint i8* %215 to i32
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 0
  store i32 %216, i32* %222, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 6
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %224, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 2
  store i32 %223, i32* %229, align 8
  br label %230

230:                                              ; preds = %205, %200
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = icmp uge i64 %233, 0
  br i1 %234, label %235, label %260

235:                                              ; preds = %230
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %236, i32 0, i32 3
  %238 = load %struct.TYPE_29__*, %struct.TYPE_29__** %237, align 8
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @EX_VAR_TO_NUM(i32 %244)
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %247, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 0
  store i32 %246, i32* %252, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %255 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %255, i32 0, i32 7
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %258, i32 0, i32 2
  store i32 %253, i32* %259, align 8
  br label %260

260:                                              ; preds = %235, %230
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = icmp uge i64 %263, 0
  br i1 %264, label %265, label %290

265:                                              ; preds = %260
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_29__*, %struct.TYPE_29__** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i8* @EX_VAR_TO_NUM(i32 %274)
  %276 = ptrtoint i8* %275 to i32
  %277 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %278, i32 0, i32 8
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i32 0, i32 0
  store i32 %276, i32* %282, align 8
  %283 = load i32, i32* %8, align 4
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %285 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %285, i32 0, i32 8
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %284, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 2
  store i32 %283, i32* %289, align 8
  br label %290

290:                                              ; preds = %265, %260
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %8, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %8, align 4
  br label %101

294:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  br label %295

295:                                              ; preds = %552, %294
  %296 = load i32, i32* %8, align 4
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp slt i32 %296, %300
  br i1 %301, label %302, label %555

302:                                              ; preds = %295
  %303 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %304, align 8
  %306 = load i32, i32* %8, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %309, align 8
  store %struct.TYPE_22__* %310, %struct.TYPE_22__** %10, align 8
  br label %311

311:                                              ; preds = %547, %302
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %313 = icmp ne %struct.TYPE_22__* %312, null
  br i1 %313, label %314, label %551

314:                                              ; preds = %311
  %315 = load i32, i32* %8, align 4
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 0
  store i32 %315, i32* %317, align 8
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %321, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %325, i32 0, i32 0
  store i32 %320, i32* %326, align 8
  %327 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %328 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 7
  store %struct.TYPE_22__* %327, %struct.TYPE_22__** %333, align 8
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 3
  %336 = load i64, i64* %335, align 8
  %337 = icmp sge i64 %336, 0
  br i1 %337, label %338, label %455

338:                                              ; preds = %314
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 4
  %341 = load i64*, i64** %340, align 8
  %342 = getelementptr inbounds i64, i64* %341, i64 0
  %343 = load i64, i64* %342, align 8
  %344 = icmp uge i64 %343, 0
  %345 = zext i1 %344 to i32
  %346 = call i32 @ZEND_ASSERT(i32 %345)
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %348 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %348, i32 0, i32 4
  %350 = load i64*, i64** %349, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 0
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %353, i32 0, i32 5
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %354, align 8
  store %struct.TYPE_22__* %355, %struct.TYPE_22__** %11, align 8
  br label %356

356:                                              ; preds = %365, %338
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %358 = icmp ne %struct.TYPE_22__* %357, null
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %362 = icmp ne %struct.TYPE_22__* %360, %361
  br label %363

363:                                              ; preds = %359, %356
  %364 = phi i1 [ false, %356 ], [ %362, %359 ]
  br i1 %364, label %365, label %374

365:                                              ; preds = %363
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 4
  %369 = load i64*, i64** %368, align 8
  %370 = getelementptr inbounds i64, i64* %369, i64 0
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %373 = call %struct.TYPE_22__* @zend_ssa_next_use_phi(%struct.TYPE_24__* %366, i64 %371, %struct.TYPE_22__* %372)
  store %struct.TYPE_22__* %373, %struct.TYPE_22__** %11, align 8
  br label %356

374:                                              ; preds = %363
  %375 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %376 = icmp ne %struct.TYPE_22__* %375, null
  br i1 %376, label %400, label %377

377:                                              ; preds = %374
  %378 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 4
  %381 = load i64*, i64** %380, align 8
  %382 = getelementptr inbounds i64, i64* %381, i64 0
  %383 = load i64, i64* %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i64 %383
  %385 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i32 0, i32 5
  %386 = load %struct.TYPE_22__*, %struct.TYPE_22__** %385, align 8
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 6
  %389 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %389, i64 0
  store %struct.TYPE_22__* %386, %struct.TYPE_22__** %390, align 8
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %392 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %393 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %394 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %393, i32 0, i32 4
  %395 = load i64*, i64** %394, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 0
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %392, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %398, i32 0, i32 5
  store %struct.TYPE_22__* %391, %struct.TYPE_22__** %399, align 8
  br label %400

400:                                              ; preds = %377, %374
  %401 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %402 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %401, i32 0, i32 9
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %454

405:                                              ; preds = %400
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 8
  %408 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %407, i32 0, i32 0
  store %struct.TYPE_21__* %408, %struct.TYPE_21__** %12, align 8
  %409 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %409, i32 0, i32 0
  %411 = load i64, i64* %410, align 8
  %412 = icmp uge i64 %411, 0
  br i1 %412, label %413, label %430

413:                                              ; preds = %405
  %414 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %415 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %416 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %414, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %418, i32 0, i32 6
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %419, align 8
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 7
  store %struct.TYPE_22__* %420, %struct.TYPE_22__** %422, align 8
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %424 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %424, i64 %427
  %429 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %428, i32 0, i32 6
  store %struct.TYPE_22__* %423, %struct.TYPE_22__** %429, align 8
  br label %453

430:                                              ; preds = %405
  %431 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %432 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = icmp uge i64 %433, 0
  br i1 %434, label %435, label %452

435:                                              ; preds = %430
  %436 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %437 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %438 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %436, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %440, i32 0, i32 6
  %442 = load %struct.TYPE_22__*, %struct.TYPE_22__** %441, align 8
  %443 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 7
  store %struct.TYPE_22__* %442, %struct.TYPE_22__** %444, align 8
  %445 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %446 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %446, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %450, i32 0, i32 6
  store %struct.TYPE_22__* %445, %struct.TYPE_22__** %451, align 8
  br label %452

452:                                              ; preds = %435, %430
  br label %453

453:                                              ; preds = %452, %413
  br label %454

454:                                              ; preds = %453, %400
  br label %547

455:                                              ; preds = %314
  store i32 0, i32* %13, align 4
  br label %456

456:                                              ; preds = %543, %455
  %457 = load i32, i32* %13, align 4
  %458 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %459, i32 0, i32 2
  %461 = load %struct.TYPE_32__*, %struct.TYPE_32__** %460, align 8
  %462 = load i32, i32* %8, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %461, i64 %463
  %465 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = icmp slt i32 %457, %466
  br i1 %467, label %468, label %546

468:                                              ; preds = %456
  %469 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %470 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %469, i32 0, i32 4
  %471 = load i64*, i64** %470, align 8
  %472 = load i32, i32* %13, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i64, i64* %471, i64 %473
  %475 = load i64, i64* %474, align 8
  %476 = icmp uge i64 %475, 0
  %477 = zext i1 %476 to i32
  %478 = call i32 @ZEND_ASSERT(i32 %477)
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %480 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 4
  %482 = load i64*, i64** %481, align 8
  %483 = load i32, i32* %13, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i64, i64* %482, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %479, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %487, i32 0, i32 5
  %489 = load %struct.TYPE_22__*, %struct.TYPE_22__** %488, align 8
  store %struct.TYPE_22__* %489, %struct.TYPE_22__** %14, align 8
  br label %490

490:                                              ; preds = %499, %468
  %491 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %492 = icmp ne %struct.TYPE_22__* %491, null
  br i1 %492, label %493, label %497

493:                                              ; preds = %490
  %494 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %495 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %496 = icmp ne %struct.TYPE_22__* %494, %495
  br label %497

497:                                              ; preds = %493, %490
  %498 = phi i1 [ false, %490 ], [ %496, %493 ]
  br i1 %498, label %499, label %510

499:                                              ; preds = %497
  %500 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %501 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %502 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %501, i32 0, i32 4
  %503 = load i64*, i64** %502, align 8
  %504 = load i32, i32* %13, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i64, i64* %503, i64 %505
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %509 = call %struct.TYPE_22__* @zend_ssa_next_use_phi(%struct.TYPE_24__* %500, i64 %507, %struct.TYPE_22__* %508)
  store %struct.TYPE_22__* %509, %struct.TYPE_22__** %14, align 8
  br label %490

510:                                              ; preds = %497
  %511 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %512 = icmp ne %struct.TYPE_22__* %511, null
  br i1 %512, label %542, label %513

513:                                              ; preds = %510
  %514 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %515 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %516 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %515, i32 0, i32 4
  %517 = load i64*, i64** %516, align 8
  %518 = load i32, i32* %13, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i64, i64* %517, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %514, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %522, i32 0, i32 5
  %524 = load %struct.TYPE_22__*, %struct.TYPE_22__** %523, align 8
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %526 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %525, i32 0, i32 6
  %527 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %526, align 8
  %528 = load i32, i32* %13, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %527, i64 %529
  store %struct.TYPE_22__* %524, %struct.TYPE_22__** %530, align 8
  %531 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %532 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %533 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %534 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %533, i32 0, i32 4
  %535 = load i64*, i64** %534, align 8
  %536 = load i32, i32* %13, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i64, i64* %535, i64 %537
  %539 = load i64, i64* %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %532, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %540, i32 0, i32 5
  store %struct.TYPE_22__* %531, %struct.TYPE_22__** %541, align 8
  br label %542

542:                                              ; preds = %513, %510
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %13, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %13, align 4
  br label %456

546:                                              ; preds = %456
  br label %547

547:                                              ; preds = %546, %454
  %548 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %549 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %548, i32 0, i32 5
  %550 = load %struct.TYPE_22__*, %struct.TYPE_22__** %549, align 8
  store %struct.TYPE_22__* %550, %struct.TYPE_22__** %10, align 8
  br label %311

551:                                              ; preds = %311
  br label %552

552:                                              ; preds = %551
  %553 = load i32, i32* %8, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %8, align 4
  br label %295

555:                                              ; preds = %295
  store i32 0, i32* %8, align 4
  br label %556

556:                                              ; preds = %596, %555
  %557 = load i32, i32* %8, align 4
  %558 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %559 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = icmp slt i32 %557, %560
  br i1 %561, label %562, label %599

562:                                              ; preds = %556
  %563 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %564 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = load i32, i32* @ZEND_FUNC_INDIRECT_VAR_ACCESS, align 4
  %568 = and i32 %566, %567
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %577

570:                                              ; preds = %562
  %571 = load i32, i32* @SYMTABLE_ALIAS, align 4
  %572 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %573 = load i32, i32* %8, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %572, i64 %574
  %576 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %575, i32 0, i32 4
  store i32 %571, i32* %576, align 8
  br label %595

577:                                              ; preds = %562
  %578 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %579 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %578, i32 0, i32 2
  %580 = load i32*, i32** %579, align 8
  %581 = load i32, i32* %8, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %580, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = call i64 @zend_string_equals_literal(i32 %584, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %594

587:                                              ; preds = %577
  %588 = load i32, i32* @HTTP_RESPONSE_HEADER_ALIAS, align 4
  %589 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %590 = load i32, i32* %8, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %589, i64 %591
  %593 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %592, i32 0, i32 4
  store i32 %588, i32* %593, align 8
  br label %594

594:                                              ; preds = %587, %577
  br label %595

595:                                              ; preds = %594, %570
  br label %596

596:                                              ; preds = %595
  %597 = load i32, i32* %8, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %8, align 4
  br label %556

599:                                              ; preds = %556
  %600 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %600, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  store i32 %602, i32* %8, align 4
  br label %603

603:                                              ; preds = %638, %599
  %604 = load i32, i32* %8, align 4
  %605 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %606 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = icmp slt i32 %604, %607
  br i1 %608, label %609, label %641

609:                                              ; preds = %603
  %610 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %611 = load i32, i32* %8, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %610, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 8
  %616 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %617 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = icmp slt i32 %615, %618
  br i1 %619, label %620, label %637

620:                                              ; preds = %609
  %621 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %622 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %623 = load i32, i32* %8, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %622, i64 %624
  %626 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 8
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %621, i64 %628
  %630 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %629, i32 0, i32 4
  %631 = load i32, i32* %630, align 8
  %632 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %633 = load i32, i32* %8, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %632, i64 %634
  %636 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %635, i32 0, i32 4
  store i32 %631, i32* %636, align 8
  br label %637

637:                                              ; preds = %620, %609
  br label %638

638:                                              ; preds = %637
  %639 = load i32, i32* %8, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %8, align 4
  br label %603

641:                                              ; preds = %603
  %642 = load i32, i32* @SUCCESS, align 4
  ret i32 %642
}

declare dso_local %struct.TYPE_34__* @zend_arena_calloc(i32**, i32, i32) #1

declare dso_local i8* @EX_VAR_TO_NUM(i32) #1

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local %struct.TYPE_22__* @zend_ssa_next_use_phi(%struct.TYPE_24__*, i64, %struct.TYPE_22__*) #1

declare dso_local i64 @zend_string_equals_literal(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
