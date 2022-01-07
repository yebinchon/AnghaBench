; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpTableData_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_dumpTableData_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, i64, i64, i64 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64*, i64, i64 }
%struct.TYPE_24__ = type { i8* }

@.str = private unnamed_addr constant [57 x i8] c"DECLARE _pg_dump_cursor CURSOR FOR SELECT * FROM ONLY %s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"FETCH 100 FROM _pg_dump_cursor\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"INSERT INTO %s \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"DEFAULT VALUES;\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"OVERRIDING SYSTEM VALUE \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"VALUES\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c",\0A\09(\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\0A\09(\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"0123456789 +-eE.\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"B'%s'\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c" ON CONFLICT DO NOTHING;\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"CLOSE _pg_dump_cursor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i8*)* @dumpTableData_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dumpTableData_insert(%struct.TYPE_26__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store i8* %1, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %5, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %22, align 8
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %6, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %25, align 8
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %7, align 8
  %27 = call %struct.TYPE_24__* (...) @createPQExpBuffer()
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = call i64 @fmtQualifiedDumpable(%struct.TYPE_22__* %32)
  %34 = call i32 @appendPQExpBuffer(%struct.TYPE_24__* %31, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @appendPQExpBuffer(%struct.TYPE_24__* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %39, %2
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @ExecuteSqlStatement(%struct.TYPE_26__* %46, i8* %49)
  br label %51

51:                                               ; preds = %45, %288
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %53 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %54 = call i32* @ExecuteSqlQuery(%struct.TYPE_26__* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @PQnfields(i32* %55)
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %58 = icmp eq %struct.TYPE_24__* %57, null
  br i1 %58, label %59, label %128

59:                                               ; preds = %51
  %60 = call %struct.TYPE_24__* (...) @createPQExpBuffer()
  store %struct.TYPE_24__* %60, %struct.TYPE_24__** %9, align 8
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %72 = call %struct.TYPE_22__* @getRootTableInfo(%struct.TYPE_22__* %71)
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %14, align 8
  br label %75

73:                                               ; preds = %65, %59
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %74, %struct.TYPE_22__** %14, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %78 = call i64 @fmtQualifiedDumpable(%struct.TYPE_22__* %77)
  %79 = call i32 @appendPQExpBuffer(%struct.TYPE_24__* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %84 = call i32 @appendPQExpBufferStr(%struct.TYPE_24__* %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %127

85:                                               ; preds = %75
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = call i32 @appendPQExpBufferChar(%struct.TYPE_24__* %91, i8 signext 40)
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %110, %90
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %93
  %98 = load i32, i32* %15, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %102 = call i32 @appendPQExpBufferStr(%struct.TYPE_24__* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @PQfname(i32* %105, i32 %106)
  %108 = call i8* @fmtId(i32 %107)
  %109 = call i32 @appendPQExpBufferStr(%struct.TYPE_24__* %104, i8* %108)
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %93

113:                                              ; preds = %93
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = call i32 @appendPQExpBufferStr(%struct.TYPE_24__* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %85
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %123 = call i32 @appendPQExpBufferStr(%struct.TYPE_24__* %122, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %126 = call i32 @appendPQExpBufferStr(%struct.TYPE_24__* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %82
  br label %128

128:                                              ; preds = %127, %51
  store i32 0, i32* %16, align 4
  br label %129

129:                                              ; preds = %278, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = call i32 @PQntuples(i32* %131)
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %281

134:                                              ; preds = %129
  %135 = load i32, i32* %13, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %142 = call i32 @archputs(i8* %140, %struct.TYPE_26__* %141)
  br label %143

143:                                              ; preds = %137, %134
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %278

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %152 = call i32 @archputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %struct.TYPE_26__* %151)
  br label %163

153:                                              ; preds = %147
  %154 = load i32, i32* %13, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %158 = call i32 @archputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_26__* %157)
  br label %162

159:                                              ; preds = %153
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %161 = call i32 @archputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_26__* %160)
  br label %162

162:                                              ; preds = %159, %156
  br label %163

163:                                              ; preds = %162, %150
  store i32 0, i32* %17, align 4
  br label %164

164:                                              ; preds = %255, %163
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %258

168:                                              ; preds = %164
  %169 = load i32, i32* %17, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %173 = call i32 @archputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_26__* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %17, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %174
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %185 = call i32 @archputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_26__* %184)
  br label %255

186:                                              ; preds = %174
  %187 = load i32*, i32** %10, align 8
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i64 @PQgetisnull(i32* %187, i32 %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %194 = call i32 @archputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.TYPE_26__* %193)
  br label %255

195:                                              ; preds = %186
  %196 = load i32*, i32** %10, align 8
  %197 = load i32, i32* %17, align 4
  %198 = call i32 @PQftype(i32* %196, i32 %197)
  switch i32 %198, label %239 [
    i32 133, label %199
    i32 132, label %199
    i32 131, label %199
    i32 129, label %199
    i32 135, label %199
    i32 134, label %199
    i32 130, label %199
    i32 137, label %218
    i32 128, label %218
    i32 136, label %225
  ]

199:                                              ; preds = %195, %195, %195, %195, %195, %195, %195
  %200 = load i32*, i32** %10, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %17, align 4
  %203 = call i8* @PQgetvalue(i32* %200, i32 %201, i32 %202)
  store i8* %203, i8** %18, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = call i32 @strspn(i8* %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %206 = load i8*, i8** %18, align 8
  %207 = call i32 @strlen(i8* %206)
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %199
  %210 = load i8*, i8** %18, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %212 = call i32 @archputs(i8* %210, %struct.TYPE_26__* %211)
  br label %217

213:                                              ; preds = %199
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %215 = load i8*, i8** %18, align 8
  %216 = call i32 @archprintf(%struct.TYPE_26__* %214, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %213, %209
  br label %254

218:                                              ; preds = %195, %195
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %220 = load i32*, i32** %10, align 8
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %17, align 4
  %223 = call i8* @PQgetvalue(i32* %220, i32 %221, i32 %222)
  %224 = call i32 @archprintf(%struct.TYPE_26__* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %223)
  br label %254

225:                                              ; preds = %195
  %226 = load i32*, i32** %10, align 8
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* %17, align 4
  %229 = call i8* @PQgetvalue(i32* %226, i32 %227, i32 %228)
  %230 = call i32 @strcmp(i8* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %234 = call i32 @archputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct.TYPE_26__* %233)
  br label %238

235:                                              ; preds = %225
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %237 = call i32 @archputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), %struct.TYPE_26__* %236)
  br label %238

238:                                              ; preds = %235, %232
  br label %254

239:                                              ; preds = %195
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %241 = call i32 @resetPQExpBuffer(%struct.TYPE_24__* %240)
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %243 = load i32*, i32** %10, align 8
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %17, align 4
  %246 = call i8* @PQgetvalue(i32* %243, i32 %244, i32 %245)
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %248 = call i32 @appendStringLiteralAH(%struct.TYPE_24__* %242, i8* %246, %struct.TYPE_26__* %247)
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %253 = call i32 @archputs(i8* %251, %struct.TYPE_26__* %252)
  br label %254

254:                                              ; preds = %239, %238, %218, %217
  br label %255

255:                                              ; preds = %254, %192, %183
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %17, align 4
  br label %164

258:                                              ; preds = %164
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %260 = call i32 @archputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), %struct.TYPE_26__* %259)
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %12, align 4
  %264 = icmp sge i32 %262, %263
  br i1 %264, label %265, label %277

265:                                              ; preds = %258
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %272 = call i32 @archputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), %struct.TYPE_26__* %271)
  br label %276

273:                                              ; preds = %265
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %275 = call i32 @archputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_26__* %274)
  br label %276

276:                                              ; preds = %273, %270
  store i32 0, i32* %13, align 4
  br label %277

277:                                              ; preds = %276, %258
  br label %278

278:                                              ; preds = %277, %146
  %279 = load i32, i32* %16, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %16, align 4
  br label %129

281:                                              ; preds = %129
  %282 = load i32*, i32** %10, align 8
  %283 = call i32 @PQntuples(i32* %282)
  %284 = icmp sle i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load i32*, i32** %10, align 8
  %287 = call i32 @PQclear(i32* %286)
  br label %291

288:                                              ; preds = %281
  %289 = load i32*, i32** %10, align 8
  %290 = call i32 @PQclear(i32* %289)
  br label %51

291:                                              ; preds = %285
  %292 = load i32, i32* %13, align 4
  %293 = icmp sgt i32 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %291
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %294
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %301 = call i32 @archputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), %struct.TYPE_26__* %300)
  br label %305

302:                                              ; preds = %294
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %304 = call i32 @archputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), %struct.TYPE_26__* %303)
  br label %305

305:                                              ; preds = %302, %299
  br label %306

306:                                              ; preds = %305, %291
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %308 = call i32 @archputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), %struct.TYPE_26__* %307)
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %310 = call i32 @ExecuteSqlStatement(%struct.TYPE_26__* %309, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0))
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %312 = call i32 @destroyPQExpBuffer(%struct.TYPE_24__* %311)
  %313 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %314 = icmp ne %struct.TYPE_24__* %313, null
  br i1 %314, label %315, label %318

315:                                              ; preds = %306
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %317 = call i32 @destroyPQExpBuffer(%struct.TYPE_24__* %316)
  br label %318

318:                                              ; preds = %315, %306
  ret i32 1
}

declare dso_local %struct.TYPE_24__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_24__*, i8*, i64) #1

declare dso_local i64 @fmtQualifiedDumpable(%struct.TYPE_22__*) #1

declare dso_local i32 @ExecuteSqlStatement(%struct.TYPE_26__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_26__*, i8*, i32) #1

declare dso_local i32 @PQnfields(i32*) #1

declare dso_local %struct.TYPE_22__* @getRootTableInfo(%struct.TYPE_22__*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i8* @fmtId(i32) #1

declare dso_local i32 @PQfname(i32*, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @archputs(i8*, %struct.TYPE_26__*) #1

declare dso_local i64 @PQgetisnull(i32*, i32, i32) #1

declare dso_local i32 @PQftype(i32*, i32) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archprintf(%struct.TYPE_26__*, i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_24__*) #1

declare dso_local i32 @appendStringLiteralAH(%struct.TYPE_24__*, i8*, %struct.TYPE_26__*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
