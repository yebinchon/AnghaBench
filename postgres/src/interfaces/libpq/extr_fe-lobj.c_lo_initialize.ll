; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [316 x i8] c"select proname, oid from pg_catalog.pg_proc where proname in ('lo_open', 'lo_close', 'lo_creat', 'lo_create', 'lo_unlink', 'lo_lseek', 'lo_lseek64', 'lo_tell', 'lo_tell64', 'lo_truncate', 'lo_truncate64', 'loread', 'lowrite') and pronamespace = (select oid from pg_catalog.pg_namespace where nspname = 'pg_catalog')\00", align 1
@.str.2 = private unnamed_addr constant [224 x i8] c"select proname, oid from pg_proc where proname = 'lo_open' or proname = 'lo_close' or proname = 'lo_creat' or proname = 'lo_unlink' or proname = 'lo_lseek' or proname = 'lo_tell' or proname = 'loread' or proname = 'lowrite'\00", align 1
@PGRES_TUPLES_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [64 x i8] c"query to initialize large object functions did not return data\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"lo_open\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"lo_close\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"lo_creat\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"lo_create\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"lo_unlink\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"lo_lseek\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"lo_lseek64\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"lo_tell\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"lo_tell64\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"lo_truncate\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"lo_truncate64\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"loread\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"lowrite\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"cannot determine OID of function lo_open\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"cannot determine OID of function lo_close\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"cannot determine OID of function lo_creat\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"cannot determine OID of function lo_unlink\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"cannot determine OID of function lo_lseek\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"cannot determine OID of function lo_tell\0A\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"cannot determine OID of function loread\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"cannot determine OID of function lowrite\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @lo_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lo_initialize(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %301

13:                                               ; preds = %1
  %14 = call i64 @malloc(i32 104)
  %15 = inttoptr i64 %14 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  %21 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @printfPQExpBuffer(i32* %20, i32 %21)
  store i32 -1, i32* %2, align 4
  br label %301

23:                                               ; preds = %13
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = bitcast %struct.TYPE_12__* %24 to i8*
  %26 = call i32 @MemSet(i8* %25, i32 0, i32 104)
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 70300
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i8* getelementptr inbounds ([316 x i8], [316 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %33

32:                                               ; preds = %23
  store i8* getelementptr inbounds ([224 x i8], [224 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call %struct.TYPE_11__* @PQexec(%struct.TYPE_13__* %34, i8* %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %4, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = icmp eq %struct.TYPE_11__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = call i32 @free(%struct.TYPE_12__* %40)
  store i32 -1, i32* %2, align 4
  br label %301

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PGRES_TUPLES_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = call i32 @free(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = call i32 @PQclear(%struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = call i32 @libpq_gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %56 = call i32 @printfPQExpBuffer(i32* %54, i32 %55)
  store i32 -1, i32* %2, align 4
  br label %301

57:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %196, %57
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %61 = call i32 @PQntuples(%struct.TYPE_11__* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %199

63:                                               ; preds = %58
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i8* @PQgetvalue(%struct.TYPE_11__* %64, i32 %65, i32 0)
  store i8* %66, i8** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i8* @PQgetvalue(%struct.TYPE_11__* %67, i32 %68, i32 1)
  %70 = call i64 @atoi(i8* %69)
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %63
  %76 = load i8*, i8** %9, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %195

80:                                               ; preds = %63
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %194

89:                                               ; preds = %80
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %193

98:                                               ; preds = %89
  %99 = load i8*, i8** %8, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 12
  store i8* %103, i8** %105, align 8
  br label %192

106:                                              ; preds = %98
  %107 = load i8*, i8** %8, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load i8*, i8** %9, align 8
  %112 = ptrtoint i8* %111 to i64
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  br label %191

115:                                              ; preds = %106
  %116 = load i8*, i8** %8, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load i8*, i8** %9, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 4
  store i64 %121, i64* %123, align 8
  br label %190

124:                                              ; preds = %115
  %125 = load i8*, i8** %8, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 11
  store i8* %129, i8** %131, align 8
  br label %189

132:                                              ; preds = %124
  %133 = load i8*, i8** %8, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i8*, i8** %9, align 8
  %138 = ptrtoint i8* %137 to i64
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 5
  store i64 %138, i64* %140, align 8
  br label %188

141:                                              ; preds = %132
  %142 = load i8*, i8** %8, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** %9, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 10
  store i8* %146, i8** %148, align 8
  br label %187

149:                                              ; preds = %141
  %150 = load i8*, i8** %8, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 9
  store i8* %154, i8** %156, align 8
  br label %186

157:                                              ; preds = %149
  %158 = load i8*, i8** %8, align 8
  %159 = call i64 @strcmp(i8* %158, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i8*, i8** %9, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 8
  store i8* %162, i8** %164, align 8
  br label %185

165:                                              ; preds = %157
  %166 = load i8*, i8** %8, align 8
  %167 = call i64 @strcmp(i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i8*, i8** %9, align 8
  %171 = ptrtoint i8* %170 to i64
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 6
  store i64 %171, i64* %173, align 8
  br label %184

174:                                              ; preds = %165
  %175 = load i8*, i8** %8, align 8
  %176 = call i64 @strcmp(i8* %175, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174
  %179 = load i8*, i8** %9, align 8
  %180 = ptrtoint i8* %179 to i64
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 7
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %178, %174
  br label %184

184:                                              ; preds = %183, %169
  br label %185

185:                                              ; preds = %184, %161
  br label %186

186:                                              ; preds = %185, %153
  br label %187

187:                                              ; preds = %186, %145
  br label %188

188:                                              ; preds = %187, %136
  br label %189

189:                                              ; preds = %188, %128
  br label %190

190:                                              ; preds = %189, %119
  br label %191

191:                                              ; preds = %190, %110
  br label %192

192:                                              ; preds = %191, %102
  br label %193

193:                                              ; preds = %192, %93
  br label %194

194:                                              ; preds = %193, %84
  br label %195

195:                                              ; preds = %194, %75
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %58

199:                                              ; preds = %58
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %201 = call i32 @PQclear(%struct.TYPE_11__* %200)
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %199
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 2
  %209 = call i32 @libpq_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  %210 = call i32 @printfPQExpBuffer(i32* %208, i32 %209)
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %212 = call i32 @free(%struct.TYPE_12__* %211)
  store i32 -1, i32* %2, align 4
  br label %301

213:                                              ; preds = %199
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  %221 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %222 = call i32 @printfPQExpBuffer(i32* %220, i32 %221)
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %224 = call i32 @free(%struct.TYPE_12__* %223)
  store i32 -1, i32* %2, align 4
  br label %301

225:                                              ; preds = %213
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 2
  %233 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0))
  %234 = call i32 @printfPQExpBuffer(i32* %232, i32 %233)
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %236 = call i32 @free(%struct.TYPE_12__* %235)
  store i32 -1, i32* %2, align 4
  br label %301

237:                                              ; preds = %225
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %237
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  %245 = call i32 @libpq_gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %246 = call i32 @printfPQExpBuffer(i32* %244, i32 %245)
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %248 = call i32 @free(%struct.TYPE_12__* %247)
  store i32 -1, i32* %2, align 4
  br label %301

249:                                              ; preds = %237
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 2
  %257 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i64 0, i64 0))
  %258 = call i32 @printfPQExpBuffer(i32* %256, i32 %257)
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %260 = call i32 @free(%struct.TYPE_12__* %259)
  store i32 -1, i32* %2, align 4
  br label %301

261:                                              ; preds = %249
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  %269 = call i32 @libpq_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  %270 = call i32 @printfPQExpBuffer(i32* %268, i32 %269)
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %272 = call i32 @free(%struct.TYPE_12__* %271)
  store i32 -1, i32* %2, align 4
  br label %301

273:                                              ; preds = %261
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %273
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 2
  %281 = call i32 @libpq_gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.23, i64 0, i64 0))
  %282 = call i32 @printfPQExpBuffer(i32* %280, i32 %281)
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %284 = call i32 @free(%struct.TYPE_12__* %283)
  store i32 -1, i32* %2, align 4
  br label %301

285:                                              ; preds = %273
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 7
  %288 = load i64, i64* %287, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %297

290:                                              ; preds = %285
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 2
  %293 = call i32 @libpq_gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0))
  %294 = call i32 @printfPQExpBuffer(i32* %292, i32 %293)
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %296 = call i32 @free(%struct.TYPE_12__* %295)
  store i32 -1, i32* %2, align 4
  br label %301

297:                                              ; preds = %285
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 1
  store %struct.TYPE_12__* %298, %struct.TYPE_12__** %300, align 8
  store i32 0, i32* %2, align 4
  br label %301

301:                                              ; preds = %297, %290, %278, %266, %254, %242, %230, %218, %206, %48, %39, %18, %12
  %302 = load i32, i32* %2, align 4
  ret i32 %302
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @PQexec(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @PQclear(%struct.TYPE_11__*) #1

declare dso_local i32 @PQntuples(%struct.TYPE_11__*) #1

declare dso_local i8* @PQgetvalue(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
