; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c_InitArchiveFmt_Tar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_tar.c_InitArchiveFmt_Tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i8*, i32, i8*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32*, i8*, i64, i64, i64 }

@_ArchiveEntry = common dso_local global i32 0, align 4
@_StartData = common dso_local global i32 0, align 4
@_WriteData = common dso_local global i32 0, align 4
@_EndData = common dso_local global i32 0, align 4
@_WriteByte = common dso_local global i32 0, align 4
@_ReadByte = common dso_local global i32 0, align 4
@_WriteBuf = common dso_local global i32 0, align 4
@_ReadBuf = common dso_local global i32 0, align 4
@_CloseArchive = common dso_local global i32 0, align 4
@_PrintTocData = common dso_local global i32 0, align 4
@_ReadExtraToc = common dso_local global i32 0, align 4
@_WriteExtraToc = common dso_local global i32 0, align 4
@_PrintExtraToc = common dso_local global i32 0, align 4
@_StartBlobs = common dso_local global i32 0, align 4
@_StartBlob = common dso_local global i32 0, align 4
@_EndBlob = common dso_local global i32 0, align 4
@_EndBlobs = common dso_local global i32 0, align 4
@LOBBUFSIZE = common dso_local global i32 0, align 4
@archModeWrite = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PG_BINARY_W = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"could not open TOC file \22%s\22 for output: %m\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"could not open TOC file for output: %m\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"compression is not supported by tar archive format\00", align 1
@PG_BINARY_R = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"could not open TOC file \22%s\22 for input: %m\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"could not open TOC file for input: %m\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"toc.dat\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitArchiveFmt_Tar(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load i32, i32* @_ArchiveEntry, align 4
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 28
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @_StartData, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 27
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @_WriteData, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 26
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @_EndData, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 25
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @_WriteByte, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 24
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @_ReadByte, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 23
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @_WriteBuf, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 22
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @_ReadBuf, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 21
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @_CloseArchive, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 19
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @_PrintTocData, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 18
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @_ReadExtraToc, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 17
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @_WriteExtraToc, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 16
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @_PrintExtraToc, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @_StartBlobs, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 14
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @_StartBlob, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 13
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @_EndBlob, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 12
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @_EndBlobs, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 10
  store i32* null, i32** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 9
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 8
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 7
  store i32* null, i32** %64, align 8
  %65 = call i64 @pg_malloc0(i32 48)
  %66 = inttoptr i64 %65 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %3, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = bitcast %struct.TYPE_8__* %67 to i8*
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @LOBBUFSIZE, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @LOBBUFSIZE, align 4
  %79 = call i64 @pg_malloc(i32 %78)
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @archModeWrite, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %145

88:                                               ; preds = %1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %88
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @strcmp(i64 %96, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %93
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @PG_BINARY_W, align 4
  %104 = call i8* @fopen(i64 %102, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %112, %99
  br label %129

118:                                              ; preds = %93, %88
  %119 = load i32*, i32** @stdout, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  store i32* %119, i32** %121, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %118
  br label %129

129:                                              ; preds = %128, %117
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = call i8* @checkSeek(i32* %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %129
  %143 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142, %129
  br label %211

145:                                              ; preds = %1
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %175

150:                                              ; preds = %145
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @strcmp(i64 %153, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %150
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @PG_BINARY_R, align 4
  %161 = call i8* @fopen(i64 %159, i32 %160)
  %162 = bitcast i8* %161 to i32*
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  store i32* %162, i32** %164, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %156
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %172)
  br label %174

174:                                              ; preds = %169, %156
  br label %186

175:                                              ; preds = %150, %145
  %176 = load i32*, i32** @stdin, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  store i32* %176, i32** %178, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %175
  %184 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %175
  br label %186

186:                                              ; preds = %185, %174
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  store i64 0, i64* %188, align 8
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i8* @checkSeek(i32* %191)
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  store i64 0, i64* %196, align 8
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %198 = call i64 @tarOpen(%struct.TYPE_9__* %197, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8 signext 114)
  %199 = inttoptr i64 %198 to i8*
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  store i8* %199, i8** %201, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %203 = call i32 @ReadHead(%struct.TYPE_9__* %202)
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %205 = call i32 @ReadToc(%struct.TYPE_9__* %204)
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @tarClose(%struct.TYPE_9__* %206, i8* %209)
  br label %211

211:                                              ; preds = %186, %144
  ret void
}

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i8* @fopen(i64, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @checkSeek(i32*) #1

declare dso_local i64 @tarOpen(%struct.TYPE_9__*, i8*, i8 signext) #1

declare dso_local i32 @ReadHead(%struct.TYPE_9__*) #1

declare dso_local i32 @ReadToc(%struct.TYPE_9__*) #1

declare dso_local i32 @tarClose(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
