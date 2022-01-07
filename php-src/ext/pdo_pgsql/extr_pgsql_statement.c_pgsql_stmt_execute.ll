; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_execute.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32, i64, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i8*, i32*, i32*, i32, i32, i64, i32, i32, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"CLOSE %s\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"DECLARE %s SCROLL CURSOR WITH HOLD FOR %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"FETCH FORWARD 0 FROM %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"42P05\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DEALLOCATE %s\00", align 1
@PDO_PLACEHOLDER_NAMED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @pgsql_stmt_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_stmt_execute(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 11
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @PQclear(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %108

36:                                               ; preds = %29
  store i8* null, i8** %7, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8**, i32, i8*, i64, ...) @spprintf(i8** %7, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = call i32* @PQexec(i32 %48, i8* %49)
  %51 = call i32 @PQclear(i32* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @efree(i8* %52)
  br label %54

54:                                               ; preds = %41, %36
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8**, i32, i8*, i64, ...) @spprintf(i8** %7, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %57, i8* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32* @PQexec(i32 %64, i8* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @efree(i8* %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @PQresultStatus(i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 129
  br i1 %76, label %77, label %88

77:                                               ; preds = %54
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 128
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i8* @pdo_pgsql_sqlstate(i32* %85)
  %87 = call i32 @pdo_pgsql_error_stmt(%struct.TYPE_6__* %81, i32 %82, i8* %86)
  store i32 0, i32* %2, align 4
  br label %351

88:                                               ; preds = %77, %54
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @PQclear(i32* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (i8**, i32, i8*, i64, ...) @spprintf(i8** %7, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %7, align 8
  %103 = call i32* @PQexec(i32 %101, i8* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @efree(i8* %106)
  br label %278

108:                                              ; preds = %29
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %225

113:                                              ; preds = %108
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %193, label %118

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %186, %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %119
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @zend_hash_num_elements(i64 %136)
  br label %139

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %138, %133
  %140 = phi i32 [ %137, %133 ], [ 0, %138 ]
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 8
  %144 = call i32* @PQprepare(i32 %122, i8* %125, i32 %128, i32 %140, i32 %143)
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  store i32* %144, i32** %146, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i32 @PQresultStatus(i32* %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  switch i32 %151, label %159 [
    i32 129, label %152
    i32 128, label %152
  ]

152:                                              ; preds = %139, %139
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = call i32 @PQclear(i32* %157)
  br label %192

159:                                              ; preds = %139
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = call i8* @pdo_pgsql_sqlstate(i32* %162)
  store i8* %163, i8** %8, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %187

166:                                              ; preds = %159
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %187, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = call i32 @snprintf(i8* %171, i32 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %180 = call i32* @PQexec(i32 %178, i8* %179)
  store i32* %180, i32** %10, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %170
  %184 = load i32*, i32** %10, align 8
  %185 = call i32 @PQclear(i32* %184)
  br label %186

186:                                              ; preds = %183, %170
  br label %119

187:                                              ; preds = %166, %159
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i8*, i8** %8, align 8
  %191 = call i32 @pdo_pgsql_error_stmt(%struct.TYPE_6__* %188, i32 %189, i8* %190)
  store i32 0, i32* %2, align 4
  br label %351

192:                                              ; preds = %152
  br label %193

193:                                              ; preds = %192, %113
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %193
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @zend_hash_num_elements(i64 %207)
  br label %210

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209, %204
  %211 = phi i32 [ %208, %204 ], [ 0, %209 ]
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 6
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to i8**
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32* @PQexecPrepared(i32 %196, i8* %199, i32 %211, i8** %215, i32 %218, i32 %221, i32 0)
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  store i32* %222, i32** %224, align 8
  br label %277

225:                                              ; preds = %108
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PDO_PLACEHOLDER_NAMED, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %266

231:                                              ; preds = %225
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 5
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %231
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @zend_hash_num_elements(i64 %245)
  br label %248

247:                                              ; preds = %231
  br label %248

248:                                              ; preds = %247, %242
  %249 = phi i32 [ %246, %242 ], [ 0, %247 ]
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 7
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 6
  %255 = load i64, i64* %254, align 8
  %256 = inttoptr i64 %255 to i8**
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = call i32* @PQexecParams(i32 %234, i32 %237, i32 %249, i32 %252, i8** %256, i32 %259, i32 %262, i32 0)
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  store i32* %263, i32** %265, align 8
  br label %276

266:                                              ; preds = %225
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32* @PQexec(i32 %269, i8* %272)
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 2
  store i32* %273, i32** %275, align 8
  br label %276

276:                                              ; preds = %266, %248
  br label %277

277:                                              ; preds = %276, %210
  br label %278

278:                                              ; preds = %277, %88
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = call i32 @PQresultStatus(i32* %281)
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %283, 129
  br i1 %284, label %285, label %296

285:                                              ; preds = %278
  %286 = load i32, i32* %6, align 4
  %287 = icmp ne i32 %286, 128
  br i1 %287, label %288, label %296

288:                                              ; preds = %285
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %290 = load i32, i32* %6, align 4
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = call i8* @pdo_pgsql_sqlstate(i32* %293)
  %295 = call i32 @pdo_pgsql_error_stmt(%struct.TYPE_6__* %289, i32 %290, i8* %294)
  store i32 0, i32* %2, align 4
  br label %351

296:                                              ; preds = %285, %278
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %325, label %301

301:                                              ; preds = %296
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %301
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 3
  %309 = load i32*, i32** %308, align 8
  %310 = icmp eq i32* %309, null
  br i1 %310, label %311, label %325

311:                                              ; preds = %306, %301
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = call i64 @PQnfields(i32* %314)
  %316 = trunc i64 %315 to i32
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 2
  store i32 %316, i32* %318, align 8
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = call i32* @ecalloc(i32 %321, i32 4)
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 3
  store i32* %322, i32** %324, align 8
  br label %325

325:                                              ; preds = %311, %306, %296
  %326 = load i32, i32* %6, align 4
  %327 = icmp eq i32 %326, 129
  br i1 %327, label %328, label %343

328:                                              ; preds = %325
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 3
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @PQcmdTuples(i32* %334)
  %336 = call i32 @ZEND_ATOL(i64 %331, i32 %335)
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 2
  %339 = load i32*, i32** %338, align 8
  %340 = call i32 @PQoidValue(i32* %339)
  %341 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  store i32 %340, i32* %342, align 4
  br label %350

343:                                              ; preds = %325
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = call i64 @PQntuples(i32* %346)
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 3
  store i64 %347, i64* %349, align 8
  br label %350

350:                                              ; preds = %343, %328
  store i32 1, i32* %2, align 4
  br label %351

351:                                              ; preds = %350, %288, %187, %80
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i64, ...) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @PQresultStatus(i32*) #1

declare dso_local i32 @pdo_pgsql_error_stmt(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i8* @pdo_pgsql_sqlstate(i32*) #1

declare dso_local i32* @PQprepare(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @zend_hash_num_elements(i64) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @PQexecPrepared(i32, i8*, i32, i8**, i32, i32, i32) #1

declare dso_local i32* @PQexecParams(i32, i32, i32, i32, i8**, i32, i32, i32) #1

declare dso_local i64 @PQnfields(i32*) #1

declare dso_local i32* @ecalloc(i32, i32) #1

declare dso_local i32 @ZEND_ATOL(i64, i32) #1

declare dso_local i32 @PQcmdTuples(i32*) #1

declare dso_local i32 @PQoidValue(i32*) #1

declare dso_local i64 @PQntuples(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
