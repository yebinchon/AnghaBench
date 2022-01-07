; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_check_level_from_leftmost.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_check_level_from_leftmost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }

@P_NONE = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@InvalidBtreeLevel = common dso_local global i8* null, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"verifying level %u%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" (true root level)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" (leaf level)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"downlink or sibling link points to deleted block in index \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Block=%u left block=%u left link from block=%u.\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"block %u fell off the end of index \22%s\22\00", align 1
@DEBUG1 = common dso_local global i32 0, align 4
@ERRCODE_NO_DATA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"block %u of index \22%s\22 ignored\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"block %u is not leftmost in index \22%s\22\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"block %u is not true root in index \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"left link/right link pair in index \22%s\22 not in agreement\00", align 1
@.str.11 = private unnamed_addr constant [93 x i8] c"leftmost down link for level points to block in index \22%s\22 whose level is not one level down\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"Block pointed to=%u expected level=%u level in pointed to block=%u.\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"circular link chain found in block %u of index \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*, %struct.TYPE_20__*)* @bt_check_level_from_leftmost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_check_level_from_leftmost(%struct.TYPE_20__* noalias sret %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %11 = load i64, i64* @P_NONE, align 8
  store i64 %11, i64* %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @InvalidBlockNumber, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i8*, i8** @InvalidBtreeLevel, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MemoryContextSwitchTo(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @DEBUG2, align 4
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %37

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  br label %37

37:                                               ; preds = %31, %30
  %38 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %30 ], [ %36, %31 ]
  %39 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %26, i8* %38)
  br label %40

40:                                               ; preds = %293, %37
  %41 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 5
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @palloc_btree_page(%struct.TYPE_21__* %45, i64 %48)
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @PageGetLSN(i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @PageGetSpecialPointer(i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %5, align 8
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %64 = call i64 @P_IGNORE(%struct.TYPE_22__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %119

66:                                               ; preds = %40
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %66
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = call i64 @P_ISDELETED(%struct.TYPE_22__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @RelationGetRelationName(i32 %81)
  %83 = sext i32 %82 to i64
  %84 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @errdetail_internal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %85, i64 %86, i64 %89)
  %91 = call i32 @ereport(i32 %76, i32 %90)
  br label %92

92:                                               ; preds = %75, %71, %66
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = call i64 @P_RIGHTMOST(%struct.TYPE_22__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* @ERROR, align 4
  %98 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %99 = call i32 @errcode(i32 %98)
  %100 = load i64, i64* %8, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @RelationGetRelationName(i32 %103)
  %105 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %100, i32 %104)
  %106 = call i32 @ereport(i32 %97, i32 %105)
  br label %118

107:                                              ; preds = %92
  %108 = load i32, i32* @DEBUG1, align 4
  %109 = load i32, i32* @ERRCODE_NO_DATA, align 4
  %110 = call i32 @errcode(i32 %109)
  %111 = load i64, i64* %8, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @RelationGetRelationName(i32 %114)
  %116 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i64 %111, i32 %115)
  %117 = call i32 @ereport(i32 %108, i32 %116)
  br label %118

118:                                              ; preds = %107, %96
  br label %259

119:                                              ; preds = %40
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @InvalidBlockNumber, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %200

124:                                              ; preds = %119
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %164

129:                                              ; preds = %124
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %131 = call i32 @P_LEFTMOST(%struct.TYPE_22__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %129
  %134 = load i32, i32* @ERROR, align 4
  %135 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %136 = call i32 @errcode(i32 %135)
  %137 = load i64, i64* %8, align 8
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @RelationGetRelationName(i32 %140)
  %142 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i64 %137, i32 %141)
  %143 = call i32 @ereport(i32 %134, i32 %142)
  br label %144

144:                                              ; preds = %133, %129
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %144
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %150 = call i32 @P_ISROOT(%struct.TYPE_22__* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* @ERROR, align 4
  %154 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %155 = call i32 @errcode(i32 %154)
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @RelationGetRelationName(i32 %159)
  %161 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %156, i32 %160)
  %162 = call i32 @ereport(i32 %153, i32 %161)
  br label %163

163:                                              ; preds = %152, %148, %144
  br label %164

164:                                              ; preds = %163, %124
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = call i32 @P_ISLEAF(%struct.TYPE_22__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %193, label %168

168:                                              ; preds = %164
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = call i32 @P_FIRSTDATAKEY(%struct.TYPE_22__* %176)
  %178 = call i32 @PageGetItemIdCareful(%struct.TYPE_21__* %169, i64 %172, i32 %175, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = call i64 @PageGetItem(i32 %181, i32 %182)
  store i64 %183, i64* %9, align 8
  %184 = load i64, i64* %9, align 8
  %185 = call i64 @BTreeInnerTupleGetDownLink(i64 %184)
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  store i64 %185, i64* %186, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %190, 1
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 1
  store i64 %191, i64* %192, align 8
  br label %199

193:                                              ; preds = %164
  %194 = load i64, i64* @P_NONE, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 0
  store i64 %194, i64* %195, align 8
  %196 = load i8*, i8** @InvalidBtreeLevel, align 8
  %197 = ptrtoint i8* %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %0, i32 0, i32 1
  store i64 %197, i64* %198, align 8
  br label %199

199:                                              ; preds = %193, %168
  br label %200

200:                                              ; preds = %199, %119
  br label %201

201:                                              ; preds = %200
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 3
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %229

206:                                              ; preds = %201
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %7, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %229

212:                                              ; preds = %206
  %213 = load i32, i32* @ERROR, align 4
  %214 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %215 = call i32 @errcode(i32 %214)
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @RelationGetRelationName(i32 %218)
  %220 = sext i32 %219 to i64
  %221 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i64 %220)
  %222 = load i64, i64* %8, align 8
  %223 = load i64, i64* %7, align 8
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @errdetail_internal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %222, i64 %223, i64 %226)
  %228 = call i32 @ereport(i32 %213, i32 %227)
  br label %229

229:                                              ; preds = %212, %206, %201
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %231, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %229
  %238 = load i32, i32* @ERROR, align 4
  %239 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %240 = call i32 @errcode(i32 %239)
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @RelationGetRelationName(i32 %243)
  %245 = sext i32 %244 to i64
  %246 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.11, i64 0, i64 0), i64 %245)
  %247 = load i64, i64* %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @errdetail_internal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0), i64 %247, i64 %249, i64 %253)
  %255 = call i32 @ereport(i32 %238, i32 %254)
  br label %256

256:                                              ; preds = %237, %229
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %258 = call i32 @bt_target_page_check(%struct.TYPE_21__* %257)
  br label %259

259:                                              ; preds = %256, %118
  %260 = load i64, i64* %8, align 8
  %261 = load i64, i64* %7, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = load i64, i64* %8, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %264, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %263, %259
  %270 = load i32, i32* @ERROR, align 4
  %271 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %272 = call i32 @errcode(i32 %271)
  %273 = load i64, i64* %8, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @RelationGetRelationName(i32 %276)
  %278 = call i32 (i8*, i64, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i64 %273, i32 %277)
  %279 = call i32 @ereport(i32 %270, i32 %278)
  br label %280

280:                                              ; preds = %269, %263
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %282 = call i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_22__* %281)
  %283 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load i64, i64* %8, align 8
  store i64 %285, i64* %7, align 8
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %8, align 8
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @MemoryContextReset(i32 %291)
  br label %293

293:                                              ; preds = %280
  %294 = load i64, i64* %8, align 8
  %295 = load i64, i64* @P_NONE, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %40, label %297

297:                                              ; preds = %293
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @MemoryContextSwitchTo(i32 %298)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i8*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @palloc_btree_page(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @PageGetLSN(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_IGNORE(%struct.TYPE_22__*) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_22__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail_internal(i8*, i64, i64, i64) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_22__*) #1

declare dso_local i32 @P_LEFTMOST(%struct.TYPE_22__*) #1

declare dso_local i32 @P_ISROOT(%struct.TYPE_22__*) #1

declare dso_local i32 @P_ISLEAF(%struct.TYPE_22__*) #1

declare dso_local i32 @PageGetItemIdCareful(%struct.TYPE_21__*, i64, i32, i32) #1

declare dso_local i32 @P_FIRSTDATAKEY(%struct.TYPE_22__*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @BTreeInnerTupleGetDownLink(i64) #1

declare dso_local i32 @bt_target_page_check(%struct.TYPE_21__*) #1

declare dso_local i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_22__*) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
