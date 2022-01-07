; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATPrepCmd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATPrepCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32, i32, i8* }

@AT_PASS_UNSET = common dso_local global i32 0, align 4
@ATT_TABLE = common dso_local global i32 0, align 4
@ATT_COMPOSITE_TYPE = common dso_local global i32 0, align 4
@ATT_FOREIGN_TABLE = common dso_local global i32 0, align 4
@AT_PASS_ADD_COL = common dso_local global i32 0, align 4
@ATT_VIEW = common dso_local global i32 0, align 4
@AT_PASS_ADD_CONSTR = common dso_local global i32 0, align 4
@AT_PASS_DROP = common dso_local global i32 0, align 4
@AT_PASS_COL_ATTRS = common dso_local global i32 0, align 4
@AT_PASS_MISC = common dso_local global i32 0, align 4
@ATT_MATVIEW = common dso_local global i32 0, align 4
@ATT_INDEX = common dso_local global i32 0, align 4
@AT_PASS_ADD_INDEX = common dso_local global i32 0, align 4
@AT_AddConstraintRecurse = common dso_local global i32 0, align 4
@AT_DropConstraintRecurse = common dso_local global i32 0, align 4
@AT_PASS_ALTER_TYPE = common dso_local global i32 0, align 4
@AT_REWRITE_ALTER_PERSISTENCE = common dso_local global i32 0, align 4
@RELPERSISTENCE_PERMANENT = common dso_local global i32 0, align 4
@RELPERSISTENCE_UNLOGGED = common dso_local global i32 0, align 4
@ATT_PARTITIONED_INDEX = common dso_local global i32 0, align 4
@AT_ValidateConstraintRecurse = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unrecognized alter table type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, %struct.TYPE_16__*, i32, i32, i32)* @ATPrepCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATPrepCmd(i32** %0, i32 %1, %struct.TYPE_16__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* @AT_PASS_UNSET, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32**, i32*** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_15__* @ATGetQueueEntry(i32** %16, i32 %17)
  store %struct.TYPE_15__* %18, %struct.TYPE_15__** %13, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = call %struct.TYPE_16__* @copyObject(%struct.TYPE_16__* %19)
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %9, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %434 [
    i32 183, label %24
    i32 182, label %40
    i32 168, label %52
    i32 180, label %76
    i32 137, label %85
    i32 158, label %94
    i32 156, label %103
    i32 135, label %120
    i32 170, label %134
    i32 132, label %147
    i32 134, label %167
    i32 139, label %167
    i32 131, label %178
    i32 160, label %193
    i32 179, label %209
    i32 181, label %214
    i32 178, label %228
    i32 159, label %233
    i32 174, label %250
    i32 175, label %267
    i32 171, label %272
    i32 169, label %274
    i32 161, label %274
    i32 136, label %281
    i32 129, label %304
    i32 154, label %327
    i32 130, label %334
    i32 133, label %352
    i32 138, label %352
    i32 141, label %352
    i32 177, label %363
    i32 157, label %372
    i32 173, label %379
    i32 128, label %384
    i32 140, label %398
    i32 147, label %405
    i32 152, label %405
    i32 150, label %405
    i32 146, label %405
    i32 145, label %405
    i32 164, label %405
    i32 163, label %405
    i32 162, label %405
    i32 148, label %412
    i32 153, label %412
    i32 151, label %412
    i32 165, label %412
    i32 176, label %412
    i32 155, label %412
    i32 149, label %412
    i32 166, label %412
    i32 144, label %412
    i32 142, label %412
    i32 143, label %417
    i32 172, label %422
    i32 167, label %429
  ]

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ATT_TABLE, align 4
  %27 = load i32, i32* @ATT_COMPOSITE_TYPE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ATSimplePermissions(i32 %25, i32 %30)
  %32 = load i32**, i32*** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ATPrepAddColumn(i32** %32, i32 %33, i32 %34, i32 %35, i32 0, %struct.TYPE_16__* %36, i32 %37)
  %39 = load i32, i32* @AT_PASS_ADD_COL, align 4
  store i32 %39, i32* %14, align 4
  br label %441

40:                                               ; preds = %6
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @ATT_VIEW, align 4
  %43 = call i32 @ATSimplePermissions(i32 %41, i32 %42)
  %44 = load i32**, i32*** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ATPrepAddColumn(i32** %44, i32 %45, i32 %46, i32 %47, i32 1, %struct.TYPE_16__* %48, i32 %49)
  %51 = load i32, i32* @AT_PASS_ADD_COL, align 4
  store i32 %51, i32* %14, align 4
  br label %441

52:                                               ; preds = %6
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @ATT_TABLE, align 4
  %55 = load i32, i32* @ATT_VIEW, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @ATSimplePermissions(i32 %53, i32 %58)
  %60 = load i32**, i32*** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @ATSimpleRecursion(i32** %60, i32 %61, %struct.TYPE_16__* %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = load i32, i32* @AT_PASS_ADD_CONSTR, align 4
  br label %74

72:                                               ; preds = %52
  %73 = load i32, i32* @AT_PASS_DROP, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %14, align 4
  br label %441

76:                                               ; preds = %6
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @ATT_TABLE, align 4
  %79 = load i32, i32* @ATT_VIEW, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @ATSimplePermissions(i32 %77, i32 %82)
  %84 = load i32, i32* @AT_PASS_ADD_CONSTR, align 4
  store i32 %84, i32* %14, align 4
  br label %441

85:                                               ; preds = %6
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @ATT_TABLE, align 4
  %88 = load i32, i32* @ATT_VIEW, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @ATSimplePermissions(i32 %86, i32 %91)
  %93 = load i32, i32* @AT_PASS_COL_ATTRS, align 4
  store i32 %93, i32* %14, align 4
  br label %441

94:                                               ; preds = %6
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @ATT_TABLE, align 4
  %97 = load i32, i32* @ATT_VIEW, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @ATSimplePermissions(i32 %95, i32 %100)
  %102 = load i32, i32* @AT_PASS_DROP, align 4
  store i32 %102, i32* %14, align 4
  br label %441

103:                                              ; preds = %6
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @ATT_TABLE, align 4
  %106 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @ATSimplePermissions(i32 %104, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @ATPrepDropNotNull(i32 %109, i32 %110, i32 %111)
  %113 = load i32**, i32*** %7, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @ATSimpleRecursion(i32** %113, i32 %114, %struct.TYPE_16__* %115, i32 %116, i32 %117)
  %119 = load i32, i32* @AT_PASS_DROP, align 4
  store i32 %119, i32* %14, align 4
  br label %441

120:                                              ; preds = %6
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @ATT_TABLE, align 4
  %123 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @ATSimplePermissions(i32 %121, i32 %124)
  %126 = load i32**, i32*** %7, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 @ATPrepSetNotNull(i32** %126, i32 %127, %struct.TYPE_16__* %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* @AT_PASS_COL_ATTRS, align 4
  store i32 %133, i32* %14, align 4
  br label %441

134:                                              ; preds = %6
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @ATT_TABLE, align 4
  %137 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @ATSimplePermissions(i32 %135, i32 %138)
  %140 = load i32**, i32*** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @ATSimpleRecursion(i32** %140, i32 %141, %struct.TYPE_16__* %142, i32 %143, i32 %144)
  %146 = load i32, i32* @AT_PASS_COL_ATTRS, align 4
  store i32 %146, i32* %14, align 4
  br label %441

147:                                              ; preds = %6
  %148 = load i32**, i32*** %7, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @ATSimpleRecursion(i32** %148, i32 %149, %struct.TYPE_16__* %150, i32 %151, i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @ATPrepSetStatistics(i32 %154, i32 %157, i32 %160, i32 %163, i32 %164)
  %166 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %166, i32* %14, align 4
  br label %441

167:                                              ; preds = %6, %6
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* @ATT_TABLE, align 4
  %170 = load i32, i32* @ATT_MATVIEW, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @ATT_INDEX, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @ATSimplePermissions(i32 %168, i32 %175)
  %177 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %177, i32* %14, align 4
  br label %441

178:                                              ; preds = %6
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @ATT_TABLE, align 4
  %181 = load i32, i32* @ATT_MATVIEW, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @ATSimplePermissions(i32 %179, i32 %184)
  %186 = load i32**, i32*** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @ATSimpleRecursion(i32** %186, i32 %187, %struct.TYPE_16__* %188, i32 %189, i32 %190)
  %192 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %192, i32* %14, align 4
  br label %441

193:                                              ; preds = %6
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @ATT_TABLE, align 4
  %196 = load i32, i32* @ATT_COMPOSITE_TYPE, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @ATSimplePermissions(i32 %194, i32 %199)
  %201 = load i32**, i32*** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %11, align 4
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @ATPrepDropColumn(i32** %201, i32 %202, i32 %203, i32 %204, %struct.TYPE_16__* %205, i32 %206)
  %208 = load i32, i32* @AT_PASS_DROP, align 4
  store i32 %208, i32* %14, align 4
  br label %441

209:                                              ; preds = %6
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @ATT_TABLE, align 4
  %212 = call i32 @ATSimplePermissions(i32 %210, i32 %211)
  %213 = load i32, i32* @AT_PASS_ADD_INDEX, align 4
  store i32 %213, i32* %14, align 4
  br label %441

214:                                              ; preds = %6
  %215 = load i32, i32* %8, align 4
  %216 = load i32, i32* @ATT_TABLE, align 4
  %217 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @ATSimplePermissions(i32 %215, i32 %218)
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %214
  %223 = load i32, i32* @AT_AddConstraintRecurse, align 4
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %214
  %227 = load i32, i32* @AT_PASS_ADD_CONSTR, align 4
  store i32 %227, i32* %14, align 4
  br label %441

228:                                              ; preds = %6
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @ATT_TABLE, align 4
  %231 = call i32 @ATSimplePermissions(i32 %229, i32 %230)
  %232 = load i32, i32* @AT_PASS_ADD_CONSTR, align 4
  store i32 %232, i32* %14, align 4
  br label %441

233:                                              ; preds = %6
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @ATT_TABLE, align 4
  %236 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @ATSimplePermissions(i32 %234, i32 %237)
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %12, align 4
  %241 = call i32 @ATCheckPartitionsNotInUse(i32 %239, i32 %240)
  %242 = load i32, i32* %10, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %233
  %245 = load i32, i32* @AT_DropConstraintRecurse, align 4
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %244, %233
  %249 = load i32, i32* @AT_PASS_DROP, align 4
  store i32 %249, i32* %14, align 4
  br label %441

250:                                              ; preds = %6
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @ATT_TABLE, align 4
  %253 = load i32, i32* @ATT_COMPOSITE_TYPE, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %256 = or i32 %254, %255
  %257 = call i32 @ATSimplePermissions(i32 %251, i32 %256)
  %258 = load i32**, i32*** %7, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %10, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %264 = load i32, i32* %12, align 4
  %265 = call i32 @ATPrepAlterColumnType(i32** %258, %struct.TYPE_15__* %259, i32 %260, i32 %261, i32 %262, %struct.TYPE_16__* %263, i32 %264)
  %266 = load i32, i32* @AT_PASS_ALTER_TYPE, align 4
  store i32 %266, i32* %14, align 4
  br label %441

267:                                              ; preds = %6
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %270 = call i32 @ATSimplePermissions(i32 %268, i32 %269)
  %271 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %271, i32* %14, align 4
  br label %441

272:                                              ; preds = %6
  %273 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %273, i32* %14, align 4
  br label %441

274:                                              ; preds = %6, %6
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* @ATT_TABLE, align 4
  %277 = load i32, i32* @ATT_MATVIEW, align 4
  %278 = or i32 %276, %277
  %279 = call i32 @ATSimplePermissions(i32 %275, i32 %278)
  %280 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %280, i32* %14, align 4
  br label %441

281:                                              ; preds = %6
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* @ATT_TABLE, align 4
  %284 = call i32 @ATSimplePermissions(i32 %282, i32 %283)
  %285 = load i32, i32* %8, align 4
  %286 = call i8* @ATPrepChangePersistence(i32 %285, i32 1)
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 3
  %291 = load i8*, i8** %290, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %302

293:                                              ; preds = %281
  %294 = load i32, i32* @AT_REWRITE_ALTER_PERSISTENCE, align 4
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* @RELPERSISTENCE_PERMANENT, align 4
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 1
  store i32 %299, i32* %301, align 8
  br label %302

302:                                              ; preds = %293, %281
  %303 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %303, i32* %14, align 4
  br label %441

304:                                              ; preds = %6
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @ATT_TABLE, align 4
  %307 = call i32 @ATSimplePermissions(i32 %305, i32 %306)
  %308 = load i32, i32* %8, align 4
  %309 = call i8* @ATPrepChangePersistence(i32 %308, i32 0)
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 3
  store i8* %309, i8** %311, align 8
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 3
  %314 = load i8*, i8** %313, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %325

316:                                              ; preds = %304
  %317 = load i32, i32* @AT_REWRITE_ALTER_PERSISTENCE, align 4
  %318 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = or i32 %320, %317
  store i32 %321, i32* %319, align 4
  %322 = load i32, i32* @RELPERSISTENCE_UNLOGGED, align 4
  %323 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %324 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 8
  br label %325

325:                                              ; preds = %316, %304
  %326 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %326, i32* %14, align 4
  br label %441

327:                                              ; preds = %6
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* @ATT_TABLE, align 4
  %330 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %331 = or i32 %329, %330
  %332 = call i32 @ATSimplePermissions(i32 %328, i32 %331)
  %333 = load i32, i32* @AT_PASS_DROP, align 4
  store i32 %333, i32* %14, align 4
  br label %441

334:                                              ; preds = %6
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* @ATT_TABLE, align 4
  %337 = load i32, i32* @ATT_MATVIEW, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @ATT_INDEX, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @ATT_PARTITIONED_INDEX, align 4
  %342 = or i32 %340, %341
  %343 = call i32 @ATSimplePermissions(i32 %335, i32 %342)
  %344 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %345 = load i32, i32* %8, align 4
  %346 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %12, align 4
  %350 = call i32 @ATPrepSetTableSpace(%struct.TYPE_15__* %344, i32 %345, i32 %348, i32 %349)
  %351 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %351, i32* %14, align 4
  br label %441

352:                                              ; preds = %6, %6, %6
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* @ATT_TABLE, align 4
  %355 = load i32, i32* @ATT_VIEW, align 4
  %356 = or i32 %354, %355
  %357 = load i32, i32* @ATT_MATVIEW, align 4
  %358 = or i32 %356, %357
  %359 = load i32, i32* @ATT_INDEX, align 4
  %360 = or i32 %358, %359
  %361 = call i32 @ATSimplePermissions(i32 %353, i32 %360)
  %362 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %362, i32* %14, align 4
  br label %441

363:                                              ; preds = %6
  %364 = load i32, i32* %8, align 4
  %365 = load i32, i32* @ATT_TABLE, align 4
  %366 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %367 = or i32 %365, %366
  %368 = call i32 @ATSimplePermissions(i32 %364, i32 %367)
  %369 = load i32, i32* %8, align 4
  %370 = call i32 @ATPrepAddInherit(i32 %369)
  %371 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %371, i32* %14, align 4
  br label %441

372:                                              ; preds = %6
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* @ATT_TABLE, align 4
  %375 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %376 = or i32 %374, %375
  %377 = call i32 @ATSimplePermissions(i32 %373, i32 %376)
  %378 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %378, i32* %14, align 4
  br label %441

379:                                              ; preds = %6
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* @ATT_TABLE, align 4
  %382 = call i32 @ATSimplePermissions(i32 %380, i32 %381)
  %383 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %383, i32* %14, align 4
  br label %441

384:                                              ; preds = %6
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* @ATT_TABLE, align 4
  %387 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %388 = or i32 %386, %387
  %389 = call i32 @ATSimplePermissions(i32 %385, i32 %388)
  %390 = load i32, i32* %10, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %384
  %393 = load i32, i32* @AT_ValidateConstraintRecurse, align 4
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 0
  store i32 %393, i32* %395, align 4
  br label %396

396:                                              ; preds = %392, %384
  %397 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %397, i32* %14, align 4
  br label %441

398:                                              ; preds = %6
  %399 = load i32, i32* %8, align 4
  %400 = load i32, i32* @ATT_TABLE, align 4
  %401 = load i32, i32* @ATT_MATVIEW, align 4
  %402 = or i32 %400, %401
  %403 = call i32 @ATSimplePermissions(i32 %399, i32 %402)
  %404 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %404, i32* %14, align 4
  br label %441

405:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6
  %406 = load i32, i32* %8, align 4
  %407 = load i32, i32* @ATT_TABLE, align 4
  %408 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %409 = or i32 %407, %408
  %410 = call i32 @ATSimplePermissions(i32 %406, i32 %409)
  %411 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %411, i32* %14, align 4
  br label %441

412:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %413 = load i32, i32* %8, align 4
  %414 = load i32, i32* @ATT_TABLE, align 4
  %415 = call i32 @ATSimplePermissions(i32 %413, i32 %414)
  %416 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %416, i32* %14, align 4
  br label %441

417:                                              ; preds = %6
  %418 = load i32, i32* %8, align 4
  %419 = load i32, i32* @ATT_FOREIGN_TABLE, align 4
  %420 = call i32 @ATSimplePermissions(i32 %418, i32 %419)
  %421 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %421, i32* %14, align 4
  br label %441

422:                                              ; preds = %6
  %423 = load i32, i32* %8, align 4
  %424 = load i32, i32* @ATT_TABLE, align 4
  %425 = load i32, i32* @ATT_PARTITIONED_INDEX, align 4
  %426 = or i32 %424, %425
  %427 = call i32 @ATSimplePermissions(i32 %423, i32 %426)
  %428 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %428, i32* %14, align 4
  br label %441

429:                                              ; preds = %6
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* @ATT_TABLE, align 4
  %432 = call i32 @ATSimplePermissions(i32 %430, i32 %431)
  %433 = load i32, i32* @AT_PASS_MISC, align 4
  store i32 %433, i32* %14, align 4
  br label %441

434:                                              ; preds = %6
  %435 = load i32, i32* @ERROR, align 4
  %436 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %437 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @elog(i32 %435, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %438)
  %440 = load i32, i32* @AT_PASS_UNSET, align 4
  store i32 %440, i32* %14, align 4
  br label %441

441:                                              ; preds = %434, %429, %422, %417, %412, %405, %398, %396, %379, %372, %363, %352, %334, %327, %325, %302, %274, %272, %267, %250, %248, %228, %226, %209, %193, %178, %167, %147, %134, %120, %103, %94, %85, %76, %74, %40, %24
  %442 = load i32, i32* %14, align 4
  %443 = load i32, i32* @AT_PASS_UNSET, align 4
  %444 = icmp sgt i32 %442, %443
  %445 = zext i1 %444 to i32
  %446 = call i32 @Assert(i32 %445)
  %447 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 0
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %14, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %455 = call i32 @lappend(i32 %453, %struct.TYPE_16__* %454)
  %456 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %457 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %14, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %455, i32* %461, align 4
  ret void
}

declare dso_local %struct.TYPE_15__* @ATGetQueueEntry(i32**, i32) #1

declare dso_local %struct.TYPE_16__* @copyObject(%struct.TYPE_16__*) #1

declare dso_local i32 @ATSimplePermissions(i32, i32) #1

declare dso_local i32 @ATPrepAddColumn(i32**, i32, i32, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ATSimpleRecursion(i32**, i32, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ATPrepDropNotNull(i32, i32, i32) #1

declare dso_local i32 @ATPrepSetNotNull(i32**, i32, %struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @ATPrepSetStatistics(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ATPrepDropColumn(i32**, i32, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ATCheckPartitionsNotInUse(i32, i32) #1

declare dso_local i32 @ATPrepAlterColumnType(i32**, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @ATPrepChangePersistence(i32, i32) #1

declare dso_local i32 @ATPrepSetTableSpace(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ATPrepAddInherit(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @lappend(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
