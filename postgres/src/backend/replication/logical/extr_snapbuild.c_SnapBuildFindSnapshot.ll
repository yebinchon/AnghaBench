; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildFindSnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_snapbuild.c_SnapBuildFindSnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i64, i64, i32 }
%struct.TYPE_9__ = type { i64, i64, i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [90 x i8] c"skipping snapshot at %X/%X while building logical decoding snapshot, xmin horizon too low\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"initial xmin horizon of %u vs the snapshot's %u\00", align 1
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@SNAPBUILD_CONSISTENT = common dso_local global i8* null, align 8
@InvalidTransactionId = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"logical decoding found consistent point at %X/%X\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"There are no running transactions.\00", align 1
@SNAPBUILD_START = common dso_local global i64 0, align 8
@SNAPBUILD_BUILDING_SNAPSHOT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"logical decoding found initial starting point at %X/%X\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Waiting for transactions (approximately %d) older than %u to end.\00", align 1
@SNAPBUILD_FULL_SNAPSHOT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [57 x i8] c"logical decoding found initial consistent point at %X/%X\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"There are no old transactions anymore.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, %struct.TYPE_9__*)* @SnapBuildFindSnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SnapBuildFindSnapshot(%struct.TYPE_10__* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @TransactionIdIsNormal(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @NormalTransactionIdPrecedes(i64 %16, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = load i32, i32* @DEBUG1, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 32
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @errmsg_internal(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @errdetail_internal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %33)
  %35 = call i32 @ereport(i32 %23, i32 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @SnapBuildWaitSnapshot(%struct.TYPE_9__* %36, i64 %39)
  store i32 1, i32* %4, align 4
  br label %240

41:                                               ; preds = %13, %3
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %41
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @InvalidXLogRecPtr, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55, %49
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @TransactionIdIsNormal(i64 %79)
  %81 = call i32 @Assert(i64 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @TransactionIdIsNormal(i64 %84)
  %86 = call i32 @Assert(i64 %85)
  %87 = load i8*, i8** @SNAPBUILD_CONSISTENT, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 4
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = load i64, i64* @InvalidTransactionId, align 8
  %93 = call i32 @SnapBuildStartNextPhaseAt(%struct.TYPE_10__* %91, i64 %92)
  %94 = load i32, i32* @LOG, align 4
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 32
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %97)
  %99 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 @ereport(i32 %94, i32 %99)
  store i32 0, i32* %4, align 4
  br label %240

101:                                              ; preds = %41
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @SnapBuildRestore(%struct.TYPE_10__* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %240

112:                                              ; preds = %106, %101
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SNAPBUILD_START, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %165

118:                                              ; preds = %112
  %119 = load i64, i64* @SNAPBUILD_BUILDING_SNAPSHOT, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @SnapBuildStartNextPhaseAt(%struct.TYPE_10__* %122, i64 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @TransactionIdIsNormal(i64 %139)
  %141 = call i32 @Assert(i64 %140)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @TransactionIdIsNormal(i64 %144)
  %146 = call i32 @Assert(i64 %145)
  %147 = load i32, i32* @LOG, align 4
  %148 = load i32, i32* %6, align 4
  %149 = ashr i32 %148, 32
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %150)
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %154, i64 %157)
  %159 = call i32 @ereport(i32 %147, i32 %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @SnapBuildWaitSnapshot(%struct.TYPE_9__* %160, i64 %163)
  br label %237

165:                                              ; preds = %112
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @SNAPBUILD_BUILDING_SNAPSHOT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %206

171:                                              ; preds = %165
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %173 = call i32 @SnapBuildNextPhaseAt(%struct.TYPE_10__* %172)
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @TransactionIdPrecedesOrEquals(i32 %173, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %206

179:                                              ; preds = %171
  %180 = load i64, i64* @SNAPBUILD_FULL_SNAPSHOT, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 4
  store i64 %180, i64* %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @SnapBuildStartNextPhaseAt(%struct.TYPE_10__* %183, i64 %186)
  %188 = load i32, i32* @LOG, align 4
  %189 = load i32, i32* %6, align 4
  %190 = ashr i32 %189, 32
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %190, i32 %191)
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %195, i64 %198)
  %200 = call i32 @ereport(i32 %188, i32 %199)
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @SnapBuildWaitSnapshot(%struct.TYPE_9__* %201, i64 %204)
  br label %236

206:                                              ; preds = %171, %165
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @SNAPBUILD_FULL_SNAPSHOT, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %235

212:                                              ; preds = %206
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %214 = call i32 @SnapBuildNextPhaseAt(%struct.TYPE_10__* %213)
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @TransactionIdPrecedesOrEquals(i32 %214, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %235

220:                                              ; preds = %212
  %221 = load i8*, i8** @SNAPBUILD_CONSISTENT, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 4
  store i64 %222, i64* %224, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %226 = load i64, i64* @InvalidTransactionId, align 8
  %227 = call i32 @SnapBuildStartNextPhaseAt(%struct.TYPE_10__* %225, i64 %226)
  %228 = load i32, i32* @LOG, align 4
  %229 = load i32, i32* %6, align 4
  %230 = ashr i32 %229, 32
  %231 = load i32, i32* %6, align 4
  %232 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %230, i32 %231)
  %233 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %234 = call i32 @ereport(i32 %228, i32 %233)
  br label %235

235:                                              ; preds = %220, %212, %206
  br label %236

236:                                              ; preds = %235, %179
  br label %237

237:                                              ; preds = %236, %118
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238
  store i32 1, i32* %4, align 4
  br label %240

240:                                              ; preds = %239, %111, %66, %22
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i64 @TransactionIdIsNormal(i64) #1

declare dso_local i64 @NormalTransactionIdPrecedes(i64, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32, i32) #1

declare dso_local i32 @errdetail_internal(i8*, i64, i64) #1

declare dso_local i32 @SnapBuildWaitSnapshot(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i32 @SnapBuildStartNextPhaseAt(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i64 @SnapBuildRestore(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @TransactionIdPrecedesOrEquals(i32, i64) #1

declare dso_local i32 @SnapBuildNextPhaseAt(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
