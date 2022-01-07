; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@Natts_pg_attribute = common dso_local global i32 0, align 4
@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot alter system column \22%s\22\00", align 1
@ATTNAME = common dso_local global i32 0, align 4
@Anum_pg_attribute_attoptions = common dso_local global i32 0, align 4
@List = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32*, i32, i32)* @ATExecSetOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecSetOptions(i32 %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %24 = load i32, i32* @Natts_pg_attribute, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %20, align 8
  %27 = alloca i64, i64 %25, align 16
  store i64 %25, i64* %21, align 8
  %28 = load i32, i32* @Natts_pg_attribute, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %22, align 8
  %31 = load i32, i32* @Natts_pg_attribute, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %23, align 8
  %34 = load i32, i32* @AttributeRelationId, align 4
  %35 = load i32, i32* @RowExclusiveLock, align 4
  %36 = call i32 @table_open(i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @RelationGetRelid(i32 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = call %struct.TYPE_12__* @SearchSysCacheAttName(i32 %38, i8* %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %12, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %42 = call i32 @HeapTupleIsValid(%struct.TYPE_12__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %5
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @RelationGetRelationName(i32 %49)
  %51 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %48, i32 %50)
  %52 = call i32 @ereport(i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %44, %5
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %55 = call i64 @GETSTRUCT(%struct.TYPE_12__* %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %14, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* @ERROR, align 4
  %64 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %65 = call i32 @errcode(i32 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  %68 = call i32 @ereport(i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %62, %53
  %70 = load i32, i32* @ATTNAME, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %72 = load i32, i32* @Anum_pg_attribute_attoptions, align 4
  %73 = call i64 @SysCacheGetAttr(i32 %70, %struct.TYPE_12__* %71, i32 %72, i32* %18)
  store i64 %73, i64* %16, align 8
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %79

77:                                               ; preds = %69
  %78 = load i64, i64* %16, align 8
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i64 [ 0, %76 ], [ %78, %77 ]
  %81 = load i32, i32* @List, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @castNode(i32 %81, i32* %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @transformRelOptions(i64 %80, i32 %83, i32* null, i32* null, i32 0, i32 %84)
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @attribute_reloptions(i64 %86, i32 1)
  %88 = mul nuw i64 4, %29
  %89 = trunc i64 %88 to i32
  %90 = call i32 @memset(i32* %30, i32 0, i32 %89)
  %91 = mul nuw i64 4, %32
  %92 = trunc i64 %91 to i32
  %93 = call i32 @memset(i32* %33, i32 0, i32 %92)
  %94 = load i64, i64* %17, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %79
  %97 = load i64, i64* %17, align 8
  %98 = load i32, i32* @Anum_pg_attribute_attoptions, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %27, i64 %100
  store i64 %97, i64* %101, align 8
  br label %107

102:                                              ; preds = %79
  %103 = load i32, i32* @Anum_pg_attribute_attoptions, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %30, i64 %105
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %96
  %108 = load i32, i32* @Anum_pg_attribute_attoptions, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %33, i64 %110
  store i32 1, i32* %111, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @RelationGetDescr(i32 %113)
  %115 = call %struct.TYPE_12__* @heap_modify_tuple(%struct.TYPE_12__* %112, i32 %114, i64* %27, i32* %30, i32* %33)
  store %struct.TYPE_12__* %115, %struct.TYPE_12__** %13, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = call i32 @CatalogTupleUpdate(i32 %116, i32* %118, %struct.TYPE_12__* %119)
  %121 = load i32, i32* @RelationRelationId, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @RelationGetRelid(i32 %122)
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @InvokeObjectPostAlterHook(i32 %121, i32 %123, i64 %126)
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @RelationRelationId, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @RelationGetRelid(i32 %130)
  %132 = load i64, i64* %15, align 8
  %133 = call i32 @ObjectAddressSubSet(i32 %128, i32 %129, i32 %131, i64 %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %135 = call i32 @heap_freetuple(%struct.TYPE_12__* %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = call i32 @ReleaseSysCache(%struct.TYPE_12__* %136)
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @RowExclusiveLock, align 4
  %140 = call i32 @table_close(i32 %138, i32 %139)
  %141 = load i32, i32* %19, align 4
  %142 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %142)
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @table_open(i32, i32) #2

declare dso_local %struct.TYPE_12__* @SearchSysCacheAttName(i32, i8*) #2

declare dso_local i32 @RelationGetRelid(i32) #2

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_12__*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @RelationGetRelationName(i32) #2

declare dso_local i64 @GETSTRUCT(%struct.TYPE_12__*) #2

declare dso_local i64 @SysCacheGetAttr(i32, %struct.TYPE_12__*, i32, i32*) #2

declare dso_local i64 @transformRelOptions(i64, i32, i32*, i32*, i32, i32) #2

declare dso_local i32 @castNode(i32, i32*) #2

declare dso_local i32 @attribute_reloptions(i64, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local %struct.TYPE_12__* @heap_modify_tuple(%struct.TYPE_12__*, i32, i64*, i32*, i32*) #2

declare dso_local i32 @RelationGetDescr(i32) #2

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_12__*) #2

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i64) #2

declare dso_local i32 @ObjectAddressSubSet(i32, i32, i32, i64) #2

declare dso_local i32 @heap_freetuple(%struct.TYPE_12__*) #2

declare dso_local i32 @ReleaseSysCache(%struct.TYPE_12__*) #2

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
