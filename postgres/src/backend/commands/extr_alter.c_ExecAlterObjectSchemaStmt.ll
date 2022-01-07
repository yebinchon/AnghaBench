; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecAlterObjectSchemaStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecAlterObjectSchemaStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64 }

@List = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unrecognized AlterObjectSchemaStmt type: %d\00", align 1
@InvalidObjectAddress = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@NamespaceRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ExecAlterObjectSchemaStmt(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_13__, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca %struct.TYPE_13__, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %105 [
    i32 145, label %19
    i32 144, label %38
    i32 136, label %38
    i32 134, label %38
    i32 128, label %38
    i32 142, label %38
    i32 146, label %50
    i32 129, label %50
    i32 149, label %72
    i32 148, label %72
    i32 147, label %72
    i32 143, label %72
    i32 140, label %72
    i32 141, label %72
    i32 139, label %72
    i32 138, label %72
    i32 137, label %72
    i32 135, label %72
    i32 133, label %72
    i32 132, label %72
    i32 131, label %72
    i32 130, label %72
  ]

19:                                               ; preds = %2
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = call i32 @strVal(i32* %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %30
  %33 = phi i32* [ %7, %30 ], [ null, %31 ]
  %34 = call i64 @AlterExtensionNamespace(i32 %24, i32 %27, i32* %33)
  %35 = bitcast %struct.TYPE_13__* %8 to i64*
  store i64 %34, i64* %35, align 4
  %36 = bitcast %struct.TYPE_13__* %6 to i8*
  %37 = bitcast %struct.TYPE_13__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 8, i1 false)
  br label %112

38:                                               ; preds = %2, %2, %2, %2, %2
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %44

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi i32* [ %7, %42 ], [ null, %43 ]
  %46 = call i64 @AlterTableNamespace(%struct.TYPE_14__* %39, i32* %45)
  %47 = bitcast %struct.TYPE_13__* %9 to i64*
  store i64 %46, i64* %47, align 4
  %48 = bitcast %struct.TYPE_13__* %6 to i8*
  %49 = bitcast %struct.TYPE_13__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  br label %112

50:                                               ; preds = %2, %2
  %51 = load i32, i32* @List, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @castNode(i32 %51, i64 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %66

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %64
  %67 = phi i32* [ %7, %64 ], [ null, %65 ]
  %68 = call i64 @AlterTypeNamespace(i32 %55, i32 %58, i32 %61, i32* %67)
  %69 = bitcast %struct.TYPE_13__* %10 to i64*
  store i64 %68, i64* %69, align 4
  %70 = bitcast %struct.TYPE_13__* %6 to i8*
  %71 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 8, i1 false)
  br label %112

72:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @AccessExclusiveLock, align 4
  %80 = call i64 @get_object_address(i32 %75, i64 %78, i32** %12, i32 %79, i32 0)
  %81 = bitcast %struct.TYPE_13__* %15 to i64*
  store i64 %80, i64* %81, align 4
  %82 = bitcast %struct.TYPE_13__* %6 to i8*
  %83 = bitcast %struct.TYPE_13__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  %84 = load i32*, i32** %12, align 8
  %85 = icmp eq i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @Assert(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @RowExclusiveLock, align 4
  %92 = call i32* @table_open(i32 %90, i32 %91)
  store i32* %92, i32** %11, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @LookupCreationNamespace(i32 %95)
  store i32 %96, i32* %14, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @AlterObjectNamespace_internal(i32* %97, i32 %99, i32 %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* @RowExclusiveLock, align 4
  %104 = call i32 @table_close(i32* %102, i32 %103)
  br label %112

105:                                              ; preds = %2
  %106 = load i32, i32* @ERROR, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @elog(i32 %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = bitcast %struct.TYPE_13__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 bitcast (%struct.TYPE_13__* @InvalidObjectAddress to i8*), i64 8, i1 false)
  br label %125

112:                                              ; preds = %72, %66, %44, %32
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = icmp ne %struct.TYPE_13__* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = load i32, i32* @NamespaceRelationId, align 4
  %118 = load i32, i32* %7, align 4
  %119 = bitcast %struct.TYPE_13__* %116 to i64*
  %120 = load i64, i64* %119, align 4
  %121 = call i32 @ObjectAddressSet(i64 %120, i32 %117, i32 %118)
  br label %122

122:                                              ; preds = %115, %112
  %123 = bitcast %struct.TYPE_13__* %3 to i8*
  %124 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 8, i1 false)
  br label %125

125:                                              ; preds = %122, %105
  %126 = bitcast %struct.TYPE_13__* %3 to i64*
  %127 = load i64, i64* %126, align 4
  ret i64 %127
}

declare dso_local i64 @AlterExtensionNamespace(i32, i32, i32*) #1

declare dso_local i32 @strVal(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @AlterTableNamespace(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @AlterTypeNamespace(i32, i32, i32, i32*) #1

declare dso_local i32 @castNode(i32, i64) #1

declare dso_local i64 @get_object_address(i32, i64, i32**, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @table_open(i32, i32) #1

declare dso_local i32 @LookupCreationNamespace(i32) #1

declare dso_local i32 @AlterObjectNamespace_internal(i32*, i32, i32) #1

declare dso_local i32 @table_close(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @ObjectAddressSet(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
