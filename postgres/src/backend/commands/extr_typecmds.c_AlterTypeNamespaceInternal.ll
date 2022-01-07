; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeNamespaceInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeNamespaceInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i8*, i8*, i32, i8* }
%struct.TYPE_11__ = type { i64, i8*, i32 }

@TypeRelationId = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@RowExclusiveLock = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1
@TYPENAMENSP = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"type \22%s\22 already exists in schema \22%s\22\00", align 1
@TYPTYPE_COMPOSITE = common dso_local global i64 0, align 8
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s is a table's row type\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Use ALTER TABLE instead.\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@NamespaceRelationId = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"failed to change schema dependency for type %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AlterTypeNamespaceInternal(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @TypeRelationId, align 4
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i64 @object_address_present(%struct.TYPE_11__* %18, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i8*, i8** @InvalidOid, align 8
  store i8* %29, i8** %6, align 8
  br label %223

30:                                               ; preds = %5
  %31 = load i32, i32* @TypeRelationId, align 4
  %32 = load i32, i32* @RowExclusiveLock, align 4
  %33 = call i32 @table_open(i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* @TYPEOID, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @ObjectIdGetDatum(i8* %35)
  %37 = call %struct.TYPE_12__* @SearchSysCacheCopy1(i32 %34, i32 %36)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %13, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = call i32 @HeapTupleIsValid(%struct.TYPE_12__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = call i64 @GETSTRUCT(%struct.TYPE_12__* %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %14, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %15, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %16, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %45
  %59 = load i8*, i8** %15, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @CheckSetNamespace(i8* %59, i8* %60)
  %62 = load i32, i32* @TYPENAMENSP, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 3
  %65 = call i32 @NameGetDatum(i32* %64)
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @ObjectIdGetDatum(i8* %66)
  %68 = call i64 @SearchSysCacheExists2(i32 %62, i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %58
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @NameStr(i32 %76)
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 @get_namespace_name(i8* %80)
  %82 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %81)
  %83 = call i32 @ereport(i32 %71, i32 %82)
  br label %84

84:                                               ; preds = %70, %58
  br label %85

85:                                               ; preds = %84, %45
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i64 @get_rel_relkind(i8* %94)
  %96 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %91, %85
  %99 = phi i1 [ false, %85 ], [ %97, %91 ]
  %100 = zext i1 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %98
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %115 = call i32 @errcode(i32 %114)
  %116 = load i8*, i8** %7, align 8
  %117 = call i8* @format_type_be(i8* %116)
  %118 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  %119 = call i32 @errhint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %120 = call i32 @ereport(i32 %113, i32 %119)
  br label %121

121:                                              ; preds = %112, %109, %106, %98
  %122 = load i8*, i8** %15, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = icmp ne i8* %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i8*, i8** %8, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 8
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %133 = call i32 @CatalogTupleUpdate(i32 %129, i32* %131, %struct.TYPE_12__* %132)
  br label %134

134:                                              ; preds = %125, %121
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = load i32, i32* @RelationRelationId, align 4
  %139 = load i32, i32* @RowExclusiveLock, align 4
  %140 = call i32 @table_open(i32 %138, i32 %139)
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load i8*, i8** %15, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @AlterRelationNamespaceInternal(i32 %141, i8* %144, i8* %145, i8* %146, i32 0, i32* %147)
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* @RowExclusiveLock, align 4
  %151 = call i32 @table_close(i32 %149, i32 %150)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = call i32 @AlterConstraintNamespaces(i8* %154, i8* %155, i8* %156, i32 0, i32* %157)
  br label %172

159:                                              ; preds = %134
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %171

165:                                              ; preds = %159
  %166 = load i8*, i8** %7, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @AlterConstraintNamespaces(i8* %166, i8* %167, i8* %168, i32 1, i32* %169)
  br label %171

171:                                              ; preds = %165, %159
  br label %172

172:                                              ; preds = %171, %137
  %173 = load i8*, i8** %15, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = icmp ne i8* %173, %174
  br i1 %175, label %176, label %202

176:                                              ; preds = %172
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @TYPTYPE_COMPOSITE, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %202

185:                                              ; preds = %179, %176
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* @TypeRelationId, align 4
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* @NamespaceRelationId, align 4
  %192 = load i8*, i8** %15, align 8
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 @changeDependencyFor(i32 %189, i8* %190, i32 %191, i8* %192, i8* %193)
  %195 = icmp ne i32 %194, 1
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load i32, i32* @ERROR, align 4
  %198 = load i8*, i8** %7, align 8
  %199 = call i8* @format_type_be(i8* %198)
  %200 = call i32 @elog(i32 %197, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %196, %188
  br label %202

202:                                              ; preds = %201, %185, %179, %172
  %203 = load i32, i32* @TypeRelationId, align 4
  %204 = load i8*, i8** %7, align 8
  %205 = call i32 @InvokeObjectPostAlterHook(i32 %203, i8* %204, i32 0)
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %207 = call i32 @heap_freetuple(%struct.TYPE_12__* %206)
  %208 = load i32, i32* %12, align 4
  %209 = load i32, i32* @RowExclusiveLock, align 4
  %210 = call i32 @table_close(i32 %208, i32 %209)
  %211 = load i32*, i32** %11, align 8
  %212 = call i32 @add_exact_object_address(%struct.TYPE_11__* %18, i32* %211)
  %213 = load i8*, i8** %16, align 8
  %214 = call i64 @OidIsValid(i8* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %202
  %217 = load i8*, i8** %16, align 8
  %218 = load i8*, i8** %8, align 8
  %219 = load i32*, i32** %11, align 8
  %220 = call i8* @AlterTypeNamespaceInternal(i8* %217, i8* %218, i32 1, i32 1, i32* %219)
  br label %221

221:                                              ; preds = %216, %202
  %222 = load i8*, i8** %15, align 8
  store i8* %222, i8** %6, align 8
  br label %223

223:                                              ; preds = %221, %28
  %224 = load i8*, i8** %6, align 8
  ret i8* %224
}

declare dso_local i64 @object_address_present(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local %struct.TYPE_12__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_12__*) #1

declare dso_local i32 @elog(i32, i8*, i8*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_12__*) #1

declare dso_local i32 @CheckSetNamespace(i8*, i8*) #1

declare dso_local i64 @SearchSysCacheExists2(i32, i32, i32) #1

declare dso_local i32 @NameGetDatum(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @get_namespace_name(i8*) #1

declare dso_local i64 @get_rel_relkind(i8*) #1

declare dso_local i8* @format_type_be(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @AlterRelationNamespaceInternal(i32, i8*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @AlterConstraintNamespaces(i8*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @changeDependencyFor(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i8*, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_12__*) #1

declare dso_local i32 @add_exact_object_address(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @OidIsValid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
