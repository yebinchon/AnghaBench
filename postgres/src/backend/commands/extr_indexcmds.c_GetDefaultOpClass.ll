; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_GetDefaultOpClass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_GetDefaultOpClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@OperatorClassRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_opclass_opcmethod = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@OpclassAmNameNspIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DUPLICATE_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"there are multiple default operator classes for data type %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetDefaultOpClass(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* @InvalidOid, align 8
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @getBaseType(i64 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @TypeCategory(i64 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @OperatorClassRelationId, align 4
  %22 = load i32, i32* @AccessShareLock, align 4
  %23 = call i32 @table_open(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %25 = load i32, i32* @Anum_pg_opclass_opcmethod, align 4
  %26 = load i32, i32* @BTEqualStrategyNumber, align 4
  %27 = load i32, i32* @F_OIDEQ, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @ObjectIdGetDatum(i64 %28)
  %30 = call i32 @ScanKeyInit(i32* %24, i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @OpclassAmNameNspIndexId, align 4
  %33 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %34 = call i32 @systable_beginscan(i32 %31, i32 %32, i32 1, i32* null, i32 1, i32* %33)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %97, %49, %2
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @systable_getnext(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = call i64 @HeapTupleIsValid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %98

40:                                               ; preds = %35
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @GETSTRUCT(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %44, %struct.TYPE_2__** %15, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %35

50:                                               ; preds = %40
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %6, align 8
  br label %97

62:                                               ; preds = %50
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @IsBinaryCoercible(i64 %66, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @IsPreferredType(i32 %73, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %6, align 8
  br label %95

85:                                               ; preds = %72
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %6, align 8
  br label %94

94:                                               ; preds = %88, %85
  br label %95

95:                                               ; preds = %94, %79
  br label %96

96:                                               ; preds = %95, %65, %62
  br label %97

97:                                               ; preds = %96, %56
  br label %35

98:                                               ; preds = %35
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @systable_endscan(i32 %99)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @AccessShareLock, align 4
  %103 = call i32 @table_close(i32 %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load i32, i32* @ERROR, align 4
  %108 = load i32, i32* @ERRCODE_DUPLICATE_OBJECT, align 4
  %109 = call i32 @errcode(i32 %108)
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @format_type_be(i64 %110)
  %112 = call i32 @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = call i32 @ereport(i32 %107, i32 %112)
  br label %114

114:                                              ; preds = %106, %98
  %115 = load i32, i32* %7, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %128

126:                                              ; preds = %123, %117, %114
  %127 = load i64, i64* %6, align 8
  store i64 %127, i64* %3, align 8
  br label %130

128:                                              ; preds = %123, %120
  %129 = load i64, i64* @InvalidOid, align 8
  store i64 %129, i64* %3, align 8
  br label %130

130:                                              ; preds = %128, %126
  %131 = load i64, i64* %3, align 8
  ret i64 %131
}

declare dso_local i64 @getBaseType(i64) #1

declare dso_local i32 @TypeCategory(i64) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @IsBinaryCoercible(i64, i64) #1

declare dso_local i64 @IsPreferredType(i32, i64) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
