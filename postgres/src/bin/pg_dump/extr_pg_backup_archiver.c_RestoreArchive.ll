; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_RestoreArchive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_RestoreArchive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32, i64 }
%struct.TYPE_46__ = type { i64, i64, i32, %struct.TYPE_43__, i32, i32*, %struct.TYPE_42__*, i32 (%struct.TYPE_46__*)*, i32*, %struct.TYPE_42__*, i32, i64, i64, i32*, i32*, i32 (%struct.TYPE_46__*)*, i32* }
%struct.TYPE_43__ = type { i32, i64, %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_42__ = type { i32, i8*, i8*, %struct.TYPE_42__*, %struct.TYPE_41__, i32, i32, %struct.TYPE_42__*, i64 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_45__ = type { i32 }

@STAGE_INITIALIZING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"parallel restore is not supported with this archive file format\00", align 1
@K_VERS_1_8 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"parallel restore is not supported with archives made by pre-8.0 pg_dump\00", align 1
@REQ_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [88 x i8] c"cannot restore from compressed archive (compression not supported in this installation)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"connecting to database for restore\00", align 1
@K_VERS_1_3 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"direct database connections are not supported in pre-1.3 archives\00", align 1
@REQ_SCHEMA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"implied data-only restore\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"--\0A-- PostgreSQL database dump\0A--\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"-- Dumped from database version %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"-- Dumped by pg_dump version %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Started on\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"BEGIN;\0A\0A\00", align 1
@STAGE_PROCESSING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"DATABASE\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"DATABASE PROPERTIES\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"dropping %s %s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"BLOB\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ALTER TABLE\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"ALTER TABLE IF EXISTS\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"CREATE OR REPLACE VIEW\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"CONSTRAINT\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"CHECK CONSTRAINT\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"FK CONSTRAINT\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"DROP CONSTRAINT\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"DROP %s\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"%s%s IF EXISTS%s\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"could not find where to insert IF EXISTS in statement \22%s\22\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"COMMIT;\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Completed on\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"--\0A-- PostgreSQL database dump complete\0A--\0A\0A\00", align 1
@STAGE_FINALIZING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RestoreArchive(%struct.TYPE_47__* %0) #0 {
  %2 = alloca %struct.TYPE_47__*, align 8
  %3 = alloca %struct.TYPE_46__*, align 8
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_42__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_45__*, align 8
  %12 = alloca [40 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_42__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_47__* %0, %struct.TYPE_47__** %2, align 8
  %18 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %19 = bitcast %struct.TYPE_47__* %18 to %struct.TYPE_46__*
  store %struct.TYPE_46__* %19, %struct.TYPE_46__** %3, align 8
  %20 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_44__*, %struct.TYPE_44__** %22, align 8
  store %struct.TYPE_44__* %23, %struct.TYPE_44__** %4, align 8
  %24 = load i32, i32* @STAGE_INITIALIZING, align 4
  %25 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %1
  %38 = phi i1 [ false, %1 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %43, i32 0, i32 16
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %48, i32 0, i32 15
  %50 = load i32 (%struct.TYPE_46__*)*, i32 (%struct.TYPE_46__*)** %49, align 8
  %51 = icmp eq i32 (%struct.TYPE_46__*)* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %42
  %53 = call i32 @fatal(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @K_VERS_1_8, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @fatal(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  %63 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %63, i32 0, i32 15
  %65 = load i32 (%struct.TYPE_46__*)*, i32 (%struct.TYPE_46__*)** %64, align 8
  %66 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %67 = call i32 %65(%struct.TYPE_46__* %66)
  br label %68

68:                                               ; preds = %62, %37
  %69 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %110

73:                                               ; preds = %68
  %74 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %74, i32 0, i32 14
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %110

78:                                               ; preds = %73
  %79 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_42__*, %struct.TYPE_42__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_42__*, %struct.TYPE_42__** %82, align 8
  store %struct.TYPE_42__* %83, %struct.TYPE_42__** %6, align 8
  br label %84

84:                                               ; preds = %105, %78
  %85 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %86 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_42__*, %struct.TYPE_42__** %87, align 8
  %89 = icmp ne %struct.TYPE_42__* %85, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @REQ_DATA, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 @fatal(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95, %90
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_42__*, %struct.TYPE_42__** %107, align 8
  store %struct.TYPE_42__* %108, %struct.TYPE_42__** %6, align 8
  br label %84

109:                                              ; preds = %84
  br label %110

110:                                              ; preds = %109, %73, %68
  %111 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %111, i32 0, i32 13
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %117 = call i32 @buildTocEntryArrays(%struct.TYPE_46__* %116)
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %156

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @K_VERS_1_3, align 8
  %129 = icmp slt i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = call i32 @fatal(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %123
  %133 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %135, i32 0, i32 0
  store i32 9999999, i32* %136, align 8
  %137 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %138 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %138, i32 0, i32 12
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @ConnectDatabase(%struct.TYPE_47__* %137, i32 %140, i32 %143, i32 %146, i32 %149, i32 %152)
  %154 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %132, %118
  %157 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %195, label %161

161:                                              ; preds = %156
  store i32 1, i32* %8, align 4
  %162 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %162, i32 0, i32 6
  %164 = load %struct.TYPE_42__*, %struct.TYPE_42__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_42__*, %struct.TYPE_42__** %165, align 8
  store %struct.TYPE_42__* %166, %struct.TYPE_42__** %6, align 8
  br label %167

167:                                              ; preds = %182, %161
  %168 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %169 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %169, i32 0, i32 6
  %171 = load %struct.TYPE_42__*, %struct.TYPE_42__** %170, align 8
  %172 = icmp ne %struct.TYPE_42__* %168, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %167
  %174 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @REQ_SCHEMA, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i32 0, i32* %8, align 4
  br label %186

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181
  %183 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_42__*, %struct.TYPE_42__** %184, align 8
  store %struct.TYPE_42__* %185, %struct.TYPE_42__** %6, align 8
  br label %167

186:                                              ; preds = %180, %167
  %187 = load i32, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = load i32, i32* %8, align 4
  %191 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %194

194:                                              ; preds = %189, %186
  br label %195

195:                                              ; preds = %194, %156
  %196 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %197 = call i32 @SaveOutput(%struct.TYPE_46__* %196)
  store i32 %197, i32* %7, align 4
  %198 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %195
  %203 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %202, %195
  %208 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %209 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @SetOutput(%struct.TYPE_46__* %208, i64 %211, i64 %214)
  br label %216

216:                                              ; preds = %207, %202
  %217 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %218 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %217, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %219 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %219, i32 0, i32 12
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %225 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %225, i32 0, i32 12
  %227 = load i64, i64* %226, align 8
  %228 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %224, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %223, %216
  %230 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %230, i32 0, i32 11
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %229
  %235 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %236 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %236, i32 0, i32 11
  %238 = load i64, i64* %237, align 8
  %239 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %235, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i64 %238)
  br label %240

240:                                              ; preds = %234, %229
  %241 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %242 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %243 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %240
  %249 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %250 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %250, i32 0, i32 10
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @dumpTimestamp(%struct.TYPE_46__* %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %248, %240
  %255 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %271

259:                                              ; preds = %254
  %260 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %259
  %265 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %266 = call i32 @StartTransaction(%struct.TYPE_47__* %265)
  br label %270

267:                                              ; preds = %259
  %268 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %269 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %268, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %270

270:                                              ; preds = %267, %264
  br label %271

271:                                              ; preds = %270, %254
  %272 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %273 = call i32 @_doSetFixedOutputState(%struct.TYPE_46__* %272)
  %274 = load i32, i32* @STAGE_PROCESSING, align 4
  %275 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 8
  %277 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %277, i32 0, i32 7
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %492

281:                                              ; preds = %271
  %282 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %282, i32 0, i32 6
  %284 = load %struct.TYPE_42__*, %struct.TYPE_42__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %284, i32 0, i32 7
  %286 = load %struct.TYPE_42__*, %struct.TYPE_42__** %285, align 8
  store %struct.TYPE_42__* %286, %struct.TYPE_42__** %6, align 8
  br label %287

287:                                              ; preds = %475, %281
  %288 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %289 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %289, i32 0, i32 6
  %291 = load %struct.TYPE_42__*, %struct.TYPE_42__** %290, align 8
  %292 = icmp ne %struct.TYPE_42__* %288, %291
  br i1 %292, label %293, label %479

293:                                              ; preds = %287
  %294 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %295 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %295, i32 0, i32 9
  store %struct.TYPE_42__* %294, %struct.TYPE_42__** %296, align 8
  %297 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %297, i32 0, i32 6
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %315

301:                                              ; preds = %293
  %302 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = call i64 @strcmp(i8* %304, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %301
  %308 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = call i64 @strcmp(i8* %310, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %307
  br label %475

314:                                              ; preds = %307, %301
  br label %315

315:                                              ; preds = %314, %293
  %316 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @REQ_SCHEMA, align 4
  %320 = load i32, i32* @REQ_DATA, align 4
  %321 = or i32 %319, %320
  %322 = and i32 %318, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %474

324:                                              ; preds = %315
  %325 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %325, i32 0, i32 2
  %327 = load i8*, i8** %326, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %474

329:                                              ; preds = %324
  %330 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %334 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = call i32 (i8*, ...) @pg_log_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* %332, i32 %335)
  %337 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %338 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %339 = call i32 @_becomeOwner(%struct.TYPE_46__* %337, %struct.TYPE_42__* %338)
  %340 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %341 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %341, i32 0, i32 5
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @_selectOutputSchema(%struct.TYPE_46__* %340, i32 %343)
  %345 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %345, i32 0, i32 2
  %347 = load i8*, i8** %346, align 8
  %348 = load i8, i8* %347, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %473

351:                                              ; preds = %329
  %352 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %362, label %356

356:                                              ; preds = %351
  %357 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %358 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %358, i32 0, i32 2
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %357, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* %360)
  br label %472

362:                                              ; preds = %351
  %363 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %363, i32 0, i32 1
  %365 = load i8*, i8** %364, align 8
  %366 = call i64 @strncmp(i8* %365, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %362
  %369 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %370 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 @DropBlobIfExists(%struct.TYPE_46__* %369, i32 %373)
  br label %471

375:                                              ; preds = %362
  %376 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %376, i32 0, i32 2
  %378 = load i8*, i8** %377, align 8
  %379 = call i8* @pg_strdup(i8* %378)
  store i8* %379, i8** %9, align 8
  %380 = load i8*, i8** %9, align 8
  store i8* %380, i8** %10, align 8
  %381 = call %struct.TYPE_45__* (...) @createPQExpBuffer()
  store %struct.TYPE_45__* %381, %struct.TYPE_45__** %11, align 8
  %382 = load i8*, i8** %9, align 8
  %383 = call i64 @strncmp(i8* %382, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 11)
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %375
  %386 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %387 = call i32 @appendPQExpBufferStr(%struct.TYPE_45__* %386, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %388 = load i8*, i8** %9, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 11
  store i8* %389, i8** %9, align 8
  br label %390

390:                                              ; preds = %385, %375
  %391 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %391, i32 0, i32 1
  %393 = load i8*, i8** %392, align 8
  %394 = call i64 @strcmp(i8* %393, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %406, label %396

396:                                              ; preds = %390
  %397 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %397, i32 0, i32 1
  %399 = load i8*, i8** %398, align 8
  %400 = call i64 @strcmp(i8* %399, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %406, label %402

402:                                              ; preds = %396
  %403 = load i8*, i8** %9, align 8
  %404 = call i64 @strncmp(i8* %403, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 22)
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %402, %396, %390
  %407 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %408 = load i8*, i8** %9, align 8
  %409 = call i32 @appendPQExpBufferStr(%struct.TYPE_45__* %407, i8* %408)
  br label %461

410:                                              ; preds = %402
  %411 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %411, i32 0, i32 1
  %413 = load i8*, i8** %412, align 8
  %414 = call i64 @strcmp(i8* %413, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %428, label %416

416:                                              ; preds = %410
  %417 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %417, i32 0, i32 1
  %419 = load i8*, i8** %418, align 8
  %420 = call i64 @strcmp(i8* %419, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %428, label %422

422:                                              ; preds = %416
  %423 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %424 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %423, i32 0, i32 1
  %425 = load i8*, i8** %424, align 8
  %426 = call i64 @strcmp(i8* %425, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %422, %416, %410
  %429 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %430 = call i32 @strcpy(i8* %429, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  br label %437

431:                                              ; preds = %422
  %432 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %433 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %433, i32 0, i32 1
  %435 = load i8*, i8** %434, align 8
  %436 = call i32 @snprintf(i8* %432, i32 40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8* %435)
  br label %437

437:                                              ; preds = %431, %428
  %438 = load i8*, i8** %9, align 8
  %439 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %440 = call i8* @strstr(i8* %438, i8* %439)
  store i8* %440, i8** %13, align 8
  %441 = load i8*, i8** %13, align 8
  %442 = icmp ne i8* %441, null
  br i1 %442, label %443, label %454

443:                                              ; preds = %437
  %444 = load i8*, i8** %13, align 8
  store i8 0, i8* %444, align 1
  %445 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %446 = load i8*, i8** %9, align 8
  %447 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %448 = load i8*, i8** %13, align 8
  %449 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %450 = call i32 @strlen(i8* %449)
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %448, i64 %451
  %453 = call i32 @appendPQExpBuffer(%struct.TYPE_45__* %445, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* %446, i8* %447, i8* %452)
  br label %460

454:                                              ; preds = %437
  %455 = load i8*, i8** %10, align 8
  %456 = call i32 @pg_log_warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i64 0, i64 0), i8* %455)
  %457 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %458 = load i8*, i8** %9, align 8
  %459 = call i32 @appendPQExpBufferStr(%struct.TYPE_45__* %457, i8* %458)
  br label %460

460:                                              ; preds = %454, %443
  br label %461

461:                                              ; preds = %460, %406
  %462 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %463 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %464 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %462, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32 %465)
  %467 = load %struct.TYPE_45__*, %struct.TYPE_45__** %11, align 8
  %468 = call i32 @destroyPQExpBuffer(%struct.TYPE_45__* %467)
  %469 = load i8*, i8** %10, align 8
  %470 = call i32 @pg_free(i8* %469)
  br label %471

471:                                              ; preds = %461, %368
  br label %472

472:                                              ; preds = %471, %356
  br label %473

473:                                              ; preds = %472, %329
  br label %474

474:                                              ; preds = %473, %324, %315
  br label %475

475:                                              ; preds = %474, %313
  %476 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %476, i32 0, i32 7
  %478 = load %struct.TYPE_42__*, %struct.TYPE_42__** %477, align 8
  store %struct.TYPE_42__* %478, %struct.TYPE_42__** %6, align 8
  br label %287

479:                                              ; preds = %287
  %480 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %480, i32 0, i32 8
  %482 = load i32*, i32** %481, align 8
  %483 = icmp ne i32* %482, null
  br i1 %483, label %484, label %489

484:                                              ; preds = %479
  %485 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %485, i32 0, i32 8
  %487 = load i32*, i32** %486, align 8
  %488 = call i32 @free(i32* %487)
  br label %489

489:                                              ; preds = %484, %479
  %490 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %491 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %490, i32 0, i32 8
  store i32* null, i32** %491, align 8
  br label %492

492:                                              ; preds = %489, %271
  %493 = load i32, i32* %5, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %532

495:                                              ; preds = %492
  %496 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %496, i32 0, i32 7
  %498 = load i32 (%struct.TYPE_46__*)*, i32 (%struct.TYPE_46__*)** %497, align 8
  %499 = icmp ne i32 (%struct.TYPE_46__*)* %498, null
  br i1 %499, label %500, label %506

500:                                              ; preds = %495
  %501 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %501, i32 0, i32 7
  %503 = load i32 (%struct.TYPE_46__*)*, i32 (%struct.TYPE_46__*)** %502, align 8
  %504 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %505 = call i32 %503(%struct.TYPE_46__* %504)
  br label %506

506:                                              ; preds = %500, %495
  %507 = call i32 @pending_list_header_init(%struct.TYPE_42__* %15)
  %508 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %509 = call i32 @restore_toc_entries_prefork(%struct.TYPE_46__* %508, %struct.TYPE_42__* %15)
  %510 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %510, i32 0, i32 5
  %512 = load i32*, i32** %511, align 8
  %513 = icmp eq i32* %512, null
  %514 = zext i1 %513 to i32
  %515 = call i32 @Assert(i32 %514)
  %516 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %517 = call i32* @ParallelBackupStart(%struct.TYPE_46__* %516)
  store i32* %517, i32** %14, align 8
  %518 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %519 = load i32*, i32** %14, align 8
  %520 = call i32 @restore_toc_entries_parallel(%struct.TYPE_46__* %518, i32* %519, %struct.TYPE_42__* %15)
  %521 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %522 = load i32*, i32** %14, align 8
  %523 = call i32 @ParallelBackupEnd(%struct.TYPE_46__* %521, i32* %522)
  %524 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %525 = call i32 @restore_toc_entries_postfork(%struct.TYPE_46__* %524, %struct.TYPE_42__* %15)
  %526 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %526, i32 0, i32 5
  %528 = load i32*, i32** %527, align 8
  %529 = icmp ne i32* %528, null
  %530 = zext i1 %529 to i32
  %531 = call i32 @Assert(i32 %530)
  br label %645

532:                                              ; preds = %492
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %533 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %533, i32 0, i32 6
  %535 = load %struct.TYPE_42__*, %struct.TYPE_42__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %535, i32 0, i32 3
  %537 = load %struct.TYPE_42__*, %struct.TYPE_42__** %536, align 8
  store %struct.TYPE_42__* %537, %struct.TYPE_42__** %6, align 8
  br label %538

538:                                              ; preds = %564, %532
  %539 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %540 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %540, i32 0, i32 6
  %542 = load %struct.TYPE_42__*, %struct.TYPE_42__** %541, align 8
  %543 = icmp ne %struct.TYPE_42__* %539, %542
  br i1 %543, label %544, label %568

544:                                              ; preds = %538
  %545 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %546 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = load i32, i32* @REQ_SCHEMA, align 4
  %549 = load i32, i32* @REQ_DATA, align 4
  %550 = or i32 %548, %549
  %551 = and i32 %547, %550
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %554

553:                                              ; preds = %544
  br label %564

554:                                              ; preds = %544
  %555 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %556 = call i32 @_tocEntryRestorePass(%struct.TYPE_42__* %555)
  switch i32 %556, label %563 [
    i32 129, label %557
    i32 130, label %561
    i32 128, label %562
  ]

557:                                              ; preds = %554
  %558 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %559 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %560 = call i32 @restore_toc_entry(%struct.TYPE_46__* %558, %struct.TYPE_42__* %559, i32 0)
  br label %563

561:                                              ; preds = %554
  store i32 1, i32* %16, align 4
  br label %563

562:                                              ; preds = %554
  store i32 1, i32* %17, align 4
  br label %563

563:                                              ; preds = %554, %562, %561, %557
  br label %564

564:                                              ; preds = %563, %553
  %565 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %566 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %565, i32 0, i32 3
  %567 = load %struct.TYPE_42__*, %struct.TYPE_42__** %566, align 8
  store %struct.TYPE_42__* %567, %struct.TYPE_42__** %6, align 8
  br label %538

568:                                              ; preds = %538
  %569 = load i32, i32* %16, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %606

571:                                              ; preds = %568
  %572 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %573 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %572, i32 0, i32 6
  %574 = load %struct.TYPE_42__*, %struct.TYPE_42__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %574, i32 0, i32 3
  %576 = load %struct.TYPE_42__*, %struct.TYPE_42__** %575, align 8
  store %struct.TYPE_42__* %576, %struct.TYPE_42__** %6, align 8
  br label %577

577:                                              ; preds = %601, %571
  %578 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %579 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %580 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %579, i32 0, i32 6
  %581 = load %struct.TYPE_42__*, %struct.TYPE_42__** %580, align 8
  %582 = icmp ne %struct.TYPE_42__* %578, %581
  br i1 %582, label %583, label %605

583:                                              ; preds = %577
  %584 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %585 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @REQ_SCHEMA, align 4
  %588 = load i32, i32* @REQ_DATA, align 4
  %589 = or i32 %587, %588
  %590 = and i32 %586, %589
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %600

592:                                              ; preds = %583
  %593 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %594 = call i32 @_tocEntryRestorePass(%struct.TYPE_42__* %593)
  %595 = icmp eq i32 %594, 130
  br i1 %595, label %596, label %600

596:                                              ; preds = %592
  %597 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %598 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %599 = call i32 @restore_toc_entry(%struct.TYPE_46__* %597, %struct.TYPE_42__* %598, i32 0)
  br label %600

600:                                              ; preds = %596, %592, %583
  br label %601

601:                                              ; preds = %600
  %602 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %603 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %602, i32 0, i32 3
  %604 = load %struct.TYPE_42__*, %struct.TYPE_42__** %603, align 8
  store %struct.TYPE_42__* %604, %struct.TYPE_42__** %6, align 8
  br label %577

605:                                              ; preds = %577
  br label %606

606:                                              ; preds = %605, %568
  %607 = load i32, i32* %17, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %644

609:                                              ; preds = %606
  %610 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %611 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %610, i32 0, i32 6
  %612 = load %struct.TYPE_42__*, %struct.TYPE_42__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %612, i32 0, i32 3
  %614 = load %struct.TYPE_42__*, %struct.TYPE_42__** %613, align 8
  store %struct.TYPE_42__* %614, %struct.TYPE_42__** %6, align 8
  br label %615

615:                                              ; preds = %639, %609
  %616 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %617 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %618 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %617, i32 0, i32 6
  %619 = load %struct.TYPE_42__*, %struct.TYPE_42__** %618, align 8
  %620 = icmp ne %struct.TYPE_42__* %616, %619
  br i1 %620, label %621, label %643

621:                                              ; preds = %615
  %622 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %623 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %622, i32 0, i32 0
  %624 = load i32, i32* %623, align 8
  %625 = load i32, i32* @REQ_SCHEMA, align 4
  %626 = load i32, i32* @REQ_DATA, align 4
  %627 = or i32 %625, %626
  %628 = and i32 %624, %627
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %638

630:                                              ; preds = %621
  %631 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %632 = call i32 @_tocEntryRestorePass(%struct.TYPE_42__* %631)
  %633 = icmp eq i32 %632, 128
  br i1 %633, label %634, label %638

634:                                              ; preds = %630
  %635 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %636 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %637 = call i32 @restore_toc_entry(%struct.TYPE_46__* %635, %struct.TYPE_42__* %636, i32 0)
  br label %638

638:                                              ; preds = %634, %630, %621
  br label %639

639:                                              ; preds = %638
  %640 = load %struct.TYPE_42__*, %struct.TYPE_42__** %6, align 8
  %641 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %640, i32 0, i32 3
  %642 = load %struct.TYPE_42__*, %struct.TYPE_42__** %641, align 8
  store %struct.TYPE_42__* %642, %struct.TYPE_42__** %6, align 8
  br label %615

643:                                              ; preds = %615
  br label %644

644:                                              ; preds = %643, %606
  br label %645

645:                                              ; preds = %644, %506
  %646 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %647 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %646, i32 0, i32 4
  %648 = load i64, i64* %647, align 8
  %649 = icmp ne i64 %648, 0
  br i1 %649, label %650, label %662

650:                                              ; preds = %645
  %651 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %652 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %651, i32 0, i32 5
  %653 = load i32*, i32** %652, align 8
  %654 = icmp ne i32* %653, null
  br i1 %654, label %655, label %658

655:                                              ; preds = %650
  %656 = load %struct.TYPE_47__*, %struct.TYPE_47__** %2, align 8
  %657 = call i32 @CommitTransaction(%struct.TYPE_47__* %656)
  br label %661

658:                                              ; preds = %650
  %659 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %660 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %659, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0))
  br label %661

661:                                              ; preds = %658, %655
  br label %662

662:                                              ; preds = %661, %645
  %663 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %664 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %663, i32 0, i32 3
  %665 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %664, i32 0, i32 1
  %666 = load i64, i64* %665, align 8
  %667 = icmp ne i64 %666, 0
  br i1 %667, label %668, label %672

668:                                              ; preds = %662
  %669 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %670 = call i32 @time(i32* null)
  %671 = call i32 @dumpTimestamp(%struct.TYPE_46__* %669, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i32 %670)
  br label %672

672:                                              ; preds = %668, %662
  %673 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %674 = call i32 (%struct.TYPE_46__*, i8*, ...) @ahprintf(%struct.TYPE_46__* %673, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %675 = load i32, i32* @STAGE_FINALIZING, align 4
  %676 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %677 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %676, i32 0, i32 4
  store i32 %675, i32* %677, align 8
  %678 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %679 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %678, i32 0, i32 3
  %680 = load i64, i64* %679, align 8
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %687, label %682

682:                                              ; preds = %672
  %683 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %684 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %683, i32 0, i32 2
  %685 = load i64, i64* %684, align 8
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %691

687:                                              ; preds = %682, %672
  %688 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %689 = load i32, i32* %7, align 4
  %690 = call i32 @RestoreOutput(%struct.TYPE_46__* %688, i32 %689)
  br label %691

691:                                              ; preds = %687, %682
  %692 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %693 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %692, i32 0, i32 1
  %694 = load i64, i64* %693, align 8
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %696, label %700

696:                                              ; preds = %691
  %697 = load %struct.TYPE_46__*, %struct.TYPE_46__** %3, align 8
  %698 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %697, i32 0, i32 3
  %699 = call i32 @DisconnectDatabase(%struct.TYPE_43__* %698)
  br label %700

700:                                              ; preds = %696, %691
  ret void
}

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @buildTocEntryArrays(%struct.TYPE_46__*) #1

declare dso_local i32 @pg_log_info(i8*, ...) #1

declare dso_local i32 @ConnectDatabase(%struct.TYPE_47__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SaveOutput(%struct.TYPE_46__*) #1

declare dso_local i32 @SetOutput(%struct.TYPE_46__*, i64, i64) #1

declare dso_local i32 @ahprintf(%struct.TYPE_46__*, i8*, ...) #1

declare dso_local i32 @dumpTimestamp(%struct.TYPE_46__*, i8*, i32) #1

declare dso_local i32 @StartTransaction(%struct.TYPE_47__*) #1

declare dso_local i32 @_doSetFixedOutputState(%struct.TYPE_46__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @_becomeOwner(%struct.TYPE_46__*, %struct.TYPE_42__*) #1

declare dso_local i32 @_selectOutputSchema(%struct.TYPE_46__*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @DropBlobIfExists(%struct.TYPE_46__*, i32) #1

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local %struct.TYPE_45__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_45__*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_45__*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pg_log_warning(i8*, i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_45__*) #1

declare dso_local i32 @pg_free(i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @pending_list_header_init(%struct.TYPE_42__*) #1

declare dso_local i32 @restore_toc_entries_prefork(%struct.TYPE_46__*, %struct.TYPE_42__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @ParallelBackupStart(%struct.TYPE_46__*) #1

declare dso_local i32 @restore_toc_entries_parallel(%struct.TYPE_46__*, i32*, %struct.TYPE_42__*) #1

declare dso_local i32 @ParallelBackupEnd(%struct.TYPE_46__*, i32*) #1

declare dso_local i32 @restore_toc_entries_postfork(%struct.TYPE_46__*, %struct.TYPE_42__*) #1

declare dso_local i32 @_tocEntryRestorePass(%struct.TYPE_42__*) #1

declare dso_local i32 @restore_toc_entry(%struct.TYPE_46__*, %struct.TYPE_42__*, i32) #1

declare dso_local i32 @CommitTransaction(%struct.TYPE_47__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @RestoreOutput(%struct.TYPE_46__*, i32) #1

declare dso_local i32 @DisconnectDatabase(%struct.TYPE_43__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
