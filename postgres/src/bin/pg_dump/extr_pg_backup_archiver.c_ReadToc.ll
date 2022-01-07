; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ReadToc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_ReadToc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, %struct.TYPE_16__*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i64, i8*, i8*, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { i8, i8 }

@.str = private unnamed_addr constant [50 x i8] c"entry ID %d out of range -- perhaps a corrupt TOC\00", align 1
@K_VERS_1_8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@InvalidOid = common dso_local global i8 0, align 1
@K_VERS_1_11 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ACL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ACL LANGUAGE\00", align 1
@SECTION_NONE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"TABLE DATA\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"BLOBS\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"BLOB COMMENTS\00", align 1
@SECTION_DATA = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"CONSTRAINT\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CHECK CONSTRAINT\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"FK CONSTRAINT\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"INDEX\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"RULE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"TRIGGER\00", align 1
@SECTION_POST_DATA = common dso_local global i8* null, align 8
@SECTION_PRE_DATA = common dso_local global i8* null, align 8
@K_VERS_1_3 = common dso_local global i64 0, align 8
@K_VERS_1_6 = common dso_local global i64 0, align 8
@K_VERS_1_10 = common dso_local global i64 0, align 8
@K_VERS_1_14 = common dso_local global i64 0, align 8
@K_VERS_1_9 = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"restoring tables WITH OIDS is not supported anymore\00", align 1
@K_VERS_1_5 = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"read TOC entry %d (ID %d) for %s %s\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"ENCODING\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"STDSTRINGS\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"SEARCHPATH\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadToc(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = call i8* @ReadInt(%struct.TYPE_17__* %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %422, %1
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %425

22:                                               ; preds = %16
  %23 = call i64 @pg_malloc0(i32 144)
  %24 = inttoptr i64 %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %26 = call i8* @ReadInt(%struct.TYPE_17__* %25)
  %27 = ptrtoint i8* %26 to i64
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %22
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @fatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %55 = call i8* @ReadInt(%struct.TYPE_17__* %54)
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 17
  store i8* %55, i8** %57, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @K_VERS_1_8, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %65 = call i8* @ReadStr(%struct.TYPE_17__* %64)
  store i8* %65, i8** %4, align 8
  %66 = load i8*, i8** %4, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 16
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = call i32 @sscanf(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @free(i8* %71)
  br label %78

73:                                               ; preds = %53
  %74 = load i8, i8* @InvalidOid, align 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 16
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  store i8 %74, i8* %77, align 8
  br label %78

78:                                               ; preds = %73, %63
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %80 = call i8* @ReadStr(%struct.TYPE_17__* %79)
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 16
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = call i32 @sscanf(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load i8*, i8** %4, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %89 = call i8* @ReadStr(%struct.TYPE_17__* %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 6
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %93 = call i8* @ReadStr(%struct.TYPE_17__* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @K_VERS_1_11, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %78
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %103 = call i8* @ReadInt(%struct.TYPE_17__* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 15
  store i8* %103, i8** %105, align 8
  br label %197

106:                                              ; preds = %78
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @strcmp(i8* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118, %112, %106
  %125 = load i8*, i8** @SECTION_NONE, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 15
  store i8* %125, i8** %127, align 8
  br label %196

128:                                              ; preds = %118
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @strcmp(i8* %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %134
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140, %134, %128
  %147 = load i8*, i8** @SECTION_DATA, align 8
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 15
  store i8* %147, i8** %149, align 8
  br label %195

150:                                              ; preds = %140
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i64 @strcmp(i8* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %186, label %156

156:                                              ; preds = %150
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = call i64 @strcmp(i8* %159, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %186, label %162

162:                                              ; preds = %156
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %186, label %168

168:                                              ; preds = %162
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %168
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = call i64 @strcmp(i8* %183, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %180, %174, %168, %162, %156, %150
  %187 = load i8*, i8** @SECTION_POST_DATA, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 15
  store i8* %187, i8** %189, align 8
  br label %194

190:                                              ; preds = %180
  %191 = load i8*, i8** @SECTION_PRE_DATA, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 15
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %190, %186
  br label %195

195:                                              ; preds = %194, %146
  br label %196

196:                                              ; preds = %195, %124
  br label %197

197:                                              ; preds = %196, %101
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %199 = call i8* @ReadStr(%struct.TYPE_17__* %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 14
  store i8* %199, i8** %201, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %203 = call i8* @ReadStr(%struct.TYPE_17__* %202)
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 13
  store i8* %203, i8** %205, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @K_VERS_1_3, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %216

211:                                              ; preds = %197
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %213 = call i8* @ReadStr(%struct.TYPE_17__* %212)
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 12
  store i8* %213, i8** %215, align 8
  br label %216

216:                                              ; preds = %211, %197
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @K_VERS_1_6, align 8
  %221 = icmp sge i64 %219, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %216
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %224 = call i8* @ReadStr(%struct.TYPE_17__* %223)
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 11
  store i8* %224, i8** %226, align 8
  br label %227

227:                                              ; preds = %222, %216
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @K_VERS_1_10, align 8
  %232 = icmp sge i64 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %235 = call i8* @ReadStr(%struct.TYPE_17__* %234)
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 10
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %233, %227
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @K_VERS_1_14, align 8
  %243 = icmp sge i64 %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %238
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %246 = call i8* @ReadStr(%struct.TYPE_17__* %245)
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 9
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %244, %238
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %251 = call i8* @ReadStr(%struct.TYPE_17__* %250)
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 8
  store i8* %251, i8** %253, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @K_VERS_1_9, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %264, label %259

259:                                              ; preds = %249
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %261 = call i8* @ReadStr(%struct.TYPE_17__* %260)
  %262 = call i64 @strcmp(i8* %261, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %259, %249
  %265 = call i32 @pg_log_warning(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %259
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @K_VERS_1_5, align 8
  %271 = icmp sge i64 %269, %270
  br i1 %271, label %272, label %335

272:                                              ; preds = %266
  store i32 100, i32* %7, align 4
  %273 = load i32, i32* %7, align 4
  %274 = sext i32 %273 to i64
  %275 = mul i64 1, %274
  %276 = trunc i64 %275 to i32
  %277 = call i64 @pg_malloc(i32 %276)
  %278 = inttoptr i64 %277 to i8*
  store i8* %278, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %279

279:                                              ; preds = %299, %272
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %281 = call i8* @ReadStr(%struct.TYPE_17__* %280)
  store i8* %281, i8** %4, align 8
  %282 = load i8*, i8** %4, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  br label %310

285:                                              ; preds = %279
  %286 = load i32, i32* %6, align 4
  %287 = load i32, i32* %7, align 4
  %288 = icmp sge i32 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %285
  %290 = load i32, i32* %7, align 4
  %291 = mul nsw i32 %290, 2
  store i32 %291, i32* %7, align 4
  %292 = load i8*, i8** %5, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = mul i64 1, %294
  %296 = trunc i64 %295 to i32
  %297 = call i64 @pg_realloc(i8* %292, i32 %296)
  %298 = inttoptr i64 %297 to i8*
  store i8* %298, i8** %5, align 8
  br label %299

299:                                              ; preds = %289, %285
  %300 = load i8*, i8** %4, align 8
  %301 = load i8*, i8** %5, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = call i32 @sscanf(i8* %300, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %304)
  %306 = load i8*, i8** %4, align 8
  %307 = call i32 @free(i8* %306)
  %308 = load i32, i32* %6, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %6, align 4
  br label %279

310:                                              ; preds = %284
  %311 = load i32, i32* %6, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %327

313:                                              ; preds = %310
  %314 = load i8*, i8** %5, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sext i32 %315 to i64
  %317 = mul i64 1, %316
  %318 = trunc i64 %317 to i32
  %319 = call i64 @pg_realloc(i8* %314, i32 %318)
  %320 = inttoptr i64 %319 to i8*
  store i8* %320, i8** %5, align 8
  %321 = load i8*, i8** %5, align 8
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 2
  store i8* %321, i8** %323, align 8
  %324 = load i32, i32* %6, align 4
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 3
  store i32 %324, i32* %326, align 8
  br label %334

327:                                              ; preds = %310
  %328 = load i8*, i8** %5, align 8
  %329 = call i32 @free(i8* %328)
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 2
  store i8* null, i8** %331, align 8
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 3
  store i32 0, i32* %333, align 8
  br label %334

334:                                              ; preds = %327, %313
  br label %340

335:                                              ; preds = %266
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 2
  store i8* null, i8** %337, align 8
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 3
  store i32 0, i32* %339, align 8
  br label %340

340:                                              ; preds = %335, %334
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 7
  store i64 0, i64* %342, align 8
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 4
  %345 = load i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)** %344, align 8
  %346 = icmp ne i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)* %345, null
  br i1 %346, label %347, label %354

347:                                              ; preds = %340
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 4
  %350 = load i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_17__*, %struct.TYPE_16__*)** %349, align 8
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %353 = call i32 %350(%struct.TYPE_17__* %351, %struct.TYPE_16__* %352)
  br label %354

354:                                              ; preds = %347, %340
  %355 = load i32, i32* %3, align 4
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 1
  %361 = load i8*, i8** %360, align 8
  %362 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 6
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @pg_log_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 %355, i64 %358, i8* %361, i8* %364)
  %366 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 3
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 5
  %370 = load %struct.TYPE_16__*, %struct.TYPE_16__** %369, align 8
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 5
  store %struct.TYPE_16__* %370, %struct.TYPE_16__** %372, align 8
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 3
  %376 = load %struct.TYPE_16__*, %struct.TYPE_16__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 5
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 4
  store %struct.TYPE_16__* %373, %struct.TYPE_16__** %379, align 8
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %381 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %381, i32 0, i32 3
  %383 = load %struct.TYPE_16__*, %struct.TYPE_16__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %383, i32 0, i32 5
  store %struct.TYPE_16__* %380, %struct.TYPE_16__** %384, align 8
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 3
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %386, align 8
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i32 0, i32 4
  store %struct.TYPE_16__* %387, %struct.TYPE_16__** %389, align 8
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = call i64 @strcmp(i8* %392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %354
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %398 = call i32 @processEncodingEntry(%struct.TYPE_17__* %396, %struct.TYPE_16__* %397)
  br label %421

399:                                              ; preds = %354
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 1
  %402 = load i8*, i8** %401, align 8
  %403 = call i64 @strcmp(i8* %402, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %404 = icmp eq i64 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %399
  %406 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %408 = call i32 @processStdStringsEntry(%struct.TYPE_17__* %406, %struct.TYPE_16__* %407)
  br label %420

409:                                              ; preds = %399
  %410 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %411 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = call i64 @strcmp(i8* %412, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %409
  %416 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %417 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %418 = call i32 @processSearchPathEntry(%struct.TYPE_17__* %416, %struct.TYPE_16__* %417)
  br label %419

419:                                              ; preds = %415, %409
  br label %420

420:                                              ; preds = %419, %405
  br label %421

421:                                              ; preds = %420, %395
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %3, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %3, align 4
  br label %16

425:                                              ; preds = %16
  ret void
}

declare dso_local i8* @ReadInt(%struct.TYPE_17__*) #1

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i32 @fatal(i8*, i64) #1

declare dso_local i8* @ReadStr(%struct.TYPE_17__*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pg_log_warning(i8*) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @pg_realloc(i8*, i32) #1

declare dso_local i32 @pg_log_debug(i8*, i32, i64, i8*, i8*) #1

declare dso_local i32 @processEncodingEntry(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @processStdStringsEntry(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @processSearchPathEntry(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
