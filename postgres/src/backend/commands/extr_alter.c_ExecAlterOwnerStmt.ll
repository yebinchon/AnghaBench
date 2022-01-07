; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecAlterOwnerStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecAlterOwnerStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32 }

@List = common dso_local global i32 0, align 4
@AccessExclusiveLock = common dso_local global i32 0, align 4
@LargeObjectRelationId = common dso_local global i32 0, align 4
@LargeObjectMetadataRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unrecognized AlterOwnerStmt type: %d\00", align 1
@InvalidObjectAddress = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ExecAlterOwnerStmt(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_15__, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @get_rolespec_oid(i32 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %126 [
    i32 148, label %16
    i32 134, label %25
    i32 128, label %34
    i32 147, label %34
    i32 145, label %46
    i32 144, label %55
    i32 146, label %64
    i32 136, label %73
    i32 132, label %82
    i32 151, label %91
    i32 150, label %91
    i32 149, label %91
    i32 143, label %91
    i32 142, label %91
    i32 141, label %91
    i32 139, label %91
    i32 140, label %91
    i32 138, label %91
    i32 137, label %91
    i32 135, label %91
    i32 133, label %91
    i32 131, label %91
    i32 129, label %91
    i32 130, label %91
  ]

16:                                               ; preds = %1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @strVal(i32* %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @AlterDatabaseOwner(i32 %21, i32 %22)
  %24 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %23, i64* %24, align 4
  br label %133

25:                                               ; preds = %1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = call i32 @strVal(i32* %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @AlterSchemaOwner(i32 %30, i32 %31)
  %33 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %32, i64* %33, align 4
  br label %133

34:                                               ; preds = %1, %1
  %35 = load i32, i32* @List, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @castNode(i32 %35, i64 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @AlterTypeOwner(i32 %39, i32 %40, i32 %43)
  %45 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %44, i64* %45, align 4
  br label %133

46:                                               ; preds = %1
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = call i32 @strVal(i32* %50)
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @AlterForeignDataWrapperOwner(i32 %51, i32 %52)
  %54 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %53, i64* %54, align 4
  br label %133

55:                                               ; preds = %1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @strVal(i32* %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @AlterForeignServerOwner(i32 %60, i32 %61)
  %63 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %62, i64* %63, align 4
  br label %133

64:                                               ; preds = %1
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = call i32 @strVal(i32* %68)
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @AlterEventTriggerOwner(i32 %69, i32 %70)
  %72 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %71, i64* %72, align 4
  br label %133

73:                                               ; preds = %1
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @strVal(i32* %77)
  %79 = load i32, i32* %4, align 4
  %80 = call i64 @AlterPublicationOwner(i32 %78, i32 %79)
  %81 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %80, i64* %81, align 4
  br label %133

82:                                               ; preds = %1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = call i32 @strVal(i32* %86)
  %88 = load i32, i32* %4, align 4
  %89 = call i64 @AlterSubscriptionOwner(i32 %87, i32 %88)
  %90 = bitcast %struct.TYPE_15__* %2 to i64*
  store i64 %89, i64* %90, align 4
  br label %133

91:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @AccessExclusiveLock, align 4
  %99 = call i64 @get_object_address(i32 %94, i64 %97, i32** %6, i32 %98, i32 0)
  %100 = bitcast %struct.TYPE_15__* %8 to i64*
  store i64 %99, i64* %100, align 4
  %101 = bitcast %struct.TYPE_15__* %2 to i8*
  %102 = bitcast %struct.TYPE_15__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 8, i1 false)
  %103 = load i32*, i32** %6, align 8
  %104 = icmp eq i32* %103, null
  %105 = zext i1 %104 to i32
  %106 = call i32 @Assert(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @LargeObjectRelationId, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %91
  %113 = load i32, i32* @LargeObjectMetadataRelationId, align 4
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %112, %91
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @RowExclusiveLock, align 4
  %117 = call i32* @table_open(i32 %115, i32 %116)
  store i32* %117, i32** %5, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %2, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @AlterObjectOwner_internal(i32* %118, i32 %120, i32 %121)
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* @RowExclusiveLock, align 4
  %125 = call i32 @table_close(i32* %123, i32 %124)
  br label %133

126:                                              ; preds = %1
  %127 = load i32, i32* @ERROR, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @elog(i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = bitcast %struct.TYPE_15__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 bitcast (%struct.TYPE_15__* @InvalidObjectAddress to i8*), i64 8, i1 false)
  br label %133

133:                                              ; preds = %126, %114, %82, %73, %64, %55, %46, %34, %25, %16
  %134 = bitcast %struct.TYPE_15__* %2 to i64*
  %135 = load i64, i64* %134, align 4
  ret i64 %135
}

declare dso_local i32 @get_rolespec_oid(i32, i32) #1

declare dso_local i64 @AlterDatabaseOwner(i32, i32) #1

declare dso_local i32 @strVal(i32*) #1

declare dso_local i64 @AlterSchemaOwner(i32, i32) #1

declare dso_local i64 @AlterTypeOwner(i32, i32, i32) #1

declare dso_local i32 @castNode(i32, i64) #1

declare dso_local i64 @AlterForeignDataWrapperOwner(i32, i32) #1

declare dso_local i64 @AlterForeignServerOwner(i32, i32) #1

declare dso_local i64 @AlterEventTriggerOwner(i32, i32) #1

declare dso_local i64 @AlterPublicationOwner(i32, i32) #1

declare dso_local i64 @AlterSubscriptionOwner(i32, i32) #1

declare dso_local i64 @get_object_address(i32, i64, i32**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @table_open(i32, i32) #1

declare dso_local i32 @AlterObjectOwner_internal(i32*, i32, i32) #1

declare dso_local i32 @table_close(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
