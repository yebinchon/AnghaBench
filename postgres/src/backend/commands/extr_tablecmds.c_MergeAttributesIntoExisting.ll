; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_MergeAttributesIntoExisting.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_MergeAttributesIntoExisting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64, i64, i32, i32, i64, i64, i32 }

@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"child table \22%s\22 has different type for column \22%s\22\00", align 1
@ERRCODE_COLLATION_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"child table \22%s\22 has different collation for column \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"column \22%s\22 in child table must be marked NOT NULL\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"child table is missing column \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_24__*)* @MergeAttributesIntoExisting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MergeAttributesIntoExisting(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @AttributeRelationId, align 4
  %15 = load i32, i32* @RowExclusiveLock, align 4
  %16 = call %struct.TYPE_24__* @table_open(i32 %14, i32 %15)
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %5, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = call %struct.TYPE_23__* @RelationGetDescr(%struct.TYPE_24__* %17)
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %8, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %30

30:                                               ; preds = %29, %2
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %156, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %159

35:                                               ; preds = %31
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, 1
  %39 = call %struct.TYPE_26__* @TupleDescAttr(%struct.TYPE_23__* %36, i32 %38)
  store %struct.TYPE_26__* %39, %struct.TYPE_26__** %11, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @NameStr(i32 %42)
  store i8* %43, i8** %12, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %156

49:                                               ; preds = %35
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %51 = call i32 @RelationGetRelid(%struct.TYPE_24__* %50)
  %52 = load i8*, i8** %12, align 8
  %53 = call %struct.TYPE_25__* @SearchSysCacheCopyAttName(i32 %51, i8* %52)
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %9, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %55 = call i64 @HeapTupleIsValid(%struct.TYPE_25__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %148

57:                                               ; preds = %49
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %59 = call i32 @GETSTRUCT(%struct.TYPE_25__* %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %61, %struct.TYPE_26__** %13, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %57
  %70 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %72, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %69, %57
  %78 = load i32, i32* @ERROR, align 4
  %79 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %80 = call i32 @errcode(i32 %79)
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %82 = call i32 @RelationGetRelationName(%struct.TYPE_24__* %81)
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load i8*, i8** %12, align 8
  %86 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %84, i8* %85)
  %87 = call i32 @ereport(i32 %78, i32 %86)
  br label %88

88:                                               ; preds = %77, %69
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %91, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load i32, i32* @ERROR, align 4
  %98 = load i32, i32* @ERRCODE_COLLATION_MISMATCH, align 4
  %99 = call i32 @errcode(i32 %98)
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = call i32 @RelationGetRelationName(%struct.TYPE_24__* %100)
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %103, i8* %104)
  %106 = call i32 @ereport(i32 %97, i32 %105)
  br label %107

107:                                              ; preds = %96, %88
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* @ERROR, align 4
  %119 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %120 = call i32 @errcode(i32 %119)
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %121)
  %123 = call i32 @ereport(i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %117, %112, %107
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 1
  %136 = zext i1 %135 to i32
  %137 = call i32 @Assert(i32 %136)
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 4
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %131, %124
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %145 = call i32 @CatalogTupleUpdate(%struct.TYPE_24__* %141, i32* %143, %struct.TYPE_25__* %144)
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %147 = call i32 @heap_freetuple(%struct.TYPE_25__* %146)
  br label %155

148:                                              ; preds = %49
  %149 = load i32, i32* @ERROR, align 4
  %150 = load i32, i32* @ERRCODE_DATATYPE_MISMATCH, align 4
  %151 = call i32 @errcode(i32 %150)
  %152 = load i8*, i8** %12, align 8
  %153 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %152)
  %154 = call i32 @ereport(i32 %149, i32 %153)
  br label %155

155:                                              ; preds = %148, %140
  br label %156

156:                                              ; preds = %155, %48
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %31

159:                                              ; preds = %31
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %161 = load i32, i32* @RowExclusiveLock, align 4
  %162 = call i32 @table_close(%struct.TYPE_24__* %160, i32 %161)
  ret void
}

declare dso_local %struct.TYPE_24__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_23__* @RelationGetDescr(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_26__* @TupleDescAttr(%struct.TYPE_23__*, i32) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local %struct.TYPE_25__* @SearchSysCacheCopyAttName(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_24__*) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_25__*) #1

declare dso_local i32 @GETSTRUCT(%struct.TYPE_25__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_24__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_24__*, i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_25__*) #1

declare dso_local i32 @table_close(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
