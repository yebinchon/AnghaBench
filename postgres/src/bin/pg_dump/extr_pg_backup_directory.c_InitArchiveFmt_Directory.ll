; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c_InitArchiveFmt_Directory.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_directory.c_InitArchiveFmt_Directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i64, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i64, i32* }
%struct.stat = type { i32 }
%struct.dirent = type { i64 }

@_ArchiveEntry = common dso_local global i32 0, align 4
@_StartData = common dso_local global i32 0, align 4
@_WriteData = common dso_local global i32 0, align 4
@_EndData = common dso_local global i32 0, align 4
@_WriteByte = common dso_local global i32 0, align 4
@_ReadByte = common dso_local global i32 0, align 4
@_WriteBuf = common dso_local global i32 0, align 4
@_ReadBuf = common dso_local global i32 0, align 4
@_CloseArchive = common dso_local global i32 0, align 4
@_ReopenArchive = common dso_local global i32 0, align 4
@_PrintTocData = common dso_local global i32 0, align 4
@_ReadExtraToc = common dso_local global i32 0, align 4
@_WriteExtraToc = common dso_local global i32 0, align 4
@_PrintExtraToc = common dso_local global i32 0, align 4
@_StartBlobs = common dso_local global i32 0, align 4
@_StartBlob = common dso_local global i32 0, align 4
@_EndBlob = common dso_local global i32 0, align 4
@_EndBlobs = common dso_local global i32 0, align 4
@_PrepParallelRestore = common dso_local global i32 0, align 4
@_Clone = common dso_local global i32 0, align 4
@_DeClone = common dso_local global i32 0, align 4
@_WorkerJobRestoreDirectory = common dso_local global i32 0, align 4
@_WorkerJobDumpDirectory = common dso_local global i32 0, align 4
@LOBBUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"no output directory specified\00", align 1
@archModeWrite = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"could not read directory \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"could not close directory \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"could not create directory \22%s\22: %m\00", align 1
@MAXPGPATH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"toc.dat\00", align 1
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"could not open input file \22%s\22: %m\00", align 1
@archTar = common dso_local global i32 0, align 4
@archDirectory = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"could not close TOC file: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitArchiveFmt_Directory(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.stat, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %11 = load i32, i32* @_ArchiveEntry, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 28
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @_StartData, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 27
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @_WriteData, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 26
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @_EndData, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 25
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @_WriteByte, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 24
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @_ReadByte, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 23
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @_WriteBuf, align 4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 22
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @_ReadBuf, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 21
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @_CloseArchive, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 20
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @_ReopenArchive, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 19
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @_PrintTocData, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 18
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @_ReadExtraToc, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 17
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @_WriteExtraToc, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 16
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @_PrintExtraToc, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 15
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @_StartBlobs, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 14
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @_StartBlob, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 13
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @_EndBlob, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 12
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @_EndBlobs, align 4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 11
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @_PrepParallelRestore, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 10
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @_Clone, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @_DeClone, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @_WorkerJobRestoreDirectory, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @_WorkerJobDumpDirectory, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 8
  %80 = call i64 @pg_malloc0(i32 24)
  %81 = inttoptr i64 %80 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %3, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = bitcast %struct.TYPE_7__* %82 to i8*
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32* null, i32** %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  %90 = load i32, i32* @LOBBUFSIZE, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @LOBBUFSIZE, align 4
  %94 = call i64 @pg_malloc(i32 %93)
  %95 = inttoptr i64 %94 to i8*
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @strcmp(i64 %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102, %1
  %109 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %102
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @archModeWrite, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %192

121:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @stat(i64 %124, %struct.stat* %4)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %177

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @S_ISDIR(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %177

132:                                              ; preds = %127
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32* @opendir(i64 %135)
  store i32* %136, i32** %6, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %176

139:                                              ; preds = %132
  store i32 1, i32* %5, align 4
  br label %140

140:                                              ; preds = %157, %139
  store i64 0, i64* @errno, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call %struct.dirent* @readdir(i32* %141)
  store %struct.dirent* %142, %struct.dirent** %7, align 8
  %143 = icmp ne %struct.dirent* %142, null
  br i1 %143, label %144, label %158

144:                                              ; preds = %140
  %145 = load %struct.dirent*, %struct.dirent** %7, align 8
  %146 = getelementptr inbounds %struct.dirent, %struct.dirent* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @strcmp(i64 %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load %struct.dirent*, %struct.dirent** %7, align 8
  %152 = getelementptr inbounds %struct.dirent, %struct.dirent* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @strcmp(i64 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  store i32 0, i32* %5, align 4
  br label %158

157:                                              ; preds = %150, %144
  br label %140

158:                                              ; preds = %156, %140
  %159 = load i64, i64* @errno, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %164)
  br label %166

166:                                              ; preds = %161, %158
  %167 = load i32*, i32** %6, align 8
  %168 = call i64 @closedir(i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %166
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %173)
  br label %175

175:                                              ; preds = %170, %166
  br label %176

176:                                              ; preds = %175, %132
  br label %177

177:                                              ; preds = %176, %127, %121
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %191, label %180

180:                                              ; preds = %177
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @mkdir(i64 %183, i32 448)
  %185 = icmp slt i64 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i64 %189)
  br label %191

191:                                              ; preds = %186, %180, %177
  br label %228

192:                                              ; preds = %110
  %193 = load i32, i32* @MAXPGPATH, align 4
  %194 = zext i32 %193 to i64
  %195 = call i8* @llvm.stacksave()
  store i8* %195, i8** %8, align 8
  %196 = alloca i8, i64 %194, align 16
  store i64 %194, i64* %9, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %198 = call i32 @setFilePath(%struct.TYPE_8__* %197, i8* %196, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %199 = load i32, i32* @PG_BINARY_R, align 4
  %200 = call i32* @cfopen_read(i8* %196, i32 %199)
  store i32* %200, i32** %10, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %205

203:                                              ; preds = %192
  %204 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8* %196)
  br label %205

205:                                              ; preds = %203, %192
  %206 = load i32*, i32** %10, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  store i32* %206, i32** %208, align 8
  %209 = load i32, i32* @archTar, align 4
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %213 = call i32 @ReadHead(%struct.TYPE_8__* %212)
  %214 = load i32, i32* @archDirectory, align 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %218 = call i32 @ReadToc(%struct.TYPE_8__* %217)
  %219 = load i32*, i32** %10, align 8
  %220 = call i64 @cfclose(i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %205
  %223 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %224

224:                                              ; preds = %222, %205
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  store i32* null, i32** %226, align 8
  %227 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %227)
  br label %228

228:                                              ; preds = %224, %191
  ret void
}

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @stat(i64, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32* @opendir(i64) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @closedir(i32*) #1

declare dso_local i64 @mkdir(i64, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @setFilePath(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32* @cfopen_read(i8*, i32) #1

declare dso_local i32 @ReadHead(%struct.TYPE_8__*) #1

declare dso_local i32 @ReadToc(%struct.TYPE_8__*) #1

declare dso_local i64 @cfclose(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
