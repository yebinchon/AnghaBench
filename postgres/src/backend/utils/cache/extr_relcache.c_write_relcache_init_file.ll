; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_write_relcache_init_file.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_write_relcache_init_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i64, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@relcacheInvalsReceived = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"global/%s.%d\00", align 1
@RELCACHE_INIT_FILENAME = common dso_local global i8* null, align 8
@MyProcPid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"global/%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/%s.%d\00", align 1
@DatabasePath = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@PG_BINARY_W = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"could not create relation-cache initialization file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Continuing anyway, but there's something wrong.\00", align 1
@RELCACHE_INIT_FILEMAGIC = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"could not write init file\00", align 1
@RelationIdCache = common dso_local global i32 0, align 4
@CLASS_TUPLE_SIZE = common dso_local global i32 0, align 4
@ATTRIBUTE_FIXED_PART_SIZE = common dso_local global i32 0, align 4
@RELKIND_INDEX = common dso_local global i64 0, align 8
@HEAPTUPLESIZE = common dso_local global i32 0, align 4
@RelCacheInitLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_relcache_init_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_relcache_init_file(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* @MAXPGPATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %4, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %18 = load i32, i32* @MAXPGPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %21 = load i64, i64* @relcacheInvalsReceived, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %254

24:                                               ; preds = %1
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = trunc i64 %15 to i32
  %29 = load i8*, i8** @RELCACHE_INIT_FILENAME, align 8
  %30 = load i32, i32* @MyProcPid, align 4
  %31 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = trunc i64 %19 to i32
  %33 = load i8*, i8** @RELCACHE_INIT_FILENAME, align 8
  %34 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %45

35:                                               ; preds = %24
  %36 = trunc i64 %15 to i32
  %37 = load i8*, i8** @DatabasePath, align 8
  %38 = load i8*, i8** @RELCACHE_INIT_FILENAME, align 8
  %39 = load i32, i32* @MyProcPid, align 4
  %40 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %38, i32 %39)
  %41 = trunc i64 %19 to i32
  %42 = load i8*, i8** @DatabasePath, align 8
  %43 = load i8*, i8** @RELCACHE_INIT_FILENAME, align 8
  %44 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %43)
  br label %45

45:                                               ; preds = %35, %27
  %46 = call i32 @unlink(i8* %17)
  %47 = load i32, i32* @PG_BINARY_W, align 4
  %48 = call i32* @AllocateFile(i8* %17, i32 %47)
  store i32* %48, i32** %3, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @WARNING, align 4
  %53 = call i32 (...) @errcode_for_file_access()
  %54 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8* %17)
  %55 = call i32 @errdetail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @ereport(i32 %52, i32 %55)
  store i32 1, i32* %11, align 4
  br label %254

57:                                               ; preds = %45
  %58 = load i32, i32* @RELCACHE_INIT_FILEMAGIC, align 4
  store i32 %58, i32* %7, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @fwrite(i32* %7, i32 1, i32 4, i32* %59)
  %61 = sext i32 %60 to i64
  %62 = icmp ne i64 %61, 4
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @FATAL, align 4
  %65 = call i32 @elog(i32 %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32, i32* @RelationIdCache, align 4
  %68 = call i32 @hash_seq_init(i32* %8, i32 %67)
  br label %69

69:                                               ; preds = %228, %94, %85, %66
  %70 = call i64 @hash_seq_search(i32* %8)
  %71 = inttoptr i64 %70 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %9, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %73, label %229

73:                                               ; preds = %69
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %12, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 11
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %13, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %2, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %69

86:                                               ; preds = %73
  %87 = load i32, i32* %2, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %91 = call i32 @RelationGetRelid(%struct.TYPE_10__* %90)
  %92 = call i32 @RelationIdIsInInitFile(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 14
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  br label %69

102:                                              ; preds = %89, %86
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @write_item(%struct.TYPE_10__* %103, i32 4, i32* %104)
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %107 = load i32, i32* @CLASS_TUPLE_SIZE, align 4
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @write_item(%struct.TYPE_10__* %106, i32 %107, i32* %108)
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %125, %102
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 13
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call %struct.TYPE_10__* @TupleDescAttr(i32 %119, i32 %120)
  %122 = load i32, i32* @ATTRIBUTE_FIXED_PART_SIZE, align 4
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @write_item(%struct.TYPE_10__* %121, i32 %122, i32* %123)
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %110

128:                                              ; preds = %110
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 12
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 12
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = icmp ne %struct.TYPE_10__* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %128
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 12
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = call i32 @VARSIZE(%struct.TYPE_10__* %139)
  br label %142

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %136
  %143 = phi i32 [ %140, %136 ], [ 0, %141 ]
  %144 = load i32*, i32** %3, align 8
  %145 = call i32 @write_item(%struct.TYPE_10__* %131, i32 %143, i32* %144)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 11
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @RELKIND_INDEX, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %228

153:                                              ; preds = %142
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 10
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load i32, i32* @HEAPTUPLESIZE, align 4
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 10
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %157, %162
  %164 = load i32*, i32** %3, align 8
  %165 = call i32 @write_item(%struct.TYPE_10__* %156, i32 %163, i32* %164)
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 9
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 4
  %174 = trunc i64 %173 to i32
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @write_item(%struct.TYPE_10__* %168, i32 %174, i32* %175)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = load i32*, i32** %3, align 8
  %187 = call i32 @write_item(%struct.TYPE_10__* %179, i32 %185, i32* %186)
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 7
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 6
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = mul i64 %200, 4
  %202 = mul i64 %194, %201
  %203 = trunc i64 %202 to i32
  %204 = load i32*, i32** %3, align 8
  %205 = call i32 @write_item(%struct.TYPE_10__* %190, i32 %203, i32* %204)
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 4
  %214 = trunc i64 %213 to i32
  %215 = load i32*, i32** %3, align 8
  %216 = call i32 @write_item(%struct.TYPE_10__* %208, i32 %214, i32* %215)
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = mul i64 %223, 4
  %225 = trunc i64 %224 to i32
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @write_item(%struct.TYPE_10__* %219, i32 %225, i32* %226)
  br label %228

228:                                              ; preds = %153, %142
  br label %69

229:                                              ; preds = %69
  %230 = load i32*, i32** %3, align 8
  %231 = call i64 @FreeFile(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, i32* @FATAL, align 4
  %235 = call i32 @elog(i32 %234, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %236

236:                                              ; preds = %233, %229
  %237 = load i32, i32* @RelCacheInitLock, align 4
  %238 = load i32, i32* @LW_EXCLUSIVE, align 4
  %239 = call i32 @LWLockAcquire(i32 %237, i32 %238)
  %240 = call i32 (...) @AcceptInvalidationMessages()
  %241 = load i64, i64* @relcacheInvalsReceived, align 8
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = call i64 @rename(i8* %17, i8* %20)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = call i32 @unlink(i8* %17)
  br label %248

248:                                              ; preds = %246, %243
  br label %251

249:                                              ; preds = %236
  %250 = call i32 @unlink(i8* %17)
  br label %251

251:                                              ; preds = %249, %248
  %252 = load i32, i32* @RelCacheInitLock, align 4
  %253 = call i32 @LWLockRelease(i32 %252)
  store i32 0, i32* %11, align 4
  br label %254

254:                                              ; preds = %251, %51, %23
  %255 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %255)
  %256 = load i32, i32* %11, align 4
  switch i32 %256, label %258 [
    i32 0, label %257
    i32 1, label %257
  ]

257:                                              ; preds = %254, %254
  ret void

258:                                              ; preds = %254
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32* @AllocateFile(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @errdetail(i8*) #2

declare dso_local i32 @fwrite(i32*, i32, i32, i32*) #2

declare dso_local i32 @elog(i32, i8*) #2

declare dso_local i32 @hash_seq_init(i32*, i32) #2

declare dso_local i64 @hash_seq_search(i32*) #2

declare dso_local i32 @RelationIdIsInInitFile(i32) #2

declare dso_local i32 @RelationGetRelid(%struct.TYPE_10__*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @write_item(%struct.TYPE_10__*, i32, i32*) #2

declare dso_local %struct.TYPE_10__* @TupleDescAttr(i32, i32) #2

declare dso_local i32 @VARSIZE(%struct.TYPE_10__*) #2

declare dso_local i64 @FreeFile(i32*) #2

declare dso_local i32 @LWLockAcquire(i32, i32) #2

declare dso_local i32 @AcceptInvalidationMessages(...) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @LWLockRelease(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
