; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_downlink_missing_check.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_downlink_missing_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@ERRCODE_NO_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"harmless interrupted page split detected in index %s\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Block=%u level=%u left sibling=%u page lsn=%X/%X.\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"leaf index block lacks downlink in index \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Block=%u page lsn=%X/%X.\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"checking for interrupted multi-level deletion due to missing downlink in index \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"downlink points to block in index \22%s\22 whose level is not one level down\00", align 1
@.str.6 = private unnamed_addr constant [95 x i8] c"Top parent/target block=%u block pointed to=%u expected level=%u level in pointed to block=%u.\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"downlink to deleted leaf page found in index \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [70 x i8] c"Top parent/target block=%u leaf block=%u top parent/target lsn=%X/%X.\00", align 1
@P_HIKEY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"internal index block lacks downlink in index \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Block=%u level=%u page lsn=%X/%X.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*)* @bt_downlink_missing_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_downlink_missing_check(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @PageGetSpecialPointer(i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %3, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %1
  %25 = phi i1 [ false, %1 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = call i32 @P_IGNORE(%struct.TYPE_16__* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = call i64 @P_ISROOT(%struct.TYPE_16__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %272

38:                                               ; preds = %24
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = load i32, i32* @DEBUG1, align 4
  %45 = load i32, i32* @ERRCODE_NO_DATA, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @RelationGetRelationName(i32 %49)
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = ashr i32 %65, 32
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i64, i64, i32, ...) @errdetail_internal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %54, i64 %59, i32 %62, i32 %66, i32 %69)
  %71 = call i32 @ereport(i32 %44, i32 %70)
  br label %272

72:                                               ; preds = %38
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = bitcast i64* %77 to i8*
  %79 = call i32 @bloom_lacks_element(i32 %75, i8* %78, i32 8)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %272

82:                                               ; preds = %72
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = call i64 @P_ISLEAF(%struct.TYPE_16__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %82
  %87 = load i32, i32* @ERROR, align 4
  %88 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %89 = call i32 @errcode(i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @RelationGetRelationName(i32 %92)
  %94 = call i32 @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = ashr i32 %100, 32
  %102 = sext i32 %101 to i64
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i8*, i64, i64, i32, ...) @errdetail_internal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %97, i64 %102, i32 %105)
  %107 = call i32 @ereport(i32 %87, i32 %106)
  br label %108

108:                                              ; preds = %86, %82
  %109 = load i32, i32* @DEBUG1, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @RelationGetRelationName(i32 %112)
  %114 = call i32 @elog(i32 %109, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %8, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %127 = call i32 @P_FIRSTDATAKEY(%struct.TYPE_16__* %126)
  %128 = call i32 @PageGetItemIdCareful(%struct.TYPE_15__* %119, i64 %122, i32 %125, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = call i64 @PageGetItem(i32 %131, i32 %132)
  store i64 %133, i64* %5, align 8
  %134 = load i64, i64* %5, align 8
  %135 = call i64 @BTreeInnerTupleGetDownLink(i64 %134)
  store i64 %135, i64* %9, align 8
  br label %136

136:                                              ; preds = %177, %108
  %137 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @palloc_btree_page(%struct.TYPE_15__* %138, i64 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @PageGetSpecialPointer(i32 %141)
  %143 = inttoptr i64 %142 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %143, %struct.TYPE_16__** %7, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = call i64 @P_ISLEAF(%struct.TYPE_16__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %195

148:                                              ; preds = %136
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sub nsw i32 %153, 1
  %155 = icmp ne i32 %152, %154
  br i1 %155, label %156, label %177

156:                                              ; preds = %148
  %157 = load i32, i32* @ERROR, align 4
  %158 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %159 = call i32 @errcode(i32 %158)
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @RelationGetRelationName(i32 %162)
  %164 = call i32 @errmsg_internal(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i32 %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %169, 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, i64, i64, i32, ...) @errdetail_internal(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0), i64 %167, i64 %168, i32 %170, i32 %174)
  %176 = call i32 @ereport(i32 %157, i32 %175)
  br label %177

177:                                              ; preds = %156, %148
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %8, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %186 = call i32 @P_FIRSTDATAKEY(%struct.TYPE_16__* %185)
  %187 = call i32 @PageGetItemIdCareful(%struct.TYPE_15__* %182, i64 %183, i32 %184, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %4, align 4
  %190 = call i64 @PageGetItem(i32 %188, i32 %189)
  store i64 %190, i64* %5, align 8
  %191 = load i64, i64* %5, align 8
  %192 = call i64 @BTreeInnerTupleGetDownLink(i64 %191)
  store i64 %192, i64* %9, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @pfree(i32 %193)
  br label %136

195:                                              ; preds = %147
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %197 = call i64 @P_ISDELETED(%struct.TYPE_16__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %221

199:                                              ; preds = %195
  %200 = load i32, i32* @ERROR, align 4
  %201 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %202 = call i32 @errcode(i32 %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @RelationGetRelationName(i32 %205)
  %207 = call i32 @errmsg_internal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %206)
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* %9, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = ashr i32 %214, 32
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i8*, i64, i64, i32, ...) @errdetail_internal(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0), i64 %210, i64 %211, i32 %215, i32 %218)
  %220 = call i32 @ereport(i32 %200, i32 %219)
  br label %221

221:                                              ; preds = %199, %195
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %223 = call i64 @P_ISHALFDEAD(%struct.TYPE_16__* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %221
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %227 = call i32 @P_RIGHTMOST(%struct.TYPE_16__* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %246, label %229

229:                                              ; preds = %225
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %231 = load i64, i64* %9, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @P_HIKEY, align 4
  %234 = call i32 @PageGetItemIdCareful(%struct.TYPE_15__* %230, i64 %231, i32 %232, i32 %233)
  store i32 %234, i32* %4, align 4
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %4, align 4
  %237 = call i64 @PageGetItem(i32 %235, i32 %236)
  store i64 %237, i64* %5, align 8
  %238 = load i64, i64* %5, align 8
  %239 = call i64 @BTreeTupleGetTopParent(i64 %238)
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp eq i64 %239, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %229
  br label %272

245:                                              ; preds = %229
  br label %246

246:                                              ; preds = %245, %225, %221
  %247 = load i32, i32* @ERROR, align 4
  %248 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %249 = call i32 @errcode(i32 %248)
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @RelationGetRelationName(i32 %252)
  %254 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %253)
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = ashr i32 %265, 32
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i8*, i64, i64, i32, ...) @errdetail_internal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i64 %257, i64 %262, i32 %266, i32 %269)
  %271 = call i32 @ereport(i32 %247, i32 %270)
  br label %272

272:                                              ; preds = %246, %244, %81, %43, %37
  ret void
}

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @P_IGNORE(%struct.TYPE_16__*) #1

declare dso_local i64 @P_ISROOT(%struct.TYPE_16__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail_internal(i8*, i64, i64, i32, ...) #1

declare dso_local i32 @bloom_lacks_element(i32, i8*, i32) #1

declare dso_local i64 @P_ISLEAF(%struct.TYPE_16__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @PageGetItemIdCareful(%struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i32 @P_FIRSTDATAKEY(%struct.TYPE_16__*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @BTreeInnerTupleGetDownLink(i64) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @palloc_btree_page(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @errmsg_internal(i8*, i32) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_16__*) #1

declare dso_local i64 @P_ISHALFDEAD(%struct.TYPE_16__*) #1

declare dso_local i32 @P_RIGHTMOST(%struct.TYPE_16__*) #1

declare dso_local i64 @BTreeTupleGetTopParent(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
