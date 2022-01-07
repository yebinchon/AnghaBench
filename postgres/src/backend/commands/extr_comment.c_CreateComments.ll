; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_CreateComments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_comment.c_CreateComments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@Natts_pg_description = common dso_local global i32 0, align 4
@Anum_pg_description_objoid = common dso_local global i32 0, align 4
@Anum_pg_description_classoid = common dso_local global i32 0, align 4
@Anum_pg_description_objsubid = common dso_local global i32 0, align 4
@Anum_pg_description_description = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@F_INT4EQ = common dso_local global i32 0, align 4
@DescriptionRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@DescriptionObjIndexId = common dso_local global i32 0, align 4
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateComments(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %13, align 8
  %19 = load i32, i32* @Natts_pg_description, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @Natts_pg_description, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %26 = load i32, i32* @Natts_pg_description, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i8* null, i8** %8, align 8
  br label %36

36:                                               ; preds = %35, %31, %4
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %79

39:                                               ; preds = %36
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %51, %39
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @Natts_pg_description, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %25, i64 %46
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %28, i64 %49
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %18, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %18, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ObjectIdGetDatum(i32 %55)
  %57 = load i32, i32* @Anum_pg_description_objoid, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %22, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ObjectIdGetDatum(i32 %61)
  %63 = load i32, i32* @Anum_pg_description_classoid, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %22, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @Int32GetDatum(i32 %67)
  %69 = load i32, i32* @Anum_pg_description_objsubid, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %22, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @CStringGetTextDatum(i8* %73)
  %75 = load i32, i32* @Anum_pg_description_description, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %22, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %54, %36
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %81 = load i32, i32* @Anum_pg_description_objoid, align 4
  %82 = load i32, i32* @BTEqualStrategyNumber, align 4
  %83 = load i32, i32* @F_OIDEQ, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ObjectIdGetDatum(i32 %84)
  %86 = call i32 @ScanKeyInit(i32* %80, i32 %81, i32 %82, i32 %83, i32 %85)
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %88 = load i32, i32* @Anum_pg_description_classoid, align 4
  %89 = load i32, i32* @BTEqualStrategyNumber, align 4
  %90 = load i32, i32* @F_OIDEQ, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @ObjectIdGetDatum(i32 %91)
  %93 = call i32 @ScanKeyInit(i32* %87, i32 %88, i32 %89, i32 %90, i32 %92)
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %95 = load i32, i32* @Anum_pg_description_objsubid, align 4
  %96 = load i32, i32* @BTEqualStrategyNumber, align 4
  %97 = load i32, i32* @F_INT4EQ, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @Int32GetDatum(i32 %98)
  %100 = call i32 @ScanKeyInit(i32* %94, i32 %95, i32 %96, i32 %97, i32 %99)
  %101 = load i32, i32* @DescriptionRelationId, align 4
  %102 = load i32, i32* @RowExclusiveLock, align 4
  %103 = call i32 @table_open(i32 %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @DescriptionObjIndexId, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %107 = call i32 @systable_beginscan(i32 %104, i32 %105, i32 1, i32* null, i32 3, i32* %106)
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %79
  %109 = load i32, i32* %11, align 4
  %110 = call %struct.TYPE_9__* @systable_getnext(i32 %109)
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %12, align 8
  %111 = icmp ne %struct.TYPE_9__* %110, null
  br i1 %111, label %112, label %131

112:                                              ; preds = %108
  %113 = load i8*, i8** %8, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = call i32 @CatalogTupleDelete(i32 %116, i32* %118)
  br label %130

120:                                              ; preds = %112
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @RelationGetDescr(i32 %122)
  %124 = call %struct.TYPE_9__* @heap_modify_tuple(%struct.TYPE_9__* %121, i32 %123, i32* %22, i32* %25, i32* %28)
  store %struct.TYPE_9__* %124, %struct.TYPE_9__** %13, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %129 = call i32 @CatalogTupleUpdate(i32 %125, i32* %127, %struct.TYPE_9__* %128)
  br label %130

130:                                              ; preds = %120, %115
  br label %131

131:                                              ; preds = %130, %108
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @systable_endscan(i32 %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %135 = icmp eq %struct.TYPE_9__* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load i8*, i8** %8, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @RelationGetDescr(i32 %140)
  %142 = call %struct.TYPE_9__* @heap_form_tuple(i32 %141, i32* %22, i32* %25)
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %13, align 8
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %145 = call i32 @CatalogTupleInsert(i32 %143, %struct.TYPE_9__* %144)
  br label %146

146:                                              ; preds = %139, %136, %131
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %148 = icmp ne %struct.TYPE_9__* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %151 = call i32 @heap_freetuple(%struct.TYPE_9__* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @NoLock, align 4
  %155 = call i32 @table_close(i32 %153, i32 %154)
  %156 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %156)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ObjectIdGetDatum(i32) #2

declare dso_local i32 @Int32GetDatum(i32) #2

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
