; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/table/extr_toast_helper.c_toast_tuple_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/table/extr_toast_helper.c_toast_tuple_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, i32*, i64*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32, %struct.varlena* }
%struct.varlena = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i8 }

@TOASTCOL_NEEDS_DELETE_OLD = common dso_local global i32 0, align 4
@TOAST_NEEDS_DELETE_OLD = common dso_local global i32 0, align 4
@TOASTCOL_IGNORE = common dso_local global i32 0, align 4
@TOAST_HAS_NULLS = common dso_local global i32 0, align 4
@TOASTCOL_NEEDS_FREE = common dso_local global i32 0, align 4
@TOAST_NEEDS_CHANGE = common dso_local global i32 0, align 4
@TOAST_NEEDS_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @toast_tuple_init(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.varlena*, align 8
  %8 = alloca %struct.varlena*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 6
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %261, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %264

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %24, i32 %25)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %6, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store %struct.varlena* null, %struct.varlena** %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %132

45:                                               ; preds = %23
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @DatumGetPointer(i32 %52)
  %54 = inttoptr i64 %53 to %struct.varlena*
  store %struct.varlena* %54, %struct.varlena** %7, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @DatumGetPointer(i32 %61)
  %63 = inttoptr i64 %62 to %struct.varlena*
  store %struct.varlena* %63, %struct.varlena** %8, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %131

68:                                               ; preds = %45
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %131, label %77

77:                                               ; preds = %68
  %78 = load %struct.varlena*, %struct.varlena** %7, align 8
  %79 = call i64 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %131

81:                                               ; preds = %77
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %103, label %90

90:                                               ; preds = %81
  %91 = load %struct.varlena*, %struct.varlena** %8, align 8
  %92 = call i64 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load %struct.varlena*, %struct.varlena** %7, align 8
  %96 = bitcast %struct.varlena* %95 to i8*
  %97 = load %struct.varlena*, %struct.varlena** %8, align 8
  %98 = bitcast %struct.varlena* %97 to i8*
  %99 = load %struct.varlena*, %struct.varlena** %7, align 8
  %100 = call i32 @VARSIZE_EXTERNAL(%struct.varlena* %99)
  %101 = call i64 @memcmp(i8* %96, i8* %98, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %94, %90, %81
  %104 = load i32, i32* @TOASTCOL_NEEDS_DELETE_OLD, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %104
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @TOAST_NEEDS_DELETE_OLD, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %130

119:                                              ; preds = %94
  %120 = load i32, i32* @TOASTCOL_IGNORE, align 4
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %120
  store i32 %129, i32* %127, align 8
  br label %261

130:                                              ; preds = %103
  br label %131

131:                                              ; preds = %130, %77, %68, %45
  br label %142

132:                                              ; preds = %23
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @DatumGetPointer(i32 %139)
  %141 = inttoptr i64 %140 to %struct.varlena*
  store %struct.varlena* %141, %struct.varlena** %8, align 8
  br label %142

142:                                              ; preds = %132, %131
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %167

151:                                              ; preds = %142
  %152 = load i32, i32* @TOASTCOL_IGNORE, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %152
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* @TOAST_HAS_NULLS, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %261

167:                                              ; preds = %142
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %249

172:                                              ; preds = %167
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i8, i8* %174, align 4
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 112
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load i32, i32* @TOASTCOL_IGNORE, align 4
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %179
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %178, %172
  %190 = load %struct.varlena*, %struct.varlena** %8, align 8
  %191 = call i64 @VARATT_IS_EXTERNAL(%struct.varlena* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %239

193:                                              ; preds = %189
  %194 = load %struct.varlena*, %struct.varlena** %8, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  store %struct.varlena* %194, %struct.varlena** %201, align 8
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i8, i8* %203, align 4
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 112
  br i1 %206, label %207, label %210

207:                                              ; preds = %193
  %208 = load %struct.varlena*, %struct.varlena** %8, align 8
  %209 = call %struct.varlena* @detoast_attr(%struct.varlena* %208)
  store %struct.varlena* %209, %struct.varlena** %8, align 8
  br label %213

210:                                              ; preds = %193
  %211 = load %struct.varlena*, %struct.varlena** %8, align 8
  %212 = call %struct.varlena* @detoast_external_attr(%struct.varlena* %211)
  store %struct.varlena* %212, %struct.varlena** %8, align 8
  br label %213

213:                                              ; preds = %210, %207
  %214 = load %struct.varlena*, %struct.varlena** %8, align 8
  %215 = call i32 @PointerGetDatum(%struct.varlena* %214)
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %215, i32* %221, align 4
  %222 = load i32, i32* @TOASTCOL_NEEDS_FREE, align 4
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %222
  store i32 %231, i32* %229, align 8
  %232 = load i32, i32* @TOAST_NEEDS_CHANGE, align 4
  %233 = load i32, i32* @TOAST_NEEDS_FREE, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %213, %189
  %240 = load %struct.varlena*, %struct.varlena** %8, align 8
  %241 = call i32 @VARSIZE_ANY(%struct.varlena* %240)
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 1
  store i32 %241, i32* %248, align 4
  br label %260

249:                                              ; preds = %167
  %250 = load i32, i32* @TOASTCOL_IGNORE, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %250
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %249, %239
  br label %261

261:                                              ; preds = %260, %151, %119
  %262 = load i32, i32* %5, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %5, align 4
  br label %19

264:                                              ; preds = %19
  ret void
}

declare dso_local %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL_ONDISK(%struct.varlena*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @VARSIZE_EXTERNAL(%struct.varlena*) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(%struct.varlena*) #1

declare dso_local %struct.varlena* @detoast_attr(%struct.varlena*) #1

declare dso_local %struct.varlena* @detoast_external_attr(%struct.varlena*) #1

declare dso_local i32 @PointerGetDatum(%struct.varlena*) #1

declare dso_local i32 @VARSIZE_ANY(%struct.varlena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
