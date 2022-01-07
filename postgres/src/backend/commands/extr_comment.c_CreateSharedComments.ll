; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_CreateSharedComments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_CreateSharedComments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@Natts_pg_shdescription = common dso_local global i32 0, align 4
@Anum_pg_shdescription_objoid = common dso_local global i32 0, align 4
@Anum_pg_shdescription_classoid = common dso_local global i32 0, align 4
@Anum_pg_shdescription_description = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@SharedDescriptionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@SharedDescriptionObjIndexId = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateSharedComments(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  %17 = load i32, i32* @Natts_pg_shdescription, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  %21 = load i32, i32* @Natts_pg_shdescription, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %14, align 8
  %24 = load i32, i32* @Natts_pg_shdescription, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* null, i8** %6, align 8
  br label %34

34:                                               ; preds = %33, %29, %3
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %34
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @Natts_pg_shdescription, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %23, i64 %44
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %26, i64 %47
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %38

52:                                               ; preds = %38
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ObjectIdGetDatum(i32 %53)
  %55 = load i32, i32* @Anum_pg_shdescription_objoid, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %20, i64 %57
  store i32 %54, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ObjectIdGetDatum(i32 %59)
  %61 = load i32, i32* @Anum_pg_shdescription_classoid, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %20, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @CStringGetTextDatum(i8* %65)
  %67 = load i32, i32* @Anum_pg_shdescription_description, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %20, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %52, %34
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %73 = load i32, i32* @Anum_pg_shdescription_objoid, align 4
  %74 = load i32, i32* @BTEqualStrategyNumber, align 4
  %75 = load i32, i32* @F_OIDEQ, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @ObjectIdGetDatum(i32 %76)
  %78 = call i32 @ScanKeyInit(i32* %72, i32 %73, i32 %74, i32 %75, i32 %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %80 = load i32, i32* @Anum_pg_shdescription_classoid, align 4
  %81 = load i32, i32* @BTEqualStrategyNumber, align 4
  %82 = load i32, i32* @F_OIDEQ, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @ObjectIdGetDatum(i32 %83)
  %85 = call i32 @ScanKeyInit(i32* %79, i32 %80, i32 %81, i32 %82, i32 %84)
  %86 = load i32, i32* @SharedDescriptionRelationId, align 4
  %87 = load i32, i32* @RowExclusiveLock, align 4
  %88 = call i32 @table_open(i32 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @SharedDescriptionObjIndexId, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %92 = call i32 @systable_beginscan(i32 %89, i32 %90, i32 1, i32* null, i32 2, i32* %91)
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %71
  %94 = load i32, i32* %9, align 4
  %95 = call %struct.TYPE_9__* @systable_getnext(i32 %94)
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %10, align 8
  %96 = icmp ne %struct.TYPE_9__* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = call i32 @CatalogTupleDelete(i32 %101, i32* %103)
  br label %115

105:                                              ; preds = %97
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @RelationGetDescr(i32 %107)
  %109 = call %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__* %106, i32 %108, i32* %20, i32* %23, i32* %26)
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %11, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %114 = call i32 @CatalogTupleUpdate(i32 %110, i32* %112, %struct.TYPE_9__* %113)
  br label %115

115:                                              ; preds = %105, %100
  br label %116

116:                                              ; preds = %115, %93
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @systable_endscan(i32 %117)
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %120 = icmp eq %struct.TYPE_9__* %119, null
  br i1 %120, label %121, label %131

121:                                              ; preds = %116
  %122 = load i8*, i8** %6, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @RelationGetDescr(i32 %125)
  %127 = call %struct.TYPE_9__* @heap_form_tuple(i32 %126, i32* %20, i32* %23)
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %11, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %130 = call i32 @CatalogTupleInsert(i32 %128, %struct.TYPE_9__* %129)
  br label %131

131:                                              ; preds = %124, %121, %116
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %133 = icmp ne %struct.TYPE_9__* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = call i32 @heap_freetuple(%struct.TYPE_9__* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @NoLock, align 4
  %140 = call i32 @table_close(i32 %138, i32 %139)
  %141 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %141)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @CStringGetTextDatum(i8*) #2

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #2

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #2

declare dso_local %struct.TYPE_9__* @systable_getnext(i32) #2

declare dso_local i32 @CatalogTupleDelete(i32, i32*) #2

declare dso_local %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_9__*) #2

declare dso_local i32 @systable_endscan(i32) #2

declare dso_local %struct.TYPE_9__* @heap_form_tuple(i32, i32*, i32*) #2

declare dso_local i32 @CatalogTupleInsert(i32, %struct.TYPE_9__*) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_9__*) #2

declare dso_local i32 @table_close(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
