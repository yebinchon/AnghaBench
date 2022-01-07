; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_GenerateTypeDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_GenerateTypeDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, i8* }

@TypeRelationId = common dso_local global i8* null, align 8
@NamespaceRelationId = common dso_local global i8* null, align 8
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@ProcedureRelationId = common dso_local global i8* null, align 8
@RelationRelationId = common dso_local global i8* null, align 8
@RELKIND_COMPOSITE_TYPE = common dso_local global i8 0, align 1
@DEPENDENCY_INTERNAL = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@CollationRelationId = common dso_local global i8* null, align 8
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GenerateTypeDependencies(i64 %0, %struct.TYPE_9__* %1, i32* %2, i8* %3, i8 signext %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 8
  %18 = alloca %struct.TYPE_8__, align 8
  store i64 %0, i64* %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8 %4, i8* %13, align 1
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = load i8*, i8** @TypeRelationId, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @deleteDependencyRecordsFor(i8* %22, i64 %23, i32 1)
  %25 = load i8*, i8** @TypeRelationId, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @deleteSharedDependencyRecordsFor(i8* %25, i64 %26, i32 0)
  br label %28

28:                                               ; preds = %21, %8
  %29 = load i8*, i8** @TypeRelationId, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** @NamespaceRelationId, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %45 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %44)
  %46 = load i8*, i8** @TypeRelationId, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @recordDependencyOnOwner(i8* %46, i64 %47, i32 %50)
  %52 = load i8*, i8** @TypeRelationId, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @recordDependencyOnNewAcl(i8* %52, i64 %53, i32 0, i32 %56, i8* %57)
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @recordDependencyOnCurrentExtension(%struct.TYPE_8__* %17, i32 %59)
  br label %61

61:                                               ; preds = %36, %28
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @OidIsValid(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i8*, i8** @ProcedureRelationId, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %72, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %76 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %75)
  br label %77

77:                                               ; preds = %67, %61
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @OidIsValid(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load i8*, i8** @ProcedureRelationId, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %84, i8** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %92 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %91)
  br label %93

93:                                               ; preds = %83, %77
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @OidIsValid(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %93
  %100 = load i8*, i8** @ProcedureRelationId, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %104, i64* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %108 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %107)
  br label %109

109:                                              ; preds = %99, %93
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @OidIsValid(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load i8*, i8** @ProcedureRelationId, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %116, i8** %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %120, i64* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %124 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %123)
  br label %125

125:                                              ; preds = %115, %109
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @OidIsValid(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %125
  %132 = load i8*, i8** @ProcedureRelationId, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %132, i8** %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %136, i64* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %140 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %139)
  br label %141

141:                                              ; preds = %131, %125
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @OidIsValid(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load i8*, i8** @ProcedureRelationId, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %148, i8** %149, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %152, i64* %153, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %156 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %155)
  br label %157

157:                                              ; preds = %147, %141
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @OidIsValid(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load i8*, i8** @ProcedureRelationId, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %164, i8** %165, align 8
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 7
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %168, i64* %169, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %170, align 8
  %171 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %172 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %171)
  br label %173

173:                                              ; preds = %163, %157
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 8
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @OidIsValid(i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %173
  %180 = load i8*, i8** @RelationRelationId, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %180, i8** %181, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 8
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %184, i64* %185, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %186, align 8
  %187 = load i8, i8* %13, align 1
  %188 = sext i8 %187 to i32
  %189 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %188, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %179
  %193 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %194 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %193)
  br label %198

195:                                              ; preds = %179
  %196 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  %197 = call i32 @recordDependencyOn(%struct.TYPE_8__* %18, %struct.TYPE_8__* %17, i32 %196)
  br label %198

198:                                              ; preds = %195, %192
  br label %199

199:                                              ; preds = %198, %173
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 9
  %202 = load i64, i64* %201, align 8
  %203 = call i64 @OidIsValid(i64 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %199
  %206 = load i8*, i8** @TypeRelationId, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %206, i8** %207, align 8
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 9
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %210, i64* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %205
  %216 = load i32, i32* @DEPENDENCY_INTERNAL, align 4
  br label %219

217:                                              ; preds = %205
  %218 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  br label %219

219:                                              ; preds = %217, %215
  %220 = phi i32 [ %216, %215 ], [ %218, %217 ]
  %221 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %220)
  br label %222

222:                                              ; preds = %219, %199
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 10
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @OidIsValid(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %222
  %229 = load i8*, i8** @TypeRelationId, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %229, i8** %230, align 8
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 10
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %233, i64* %234, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %235, align 8
  %236 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %237 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %236)
  br label %238

238:                                              ; preds = %228, %222
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 11
  %241 = load i64, i64* %240, align 8
  %242 = call i64 @OidIsValid(i64 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %238
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 11
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %260

250:                                              ; preds = %244
  %251 = load i8*, i8** @CollationRelationId, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  store i8* %251, i8** %252, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 11
  %255 = load i64, i64* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i64 %255, i64* %256, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store i64 0, i64* %257, align 8
  %258 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %259 = call i32 @recordDependencyOn(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18, i32 %258)
  br label %260

260:                                              ; preds = %250, %244, %238
  %261 = load i32*, i32** %11, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %263, label %268

263:                                              ; preds = %260
  %264 = load i32*, i32** %11, align 8
  %265 = load i32, i32* @NIL, align 4
  %266 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %267 = call i32 @recordDependencyOnExpr(%struct.TYPE_8__* %17, i32* %264, i32 %265, i32 %266)
  br label %268

268:                                              ; preds = %263, %260
  ret void
}

declare dso_local i32 @deleteDependencyRecordsFor(i8*, i64, i32) #1

declare dso_local i32 @deleteSharedDependencyRecordsFor(i8*, i64, i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @recordDependencyOnOwner(i8*, i64, i32) #1

declare dso_local i32 @recordDependencyOnNewAcl(i8*, i64, i32, i32, i8*) #1

declare dso_local i32 @recordDependencyOnCurrentExtension(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @recordDependencyOnExpr(%struct.TYPE_8__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
