; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecRenameStmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_alter.c_ExecRenameStmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }

@AccessExclusiveLock = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unrecognized rename stmt type: %d\00", align 1
@InvalidObjectAddress = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ExecRenameStmt(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_25__, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_25__, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %112 [
    i32 137, label %10
    i32 158, label %10
    i32 160, label %14
    i32 144, label %23
    i32 141, label %32
    i32 135, label %41
    i32 136, label %50
    i32 140, label %50
    i32 128, label %50
    i32 150, label %50
    i32 152, label %50
    i32 154, label %50
    i32 162, label %54
    i32 164, label %54
    i32 142, label %58
    i32 134, label %70
    i32 147, label %74
    i32 159, label %78
    i32 129, label %78
    i32 165, label %82
    i32 163, label %82
    i32 161, label %82
    i32 157, label %82
    i32 156, label %82
    i32 155, label %82
    i32 153, label %82
    i32 149, label %82
    i32 148, label %82
    i32 151, label %82
    i32 146, label %82
    i32 143, label %82
    i32 139, label %82
    i32 133, label %82
    i32 132, label %82
    i32 131, label %82
    i32 130, label %82
    i32 145, label %82
    i32 138, label %82
  ]

10:                                               ; preds = %1, %1
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = call i64 @RenameConstraint(%struct.TYPE_24__* %11)
  %13 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %12, i64* %13, align 4
  br label %119

14:                                               ; preds = %1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @RenameDatabase(i32 %17, i32 %20)
  %22 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %21, i64* %22, align 4
  br label %119

23:                                               ; preds = %1
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @RenameRole(i32 %26, i32 %29)
  %31 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %30, i64* %31, align 4
  br label %119

32:                                               ; preds = %1
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @RenameSchema(i32 %35, i32 %38)
  %40 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %39, i64* %40, align 4
  br label %119

41:                                               ; preds = %1
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @RenameTableSpace(i32 %44, i32 %47)
  %49 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %48, i64* %49, align 4
  br label %119

50:                                               ; preds = %1, %1, %1, %1, %1, %1
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %52 = call i64 @RenameRelation(%struct.TYPE_24__* %51)
  %53 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %52, i64* %53, align 4
  br label %119

54:                                               ; preds = %1, %1
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = call i64 @renameatt(%struct.TYPE_24__* %55)
  %57 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %56, i64* %57, align 4
  br label %119

58:                                               ; preds = %1
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @RenameRewriteRule(i32 %61, i32 %64, i32 %67)
  %69 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %68, i64* %69, align 4
  br label %119

70:                                               ; preds = %1
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %72 = call i64 @renametrig(%struct.TYPE_24__* %71)
  %73 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %72, i64* %73, align 4
  br label %119

74:                                               ; preds = %1
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %76 = call i64 @rename_policy(%struct.TYPE_24__* %75)
  %77 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %76, i64* %77, align 4
  br label %119

78:                                               ; preds = %1, %1
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %80 = call i64 @RenameType(%struct.TYPE_24__* %79)
  %81 = bitcast %struct.TYPE_25__* %2 to i64*
  store i64 %80, i64* %81, align 4
  br label %119

82:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @AccessExclusiveLock, align 4
  %90 = call i64 @get_object_address(i32 %85, i32 %88, i32** %5, i32 %89, i32 0)
  %91 = bitcast %struct.TYPE_25__* %6 to i64*
  store i64 %90, i64* %91, align 4
  %92 = bitcast %struct.TYPE_25__* %2 to i8*
  %93 = bitcast %struct.TYPE_25__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 8, i1 false)
  %94 = load i32*, i32** %5, align 8
  %95 = icmp eq i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 @Assert(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %2, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @RowExclusiveLock, align 4
  %101 = call i32* @table_open(i32 %99, i32 %100)
  store i32* %101, i32** %4, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %2, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @AlterObjectRename_internal(i32* %102, i32 %104, i32 %107)
  %109 = load i32*, i32** %4, align 8
  %110 = load i32, i32* @RowExclusiveLock, align 4
  %111 = call i32 @table_close(i32* %109, i32 %110)
  br label %119

112:                                              ; preds = %1
  %113 = load i32, i32* @ERROR, align 4
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = bitcast %struct.TYPE_25__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 bitcast (%struct.TYPE_25__* @InvalidObjectAddress to i8*), i64 8, i1 false)
  br label %119

119:                                              ; preds = %112, %82, %78, %74, %70, %58, %54, %50, %41, %32, %23, %14, %10
  %120 = bitcast %struct.TYPE_25__* %2 to i64*
  %121 = load i64, i64* %120, align 4
  ret i64 %121
}

declare dso_local i64 @RenameConstraint(%struct.TYPE_24__*) #1

declare dso_local i64 @RenameDatabase(i32, i32) #1

declare dso_local i64 @RenameRole(i32, i32) #1

declare dso_local i64 @RenameSchema(i32, i32) #1

declare dso_local i64 @RenameTableSpace(i32, i32) #1

declare dso_local i64 @RenameRelation(%struct.TYPE_24__*) #1

declare dso_local i64 @renameatt(%struct.TYPE_24__*) #1

declare dso_local i64 @RenameRewriteRule(i32, i32, i32) #1

declare dso_local i64 @renametrig(%struct.TYPE_24__*) #1

declare dso_local i64 @rename_policy(%struct.TYPE_24__*) #1

declare dso_local i64 @RenameType(%struct.TYPE_24__*) #1

declare dso_local i64 @get_object_address(i32, i32, i32**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @table_open(i32, i32) #1

declare dso_local i32 @AlterObjectRename_internal(i32*, i32, i32) #1

declare dso_local i32 @table_close(i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
