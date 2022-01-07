; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_ExecAlterExtensionContentsStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_ExecAlterExtensionContentsStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64 }

@ExtensionRelationId = common dso_local global i64 0, align 8
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@OBJECT_EXTENSION = common dso_local global i32 0, align 4
@ShareUpdateExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s is already a member of extension \22%s\22\00", align 1
@NamespaceRelationId = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"cannot add schema \22%s\22 to extension \22%s\22 because the schema contains the extension\00", align 1
@DEPENDENCY_EXTENSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"%s is not a member of extension \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"unexpected number of extension dependency records\00", align 1
@RelationRelationId = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecAlterExtensionContentsStmt(%struct.TYPE_11__* noalias sret %0, %struct.TYPE_12__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %5, align 8
  %10 = load i64, i64* @ExtensionRelationId, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @get_extension_oid(i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  store i64 %15, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (...) @GetUserId()
  %21 = call i32 @pg_extension_ownercheck(i64 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %25 = load i32, i32* @OBJECT_EXTENSION, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @aclcheck_error(i32 %24, i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %23, %3
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ShareUpdateExclusiveLock, align 4
  call void @get_object_address(%struct.TYPE_11__* sret %9, i32 %33, i32 %36, i32** %7, i32 %37, i32 0)
  %38 = bitcast %struct.TYPE_11__* %6 to i8*
  %39 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 24, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @Assert(i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %30
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = bitcast %struct.TYPE_11__* %48 to i8*
  %50 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 24, i1 false)
  br label %51

51:                                               ; preds = %47, %30
  %52 = call i32 (...) @GetUserId()
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @check_object_ownership(i32 %52, i32 %55, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %6, i32 %58, i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @getExtensionOfObject(i64 %62, i64 %64)
  store i64 %65, i64* %8, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %51
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @OidIsValid(i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32, i32* @ERROR, align 4
  %76 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %77 = call i32 @errcode(i32 %76)
  %78 = call i32 @getObjectDescription(%struct.TYPE_11__* %6)
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @get_extension_name(i64 %79)
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %80)
  %82 = call i32 @ereport(i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %74, %70
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NamespaceRelationId, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @get_extension_schema(i64 %92)
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load i32, i32* @ERROR, align 4
  %97 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %98 = call i32 @errcode(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @get_namespace_name(i64 %100)
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @errmsg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  %106 = call i32 @ereport(i32 %96, i32 %105)
  br label %107

107:                                              ; preds = %95, %88, %83
  %108 = load i32, i32* @DEPENDENCY_EXTENSION, align 4
  %109 = call i32 @recordDependencyOn(%struct.TYPE_11__* %6, %struct.TYPE_11__* %0, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @recordExtObjInitPriv(i64 %111, i64 %113)
  br label %159

115:                                              ; preds = %51
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %116, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load i32, i32* @ERROR, align 4
  %122 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %123 = call i32 @errcode(i32 %122)
  %124 = call i32 @getObjectDescription(%struct.TYPE_11__* %6)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @errmsg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %127)
  %129 = call i32 @ereport(i32 %121, i32 %128)
  br label %130

130:                                              ; preds = %120, %115
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ExtensionRelationId, align 8
  %136 = load i32, i32* @DEPENDENCY_EXTENSION, align 4
  %137 = call i32 @deleteDependencyRecordsForClass(i64 %132, i64 %134, i64 %135, i32 %136)
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %142

139:                                              ; preds = %130
  %140 = load i32, i32* @ERROR, align 4
  %141 = call i32 @elog(i32 %140, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %142

142:                                              ; preds = %139, %130
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @RelationRelationId, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @extension_config_remove(i64 %149, i64 %151)
  br label %153

153:                                              ; preds = %147, %142
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @removeExtObjInitPriv(i64 %155, i64 %157)
  br label %159

159:                                              ; preds = %153, %107
  %160 = load i64, i64* @ExtensionRelationId, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @InvokeObjectPostAlterHook(i64 %160, i64 %162, i32 0)
  %164 = load i32*, i32** %7, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i32*, i32** %7, align 8
  %168 = load i32, i32* @NoLock, align 4
  %169 = call i32 @relation_close(i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %159
  ret void
}

declare dso_local i64 @get_extension_oid(i32, i32) #1

declare dso_local i32 @pg_extension_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local void @get_object_address(%struct.TYPE_11__* sret, i32, i32, i32**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @check_object_ownership(i32, i32, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, i32, i32*) #1

declare dso_local i64 @getExtensionOfObject(i64, i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @getObjectDescription(%struct.TYPE_11__*) #1

declare dso_local i32 @get_extension_name(i64) #1

declare dso_local i64 @get_extension_schema(i64) #1

declare dso_local i32 @get_namespace_name(i64) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @recordExtObjInitPriv(i64, i64) #1

declare dso_local i32 @deleteDependencyRecordsForClass(i64, i64, i64, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @extension_config_remove(i64, i64) #1

declare dso_local i32 @removeExtObjInitPriv(i64, i64) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i64, i64, i32) #1

declare dso_local i32 @relation_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
