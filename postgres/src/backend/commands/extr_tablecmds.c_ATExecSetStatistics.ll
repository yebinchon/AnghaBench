; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetStatistics.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecSetStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }

@Integer = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"statistics target %d is too low\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"lowering statistics target to %d\00", align 1
@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"column number %d of relation \22%s\22 does not exist\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot alter system column \22%s\22\00", align 1
@RELKIND_INDEX = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [62 x i8] c"cannot alter statistics on included column \22%s\22 of index \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"cannot alter statistics on non-expression column \22%s\22 of index \22%s\22\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Alter statistics on table column instead.\00", align 1
@RelationRelationId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i8*, i8*, i32*, i32)* @ATExecSetStatistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ATExecSetStatistics(%struct.TYPE_22__* %0, i8* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* @Integer, align 4
  %19 = call i32 @IsA(i32* %17, i32 %18)
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @intVal(i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = call i32 @ereport(i32 %26, i32 %30)
  br label %43

32:                                               ; preds = %5
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 10000
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  store i32 10000, i32* %11, align 4
  %36 = load i32, i32* @WARNING, align 4
  %37 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @ereport(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* @AttributeRelationId, align 4
  %45 = load i32, i32* @RowExclusiveLock, align 4
  %46 = call %struct.TYPE_22__* @table_open(i32 %44, i32 %45)
  store %struct.TYPE_22__* %46, %struct.TYPE_22__** %12, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = call i32 @RelationGetRelid(%struct.TYPE_22__* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = call %struct.TYPE_23__* @SearchSysCacheCopyAttName(i32 %51, i8* %52)
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %13, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %55 = call i32 @HeapTupleIsValid(%struct.TYPE_23__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = load i8*, i8** %7, align 8
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %63 = call i32 @RelationGetRelationName(%struct.TYPE_22__* %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 %63)
  %65 = call i32 @ereport(i32 %58, i32 %64)
  br label %66

66:                                               ; preds = %57, %49
  br label %85

67:                                               ; preds = %43
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %69 = call i32 @RelationGetRelid(%struct.TYPE_22__* %68)
  %70 = load i8*, i8** %8, align 8
  %71 = call %struct.TYPE_23__* @SearchSysCacheCopyAttNum(i32 %69, i8* %70)
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %13, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %73 = call i32 @HeapTupleIsValid(%struct.TYPE_23__* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = call i32 @RelationGetRelationName(%struct.TYPE_22__* %80)
  %82 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %79, i32 %81)
  %83 = call i32 @ereport(i32 %76, i32 %82)
  br label %84

84:                                               ; preds = %75, %67
  br label %85

85:                                               ; preds = %84, %66
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %87 = call i64 @GETSTRUCT(%struct.TYPE_23__* %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %14, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load i32, i32* @ERROR, align 4
  %96 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %97 = call i32 @errcode(i32 %96)
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  %100 = call i32 @ereport(i32 %95, i32 %99)
  br label %101

101:                                              ; preds = %94, %85
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @RELKIND_INDEX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %101
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %165

117:                                              ; preds = %109, %101
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp sgt i32 %118, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %117
  %126 = load i32, i32* @ERROR, align 4
  %127 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %128 = call i32 @errcode(i32 %127)
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @NameStr(i32 %131)
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %134 = call i32 @RelationGetRelationName(%struct.TYPE_22__* %133)
  %135 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i8* %132, i32 %134)
  %136 = call i32 @ereport(i32 %126, i32 %135)
  br label %164

137:                                              ; preds = %117
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sub nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %137
  %151 = load i32, i32* @ERROR, align 4
  %152 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %153 = call i32 @errcode(i32 %152)
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @NameStr(i32 %156)
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %159 = call i32 @RelationGetRelationName(%struct.TYPE_22__* %158)
  %160 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i8* %157, i32 %159)
  %161 = call i32 @errhint(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %162 = call i32 @ereport(i32 %151, i32 %161)
  br label %163

163:                                              ; preds = %150, %137
  br label %164

164:                                              ; preds = %163, %125
  br label %165

165:                                              ; preds = %164, %109
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %173 = call i32 @CatalogTupleUpdate(%struct.TYPE_22__* %169, i32* %171, %struct.TYPE_23__* %172)
  %174 = load i32, i32* @RelationRelationId, align 4
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %176 = call i32 @RelationGetRelid(%struct.TYPE_22__* %175)
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @InvokeObjectPostAlterHook(i32 %174, i32 %176, i32 %179)
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* @RelationRelationId, align 4
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %184 = call i32 @RelationGetRelid(%struct.TYPE_22__* %183)
  %185 = load i32, i32* %15, align 4
  %186 = call i32 @ObjectAddressSubSet(i32 %181, i32 %182, i32 %184, i32 %185)
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %188 = call i32 @heap_freetuple(%struct.TYPE_23__* %187)
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %190 = load i32, i32* @RowExclusiveLock, align 4
  %191 = call i32 @table_close(%struct.TYPE_22__* %189, i32 %190)
  %192 = load i32, i32* %16, align 4
  ret i32 %192
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsA(i32*, i32) #1

declare dso_local i32 @intVal(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local %struct.TYPE_22__* @table_open(i32, i32) #1

declare dso_local %struct.TYPE_23__* @SearchSysCacheCopyAttName(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_22__*) #1

declare dso_local i32 @HeapTupleIsValid(%struct.TYPE_23__*) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @SearchSysCacheCopyAttNum(i32, i8*) #1

declare dso_local i64 @GETSTRUCT(%struct.TYPE_23__*) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @CatalogTupleUpdate(%struct.TYPE_22__*, i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @InvokeObjectPostAlterHook(i32, i32, i32) #1

declare dso_local i32 @ObjectAddressSubSet(i32, i32, i32, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_23__*) #1

declare dso_local i32 @table_close(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
