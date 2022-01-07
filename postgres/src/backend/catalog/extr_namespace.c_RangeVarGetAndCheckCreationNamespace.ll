; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_RangeVarGetAndCheckCreationNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_RangeVarGetAndCheckCreationNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }

@InvalidOid = common dso_local global i64 0, align 8
@MyDatabaseId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cross-database references are not implemented: \22%s.%s.%s\22\00", align 1
@SharedInvalidMessageCounter = common dso_local global i64 0, align 8
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RangeVarGetAndCheckCreationNamespace(%struct.TYPE_5__* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %14 = load i64, i64* @InvalidOid, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* @InvalidOid, align 8
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* @MyDatabaseId, align 4
  %25 = call i32 @get_database_name(i32 %24)
  %26 = call i64 @strcmp(i64 %23, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %20
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %37, i32 %40)
  %42 = call i32 @ereport(i32 %29, i32 %41)
  br label %43

43:                                               ; preds = %28, %20
  br label %44

44:                                               ; preds = %43, %3
  br label %45

45:                                               ; preds = %163, %44
  %46 = load i64, i64* @SharedInvalidMessageCounter, align 8
  store i64 %46, i64* %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = call i64 @RangeVarGetCreationNamespace(%struct.TYPE_5__* %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @OidIsValid(i64 %49)
  %51 = call i32 @Assert(i64 %50)
  %52 = load i64*, i64** %6, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @get_relname_relid(i32 %57, i64 %58)
  store i64 %59, i64* %8, align 8
  br label %62

60:                                               ; preds = %45
  %61 = load i64, i64* @InvalidOid, align 8
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = call i64 (...) @IsBootstrapProcessingMode()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %166

66:                                               ; preds = %62
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (...) @GetUserId()
  %69 = load i32, i32* @ACL_CREATE, align 4
  %70 = call i64 @pg_namespace_aclcheck(i64 %67, i32 %68, i32 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* @ACLCHECK_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i64, i64* %13, align 8
  %76 = load i32, i32* @OBJECT_SCHEMA, align 4
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @get_namespace_name(i64 %77)
  %79 = call i32 @aclcheck_error(i64 %75, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %74, %66
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %166

92:                                               ; preds = %87, %83
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* @NamespaceRelationId, align 4
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* @AccessShareLock, align 4
  %100 = call i32 @UnlockDatabaseObject(i32 %97, i64 %98, i32 0, i32 %99)
  br label %101

101:                                              ; preds = %96, %92
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @OidIsValid(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @NoLock, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @UnlockRelationOid(i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %109, %105, %101
  br label %118

118:                                              ; preds = %117, %80
  %119 = load i64, i64* %10, align 8
  %120 = load i64, i64* %11, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i32, i32* @NamespaceRelationId, align 4
  %124 = load i64, i64* %10, align 8
  %125 = load i32, i32* @AccessShareLock, align 4
  %126 = call i32 @LockDatabaseObject(i32 %123, i64 %124, i32 0, i32 %125)
  br label %127

127:                                              ; preds = %122, %118
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @NoLock, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %127
  %132 = load i64, i64* %8, align 8
  %133 = call i64 @OidIsValid(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %131
  %136 = load i64, i64* %8, align 8
  %137 = call i32 (...) @GetUserId()
  %138 = call i32 @pg_class_ownercheck(i64 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %149, label %140

140:                                              ; preds = %135
  %141 = load i64, i64* @ACLCHECK_NOT_OWNER, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @get_rel_relkind(i64 %142)
  %144 = call i32 @get_relkind_objtype(i32 %143)
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @aclcheck_error(i64 %141, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %140, %135
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %9, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i64, i64* %8, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @LockRelationOid(i64 %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %149
  br label %158

158:                                              ; preds = %157, %131, %127
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* @SharedInvalidMessageCounter, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  br label %166

163:                                              ; preds = %158
  store i32 1, i32* %12, align 4
  %164 = load i64, i64* %8, align 8
  store i64 %164, i64* %9, align 8
  %165 = load i64, i64* %10, align 8
  store i64 %165, i64* %11, align 8
  br label %45

166:                                              ; preds = %162, %91, %65
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %168 = load i64, i64* %10, align 8
  %169 = call i32 @RangeVarAdjustRelationPersistence(%struct.TYPE_5__* %167, i64 %168)
  %170 = load i64*, i64** %6, align 8
  %171 = icmp ne i64* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i64, i64* %8, align 8
  %174 = load i64*, i64** %6, align 8
  store i64 %173, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %166
  %176 = load i64, i64* %10, align 8
  ret i64 %176
}

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @get_database_name(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i32, i32) #1

declare dso_local i64 @RangeVarGetCreationNamespace(%struct.TYPE_5__*) #1

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @get_relname_relid(i32, i64) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i64 @pg_namespace_aclcheck(i64, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_namespace_name(i64) #1

declare dso_local i32 @UnlockDatabaseObject(i32, i64, i32, i32) #1

declare dso_local i32 @UnlockRelationOid(i64, i32) #1

declare dso_local i32 @LockDatabaseObject(i32, i64, i32, i32) #1

declare dso_local i32 @pg_class_ownercheck(i64, i32) #1

declare dso_local i32 @get_relkind_objtype(i32) #1

declare dso_local i32 @get_rel_relkind(i64) #1

declare dso_local i32 @LockRelationOid(i64, i32) #1

declare dso_local i32 @RangeVarAdjustRelationPersistence(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
