; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_BeginCopyTo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_BeginCopyTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.stat = type { i32 }

@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_VIEW = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot copy from view \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Try the COPY (SELECT ...) TO variant.\00", align 1
@RELKIND_MATVIEW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot copy from materialized view \22%s\22\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot copy from foreign table \22%s\22\00", align 1
@RELKIND_SEQUENCE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"cannot copy from sequence \22%s\22\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"cannot copy from partitioned table \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"cannot copy from non-table relation \22%s\22\00", align 1
@whereToSendOutput = common dso_local global i64 0, align 8
@DestRemote = common dso_local global i64 0, align 8
@stdout = common dso_local global i32* null, align 8
@PG_BINARY_W = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"could not execute command \22%s\22: %m\00", align 1
@ERRCODE_INVALID_NAME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"relative path not allowed for COPY to file\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"could not open file \22%s\22 for writing: %m\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [123 x i8] c"COPY TO instructs the PostgreSQL server process to write a file. You may want a client-side facility such as psql's \\copy.\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\22%s\22 is a directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, %struct.TYPE_10__*, i32*, i32, i8*, i32, i32*, i32*)* @BeginCopyTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @BeginCopyTo(i32* %0, %struct.TYPE_10__* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.stat, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = icmp eq i8* %23, null
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %18, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %133

28:                                               ; preds = %8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RELKIND_RELATION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %133

36:                                               ; preds = %28
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RELKIND_VIEW, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %48)
  %50 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @ereport(i32 %45, i32 %51)
  br label %132

53:                                               ; preds = %36
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RELKIND_MATVIEW, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %65)
  %67 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %69 = call i32 @ereport(i32 %62, i32 %68)
  br label %131

70:                                               ; preds = %53
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load i32, i32* @ERROR, align 4
  %80 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %81 = call i32 @errcode(i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %83 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %82)
  %84 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %86 = call i32 @ereport(i32 %79, i32 %85)
  br label %130

87:                                               ; preds = %70
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RELKIND_SEQUENCE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %87
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %100 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %99)
  %101 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = call i32 @ereport(i32 %96, i32 %101)
  br label %129

103:                                              ; preds = %87
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %103
  %112 = load i32, i32* @ERROR, align 4
  %113 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %114 = call i32 @errcode(i32 %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %115)
  %117 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = call i32 @errhint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %119 = call i32 @ereport(i32 %112, i32 %118)
  br label %128

120:                                              ; preds = %103
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %123 = call i32 @errcode(i32 %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %125 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %124)
  %126 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = call i32 @ereport(i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %120, %111
  br label %129

129:                                              ; preds = %128, %95
  br label %130

130:                                              ; preds = %129, %78
  br label %131

131:                                              ; preds = %130, %61
  br label %132

132:                                              ; preds = %131, %44
  br label %133

133:                                              ; preds = %132, %28, %8
  %134 = load i32*, i32** %9, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = call %struct.TYPE_11__* @BeginCopy(i32* %134, i32 0, %struct.TYPE_10__* %135, i32* %136, i32 %137, i32* %138, i32* %139)
  store %struct.TYPE_11__* %140, %struct.TYPE_11__** %17, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @MemoryContextSwitchTo(i32 %143)
  store i32 %144, i32* %19, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %133
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i32 @Assert(i32 %151)
  %153 = load i64, i64* @whereToSendOutput, align 8
  %154 = load i64, i64* @DestRemote, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load i32*, i32** @stdout, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  store i32* %157, i32** %159, align 8
  br label %160

160:                                              ; preds = %156, %147
  br label %275

161:                                              ; preds = %133
  %162 = load i8*, i8** %13, align 8
  %163 = call i32 @pstrdup(i8* %162)
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %161
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PG_BINARY_W, align 4
  %176 = call i32* @OpenPipeStream(i32 %174, i32 %175)
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 2
  store i32* %176, i32** %178, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %171
  %184 = load i32, i32* @ERROR, align 4
  %185 = call i32 (...) @errcode_for_file_access()
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %188)
  %190 = call i32 @ereport(i32 %184, i32 %189)
  br label %191

191:                                              ; preds = %183, %171
  br label %274

192:                                              ; preds = %161
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @is_absolute_path(i8* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* @ERROR, align 4
  %198 = load i32, i32* @ERRCODE_INVALID_NAME, align 4
  %199 = call i32 @errcode(i32 %198)
  %200 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  %201 = call i32 @ereport(i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %196, %192
  %203 = load i32, i32* @S_IWGRP, align 4
  %204 = load i32, i32* @S_IWOTH, align 4
  %205 = or i32 %203, %204
  %206 = call i32 @umask(i32 %205)
  store i32 %206, i32* %20, align 4
  %207 = call i32 (...) @PG_TRY()
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @PG_BINARY_W, align 4
  %212 = call i32* @AllocateFile(i32 %210, i32 %211)
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 2
  store i32* %212, i32** %214, align 8
  %215 = call i32 (...) @PG_FINALLY()
  %216 = load i32, i32* %20, align 4
  %217 = call i32 @umask(i32 %216)
  %218 = call i32 (...) @PG_END_TRY()
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %244

223:                                              ; preds = %202
  %224 = load i32, i32* @errno, align 4
  store i32 %224, i32* %22, align 4
  %225 = load i32, i32* @ERROR, align 4
  %226 = call i32 (...) @errcode_for_file_access()
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* %22, align 4
  %232 = load i32, i32* @ENOENT, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %238, label %234

234:                                              ; preds = %223
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* @EACCES, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %234, %223
  %239 = call i32 @errhint(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.10, i64 0, i64 0))
  br label %241

240:                                              ; preds = %234
  br label %241

241:                                              ; preds = %240, %238
  %242 = phi i32 [ %239, %238 ], [ 0, %240 ]
  %243 = call i32 @ereport(i32 %225, i32 %242)
  br label %244

244:                                              ; preds = %241, %202
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @fileno(i32* %247)
  %249 = call i64 @fstat(i32 %248, %struct.stat* %21)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %244
  %252 = load i32, i32* @ERROR, align 4
  %253 = call i32 (...) @errcode_for_file_access()
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %256)
  %258 = call i32 @ereport(i32 %252, i32 %257)
  br label %259

259:                                              ; preds = %251, %244
  %260 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @S_ISDIR(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %259
  %265 = load i32, i32* @ERROR, align 4
  %266 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %267 = call i32 @errcode(i32 %266)
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %270)
  %272 = call i32 @ereport(i32 %265, i32 %271)
  br label %273

273:                                              ; preds = %264, %259
  br label %274

274:                                              ; preds = %273, %191
  br label %275

275:                                              ; preds = %274, %160
  %276 = load i32, i32* %19, align 4
  %277 = call i32 @MemoryContextSwitchTo(i32 %276)
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  ret %struct.TYPE_11__* %278
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_10__*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local %struct.TYPE_11__* @BeginCopy(i32*, i32, %struct.TYPE_10__*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32* @OpenPipeStream(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @is_absolute_path(i8*) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32* @AllocateFile(i32, i32) #1

declare dso_local i32 @PG_FINALLY(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
