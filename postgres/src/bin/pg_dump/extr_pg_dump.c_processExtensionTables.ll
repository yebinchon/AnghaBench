; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_processExtensionTables.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump.c_processExtensionTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32* }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_35__ = type { i8*, i8*, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__*, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }

@DUMP_COMPONENT_DEFINITION = common dso_local global i32 0, align 4
@table_include_oids = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@DUMP_COMPONENT_DATA = common dso_local global i32 0, align 4
@table_exclude_oids = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@schema_exclude_oids = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@.str = private unnamed_addr constant [182 x i8] c"SELECT conrelid, confrelid FROM pg_constraint JOIN pg_depend ON (objid = confrelid) WHERE contype = 'f' AND refclassid = 'pg_extension'::regclass AND classid = 'pg_class'::regclass;\00", align 1
@PGRES_TUPLES_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"conrelid\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"confrelid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @processExtensionTables(%struct.TYPE_24__* %0, %struct.TYPE_35__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_35__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_33__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_33__*, align 8
  %28 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  store i32 %2, i32* %6, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %3
  br label %258

35:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %184, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %187

40:                                               ; preds = %36
  %41 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %41, i64 %43
  store %struct.TYPE_35__* %44, %struct.TYPE_35__** %14, align 8
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %15, align 8
  %48 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %16, align 8
  store i8** null, i8*** %17, align 8
  store i8** null, i8*** %18, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call i64 @parsePGArray(i8* %51, i8*** %17, i32* %19)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %171

54:                                               ; preds = %40
  %55 = load i8*, i8** %16, align 8
  %56 = call i64 @parsePGArray(i8* %55, i8*** %18, i32* %20)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %171

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %171

62:                                               ; preds = %58
  store i32 0, i32* %21, align 4
  br label %63

63:                                               ; preds = %167, %62
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %170

67:                                               ; preds = %63
  %68 = load i8**, i8*** %17, align 8
  %69 = load i32, i32* %21, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @atooid(i8* %72)
  store i32 %73, i32* %23, align 4
  %74 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DUMP_COMPONENT_DEFINITION, align 4
  %79 = and i32 %77, %78
  store i32 %79, i32* %24, align 4
  %80 = load i32, i32* %23, align 4
  %81 = call %struct.TYPE_33__* @findTableByOid(i32 %80)
  store %struct.TYPE_33__* %81, %struct.TYPE_33__** %22, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %83 = icmp eq %struct.TYPE_33__* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %67
  br label %167

85:                                               ; preds = %67
  %86 = load %struct.TYPE_35__*, %struct.TYPE_35__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @DUMP_COMPONENT_DEFINITION, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %85
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @table_include_oids, i32 0, i32 0), align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %23, align 4
  %98 = call i64 @simple_oid_list_member(%struct.TYPE_25__* @table_include_oids, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i32 1, i32* %24, align 4
  br label %101

101:                                              ; preds = %100, %96, %93
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @DUMP_COMPONENT_DATA, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  store i32 1, i32* %24, align 4
  br label %113

113:                                              ; preds = %112, %101
  br label %114

114:                                              ; preds = %113, %85
  %115 = load i32*, i32** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @table_exclude_oids, i32 0, i32 0), align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* %23, align 4
  %119 = call i64 @simple_oid_list_member(%struct.TYPE_25__* @table_exclude_oids, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 0, i32* %24, align 4
  br label %122

122:                                              ; preds = %121, %117, %114
  %123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %124 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_30__*, %struct.TYPE_30__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @simple_oid_list_member(%struct.TYPE_25__* @schema_exclude_oids, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  store i32 0, i32* %24, align 4
  br label %134

134:                                              ; preds = %133, %122
  %135 = load i32, i32* %24, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %166

137:                                              ; preds = %134
  %138 = load i32*, i32** %7, align 8
  %139 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %140 = call i32 @makeTableDataInfo(i32* %138, %struct.TYPE_33__* %139)
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_32__*, %struct.TYPE_32__** %142, align 8
  %144 = icmp ne %struct.TYPE_32__* %143, null
  br i1 %144, label %145, label %165

145:                                              ; preds = %137
  %146 = load i8**, i8*** %18, align 8
  %147 = load i32, i32* %21, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strlen(i8* %150)
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %145
  %154 = load i8**, i8*** %18, align 8
  %155 = load i32, i32* %21, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @pg_strdup(i8* %158)
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %22, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 1
  store i32 %159, i32* %163, align 4
  br label %164

164:                                              ; preds = %153, %145
  br label %165

165:                                              ; preds = %164, %137
  br label %166

166:                                              ; preds = %165, %134
  br label %167

167:                                              ; preds = %166, %84
  %168 = load i32, i32* %21, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %21, align 4
  br label %63

170:                                              ; preds = %63
  br label %171

171:                                              ; preds = %170, %58, %54, %40
  %172 = load i8**, i8*** %17, align 8
  %173 = icmp ne i8** %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i8**, i8*** %17, align 8
  %176 = call i32 @free(i8** %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i8**, i8*** %18, align 8
  %179 = icmp ne i8** %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i8**, i8*** %18, align 8
  %182 = call i32 @free(i8** %181)
  br label %183

183:                                              ; preds = %180, %177
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %11, align 4
  br label %36

187:                                              ; preds = %36
  %188 = call %struct.TYPE_34__* (...) @createPQExpBuffer()
  store %struct.TYPE_34__* %188, %struct.TYPE_34__** %8, align 8
  %189 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %190 = call i32 @printfPQExpBuffer(%struct.TYPE_34__* %189, i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str, i64 0, i64 0))
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %192 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @PGRES_TUPLES_OK, align 4
  %196 = call i32* @ExecuteSqlQuery(%struct.TYPE_24__* %191, i32 %194, i32 %195)
  store i32* %196, i32** %9, align 8
  %197 = load i32*, i32** %9, align 8
  %198 = call i32 @PQntuples(i32* %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32*, i32** %9, align 8
  %200 = call i32 @PQfnumber(i32* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %200, i32* %12, align 4
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @PQfnumber(i32* %201, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 %202, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %203

203:                                              ; preds = %250, %187
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %253

207:                                              ; preds = %203
  %208 = load i32*, i32** %9, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i8* @PQgetvalue(i32* %208, i32 %209, i32 %210)
  %212 = call i32 @atooid(i8* %211)
  store i32 %212, i32* %25, align 4
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* %11, align 4
  %215 = load i32, i32* %13, align 4
  %216 = call i8* @PQgetvalue(i32* %213, i32 %214, i32 %215)
  %217 = call i32 @atooid(i8* %216)
  store i32 %217, i32* %26, align 4
  %218 = load i32, i32* %25, align 4
  %219 = call %struct.TYPE_33__* @findTableByOid(i32 %218)
  store %struct.TYPE_33__* %219, %struct.TYPE_33__** %28, align 8
  %220 = load i32, i32* %26, align 4
  %221 = call %struct.TYPE_33__* @findTableByOid(i32 %220)
  store %struct.TYPE_33__* %221, %struct.TYPE_33__** %27, align 8
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %223 = icmp eq %struct.TYPE_33__* %222, null
  br i1 %223, label %237, label %224

224:                                              ; preds = %207
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %226, align 8
  %228 = icmp eq %struct.TYPE_32__* %227, null
  br i1 %228, label %237, label %229

229:                                              ; preds = %224
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %231 = icmp eq %struct.TYPE_33__* %230, null
  br i1 %231, label %237, label %232

232:                                              ; preds = %229
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_32__*, %struct.TYPE_32__** %234, align 8
  %236 = icmp eq %struct.TYPE_32__* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %232, %229, %224, %207
  br label %250

238:                                              ; preds = %232
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %28, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %27, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @addObjectDependency(%struct.TYPE_27__* %242, i32 %248)
  br label %250

250:                                              ; preds = %238, %237
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %11, align 4
  br label %203

253:                                              ; preds = %203
  %254 = load i32*, i32** %9, align 8
  %255 = call i32 @PQclear(i32* %254)
  %256 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %257 = call i32 @destroyPQExpBuffer(%struct.TYPE_34__* %256)
  br label %258

258:                                              ; preds = %253, %34
  ret void
}

declare dso_local i64 @parsePGArray(i8*, i8***, i32*) #1

declare dso_local i32 @atooid(i8*) #1

declare dso_local %struct.TYPE_33__* @findTableByOid(i32) #1

declare dso_local i64 @simple_oid_list_member(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @makeTableDataInfo(i32*, %struct.TYPE_33__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pg_strdup(i8*) #1

declare dso_local i32 @free(i8**) #1

declare dso_local %struct.TYPE_34__* @createPQExpBuffer(...) #1

declare dso_local i32 @printfPQExpBuffer(%struct.TYPE_34__*, i8*) #1

declare dso_local i32* @ExecuteSqlQuery(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @PQfnumber(i32*, i8*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @addObjectDependency(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
