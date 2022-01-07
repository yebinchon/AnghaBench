; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_PrintTOCSummary.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_PrintTOCSummary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__*, i32, i32, i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i64, i64, i32*, i32, %struct.TYPE_14__, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64, i64 }

@PGDUMP_STRFTIME_FMT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c";\0A; Archive created at %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c";     dbname: %s\0A;     TOC Entries: %d\0A;     Compression: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CUSTOM\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DIRECTORY\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"TAR\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c";     Dump Version: %d.%d-%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c";     Format: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c";     Integer: %d bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c";     Offset: %d bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c";     Dumped from database version: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c";     Dumped by pg_dump version: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c";\0A;\0A; Selected TOC Entries:\0A;\0A\00", align 1
@SECTION_PRE_DATA = common dso_local global i64 0, align 8
@SECTION_NONE = common dso_local global i64 0, align 8
@REQ_SCHEMA = common dso_local global i32 0, align 4
@REQ_DATA = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"%d; %u %u %s %s %s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c";\09depends on:\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintTOCSummary(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %3, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 11
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %4, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %21 = call i32 @SaveOutput(%struct.TYPE_17__* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @SetOutput(%struct.TYPE_17__* %27, i64 %30, i32 0)
  br label %32

32:                                               ; preds = %26, %1
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %34 = load i32, i32* @PGDUMP_STRFTIME_FMT, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 10
  %37 = call i32 @localtime(i32* %36)
  %38 = call i64 @strftime(i8* %33, i32 64, i32 %34, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %42 = call i32 @strcpy(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %46 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @sanitize_line(i32 %50, i32 0)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %47, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %51, i32 %54, i32 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %65 [
    i32 130, label %62
    i32 129, label %63
    i32 128, label %64
  ]

62:                                               ; preds = %43
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %66

63:                                               ; preds = %43
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %66

64:                                               ; preds = %43
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %66

65:                                               ; preds = %43
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %66

66:                                               ; preds = %65, %64, %63, %62
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ARCHIVE_MAJOR(i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ARCHIVE_MINOR(i32 %74)
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ARCHIVE_REV(i32 %78)
  %80 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %71, i32 %75, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %84, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %90, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %66
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %101, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %100, %66
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %111, %106
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %120 = load i64, i64* @SECTION_PRE_DATA, align 8
  store i64 %120, i64* %6, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 9
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %5, align 8
  br label %126

126:                                              ; preds = %232, %117
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = icmp ne %struct.TYPE_15__* %127, %130
  br i1 %131, label %132, label %236

132:                                              ; preds = %126
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @SECTION_NONE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %132
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %6, align 8
  br label %142

142:                                              ; preds = %138, %132
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = call i32 @_tocEntryRequired(%struct.TYPE_15__* %148, i64 %149, %struct.TYPE_17__* %150)
  %152 = load i32, i32* @REQ_SCHEMA, align 4
  %153 = load i32, i32* @REQ_DATA, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %151, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %195

157:                                              ; preds = %147, %142
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @sanitize_line(i32 %160, i32 0)
  store i8* %161, i8** %10, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @sanitize_line(i32 %164, i32 1)
  store i8* %165, i8** %11, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @sanitize_line(i32 %168, i32 0)
  store i8* %169, i8** %12, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = load i8*, i8** %12, align 8
  %188 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %173, i32 %177, i32 %181, i32 %184, i8* %185, i8* %186, i8* %187)
  %189 = load i8*, i8** %10, align 8
  %190 = call i32 @free(i8* %189)
  %191 = load i8*, i8** %11, align 8
  %192 = call i32 @free(i8* %191)
  %193 = load i8*, i8** %12, align 8
  %194 = call i32 @free(i8* %193)
  br label %195

195:                                              ; preds = %157, %147
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %231

200:                                              ; preds = %195
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %205, label %231

205:                                              ; preds = %200
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %207 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %206, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %208

208:                                              ; preds = %225, %205
  %209 = load i32, i32* %13, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp slt i64 %210, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %208
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %216, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %208

228:                                              ; preds = %208
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %230 = call i32 (%struct.TYPE_17__*, i8*, ...) @ahprintf(%struct.TYPE_17__* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %200, %195
  br label %232

232:                                              ; preds = %231
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 9
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  store %struct.TYPE_15__* %235, %struct.TYPE_15__** %5, align 8
  br label %126

236:                                              ; preds = %126
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = call i32 @StrictNamesCheck(%struct.TYPE_16__* %242)
  br label %244

244:                                              ; preds = %241, %236
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %251 = load i32, i32* %7, align 4
  %252 = call i32 @RestoreOutput(%struct.TYPE_17__* %250, i32 %251)
  br label %253

253:                                              ; preds = %249, %244
  ret void
}

declare dso_local i32 @SaveOutput(%struct.TYPE_17__*) #1

declare dso_local i32 @SetOutput(%struct.TYPE_17__*, i64, i32) #1

declare dso_local i64 @strftime(i8*, i32, i32, i32) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ahprintf(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local i8* @sanitize_line(i32, i32) #1

declare dso_local i32 @ARCHIVE_MAJOR(i32) #1

declare dso_local i32 @ARCHIVE_MINOR(i32) #1

declare dso_local i32 @ARCHIVE_REV(i32) #1

declare dso_local i32 @_tocEntryRequired(%struct.TYPE_15__*, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @StrictNamesCheck(%struct.TYPE_16__*) #1

declare dso_local i32 @RestoreOutput(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
