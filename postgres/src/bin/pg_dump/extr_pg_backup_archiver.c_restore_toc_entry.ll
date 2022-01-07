; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_restore_toc_entry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_archiver.c_restore_toc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { i64, %struct.TYPE_34__, i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)*, i32, %struct.TYPE_33__*, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i64, i32, i32 }
%struct.TYPE_33__ = type { i8*, i32, i8*, i32, i64, i32*, i64, i32* }
%struct.TYPE_36__ = type { i32 }

@WORKER_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"warning from original dump file: %s\00", align 1
@REQ_SCHEMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"creating %s \22%s.%s\22\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"creating %s \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@WORKER_INHIBIT_DATA = common dso_local global i32 0, align 4
@WORKER_CREATE_DONE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"DATABASE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"DATABASE PROPERTIES\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"dbname=\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"connecting to new database \22%s\22\00", align 1
@REQ_DATA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"BLOBS\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"BLOB COMMENTS\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"processing %s\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"pg_catalog\00", align 1
@OUTPUT_OTHERDATA = common dso_local global i8* null, align 8
@OUTPUT_SQLCMDS = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [34 x i8] c"processing data for table \22%s.%s\22\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"TRUNCATE TABLE %s%s;\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ONLY \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OUTPUT_COPYDATA = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [16 x i8] c"executing %s %s\00", align 1
@WORKER_IGNORED_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_37__*, %struct.TYPE_33__*, i32)* @restore_toc_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_toc_entry(%struct.TYPE_37__* %0, %struct.TYPE_33__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_36__, align 4
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %4, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  store %struct.TYPE_35__* %15, %struct.TYPE_35__** %7, align 8
  %16 = load i32, i32* @WORKER_OK, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %18 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 5
  store %struct.TYPE_33__* %17, %struct.TYPE_33__** %19, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %69, label %24

24:                                               ; preds = %3
  %25 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %69

30:                                               ; preds = %24
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %51, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 7
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @strlen(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @pg_log_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  br label %68

51:                                               ; preds = %40, %35, %30
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @strlen(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @pg_log_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %65)
  br label %67

67:                                               ; preds = %62, %56, %51
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %24, %3
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @REQ_SCHEMA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %178

77:                                               ; preds = %69
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, i8*, ...) @pg_log_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %85, i8* %88, i32 %91)
  br label %101

93:                                               ; preds = %77
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i8*, i8*, ...) @pg_log_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %96, i32 %99)
  br label %101

101:                                              ; preds = %93, %82
  %102 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %104 = call i32 @_printTocEntry(%struct.TYPE_37__* %102, %struct.TYPE_33__* %103, i32 0)
  store i32 1, i32* %10, align 4
  %105 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %101
  %111 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %111, i32 0, i32 4
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %112, align 8
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %115 = icmp eq %struct.TYPE_33__* %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @WORKER_INHIBIT_DATA, align 4
  store i32 %125, i32* %8, align 4
  br label %130

126:                                              ; preds = %121
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %128 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %129 = call i32 @inhibit_data_for_failed_table(%struct.TYPE_37__* %127, %struct.TYPE_33__* %128)
  br label %130

130:                                              ; preds = %126, %124
  br label %131

131:                                              ; preds = %130, %116
  br label %142

132:                                              ; preds = %110
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @WORKER_CREATE_DONE, align 4
  store i32 %136, i32* %8, align 4
  br label %141

137:                                              ; preds = %132
  %138 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %140 = call i32 @mark_create_done(%struct.TYPE_37__* %138, %struct.TYPE_33__* %139)
  br label %141

141:                                              ; preds = %137, %135
  br label %142

142:                                              ; preds = %141, %131
  br label %143

143:                                              ; preds = %142, %101
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i64 @strcmp(i8* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %177

155:                                              ; preds = %149, %143
  %156 = call i32 @initPQExpBuffer(%struct.TYPE_36__* %11)
  %157 = call i32 @appendPQExpBufferStr(%struct.TYPE_36__* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @appendConnStrVal(%struct.TYPE_36__* %11, i32 %160)
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 (i8*, i8*, ...) @pg_log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %166)
  %168 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @_reconnectToDB(%struct.TYPE_37__* %168, i32 %171)
  %173 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %155, %149
  br label %178

178:                                              ; preds = %177, %69
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @REQ_DATA, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %369

183:                                              ; preds = %178
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %353

188:                                              ; preds = %183
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %189, i32 0, i32 2
  %191 = load i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)** %190, align 8
  %192 = icmp ne i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)* %191, null
  br i1 %192, label %193, label %352

193:                                              ; preds = %188
  %194 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %196 = call i32 @_printTocEntry(%struct.TYPE_37__* %194, %struct.TYPE_33__* %195, i32 1)
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %193
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %236

208:                                              ; preds = %202, %193
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i32 (i8*, i8*, ...) @pg_log_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %211)
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %214 = call i32 @_selectOutputSchema(%struct.TYPE_37__* %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @strcmp(i8* %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %208
  %221 = load i8*, i8** @OUTPUT_OTHERDATA, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  br label %225

225:                                              ; preds = %220, %208
  %226 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %226, i32 0, i32 2
  %228 = load i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)** %227, align 8
  %229 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %231 = call i32 %228(%struct.TYPE_37__* %229, %struct.TYPE_33__* %230)
  %232 = load i8*, i8** @OUTPUT_SQLCMDS, align 8
  %233 = ptrtoint i8* %232 to i64
  %234 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %351

236:                                              ; preds = %202
  %237 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %239 = call i32 @_disableTriggersIfNecessary(%struct.TYPE_37__* %237, %struct.TYPE_33__* %238)
  %240 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %242 = call i32 @_becomeOwner(%struct.TYPE_37__* %240, %struct.TYPE_33__* %241)
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %244, i32 0, i32 2
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @_selectOutputSchema(%struct.TYPE_37__* %243, i8* %246)
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 2
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = call i32 (i8*, i8*, ...) @pg_log_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* %250, i32 %253)
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %282

257:                                              ; preds = %236
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %282

262:                                              ; preds = %257
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %263, i32 0, i32 1
  %265 = call i32 @StartTransaction(%struct.TYPE_34__* %264)
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %267 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @PQserverVersion(i32 %269)
  %271 = icmp sge i32 %270, 80400
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0)
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %274, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @fmtQualifiedId(i8* %276, i32 %279)
  %281 = call i32 (%struct.TYPE_37__*, i8*, i8*, ...) @ahprintf(%struct.TYPE_37__* %266, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i8* %273, i32 %280)
  br label %282

282:                                              ; preds = %262, %257, %236
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %283, i32 0, i32 5
  %285 = load i32*, i32** %284, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %303

287:                                              ; preds = %282
  %288 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = call i64 @strlen(i32* %290)
  %292 = icmp sgt i64 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %287
  %294 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 5
  %297 = load i32*, i32** %296, align 8
  %298 = bitcast i32* %297 to i8*
  %299 = call i32 (%struct.TYPE_37__*, i8*, i8*, ...) @ahprintf(%struct.TYPE_37__* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %298)
  %300 = load i64, i64* @OUTPUT_COPYDATA, align 8
  %301 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %301, i32 0, i32 0
  store i64 %300, i64* %302, align 8
  br label %308

303:                                              ; preds = %287, %282
  %304 = load i8*, i8** @OUTPUT_OTHERDATA, align 8
  %305 = ptrtoint i8* %304 to i64
  %306 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  br label %308

308:                                              ; preds = %303, %293
  %309 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %310 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %309, i32 0, i32 2
  %311 = load i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)*, i32 (%struct.TYPE_37__*, %struct.TYPE_33__*)** %310, align 8
  %312 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %313 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %314 = call i32 %311(%struct.TYPE_37__* %312, %struct.TYPE_33__* %313)
  %315 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @OUTPUT_COPYDATA, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %331

320:                                              ; preds = %308
  %321 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %322 = call i64 @RestoringToDB(%struct.TYPE_37__* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %331

324:                                              ; preds = %320
  %325 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = call i32 @EndDBCopyMode(%struct.TYPE_34__* %326, i32 %329)
  br label %331

331:                                              ; preds = %324, %320, %308
  %332 = load i8*, i8** @OUTPUT_SQLCMDS, align 8
  %333 = ptrtoint i8* %332 to i64
  %334 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %334, i32 0, i32 0
  store i64 %333, i64* %335, align 8
  %336 = load i32, i32* %6, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %331
  %339 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %344, i32 0, i32 1
  %346 = call i32 @CommitTransaction(%struct.TYPE_34__* %345)
  br label %347

347:                                              ; preds = %343, %338, %331
  %348 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %349 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %350 = call i32 @_enableTriggersIfNecessary(%struct.TYPE_37__* %348, %struct.TYPE_33__* %349)
  br label %351

351:                                              ; preds = %347, %225
  br label %352

352:                                              ; preds = %351, %188
  br label %368

353:                                              ; preds = %183
  %354 = load i32, i32* %10, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %367, label %356

356:                                              ; preds = %353
  %357 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %358 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  %360 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = call i32 (i8*, i8*, ...) @pg_log_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %359, i32 %362)
  %364 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %365 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %366 = call i32 @_printTocEntry(%struct.TYPE_37__* %364, %struct.TYPE_33__* %365, i32 0)
  br label %367

367:                                              ; preds = %356, %353
  br label %368

368:                                              ; preds = %367, %352
  br label %369

369:                                              ; preds = %368, %178
  %370 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = icmp sgt i64 %373, 0
  br i1 %374, label %375, label %381

375:                                              ; preds = %369
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* @WORKER_OK, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %375
  %380 = load i32, i32* @WORKER_IGNORED_ERRORS, align 4
  store i32 %380, i32* %8, align 4
  br label %381

381:                                              ; preds = %379, %375, %369
  %382 = load i32, i32* %8, align 4
  ret i32 %382
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @pg_log_warning(i8*, i32*) #1

declare dso_local i32 @pg_log_info(i8*, i8*, ...) #1

declare dso_local i32 @_printTocEntry(%struct.TYPE_37__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @inhibit_data_for_failed_table(%struct.TYPE_37__*, %struct.TYPE_33__*) #1

declare dso_local i32 @mark_create_done(%struct.TYPE_37__*, %struct.TYPE_33__*) #1

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_36__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @appendConnStrVal(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @_reconnectToDB(%struct.TYPE_37__*, i32) #1

declare dso_local i32 @_selectOutputSchema(%struct.TYPE_37__*, i8*) #1

declare dso_local i32 @_disableTriggersIfNecessary(%struct.TYPE_37__*, %struct.TYPE_33__*) #1

declare dso_local i32 @_becomeOwner(%struct.TYPE_37__*, %struct.TYPE_33__*) #1

declare dso_local i32 @StartTransaction(%struct.TYPE_34__*) #1

declare dso_local i32 @ahprintf(%struct.TYPE_37__*, i8*, i8*, ...) #1

declare dso_local i32 @PQserverVersion(i32) #1

declare dso_local i32 @fmtQualifiedId(i8*, i32) #1

declare dso_local i64 @RestoringToDB(%struct.TYPE_37__*) #1

declare dso_local i32 @EndDBCopyMode(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @CommitTransaction(%struct.TYPE_34__*) #1

declare dso_local i32 @_enableTriggersIfNecessary(%struct.TYPE_37__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
