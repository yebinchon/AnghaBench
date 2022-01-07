; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_AddNewAttributeTuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_heap.c_AddNewAttributeTuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i64, i8* }
%struct.TYPE_13__ = type { i64, i32, i32 }

@AttributeRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i32 0, align 4
@TypeRelationId = common dso_local global i32 0, align 4
@DEPENDENCY_NORMAL = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i64 0, align 8
@CollationRelationId = common dso_local global i32 0, align 4
@RELKIND_VIEW = common dso_local global i8 0, align 1
@RELKIND_COMPOSITE_TYPE = common dso_local global i8 0, align 1
@SysAtt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_12__*, i8)* @AddNewAttributeTuples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddNewAttributeTuples(i8* %0, %struct.TYPE_12__* %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_13__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8 %2, i8* %6, align 1
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @AttributeRelationId, align 4
  %19 = load i32, i32* @RowExclusiveLock, align 4
  %20 = call i32 @table_open(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @CatalogOpenIndexes(i32 %21)
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %79, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %23
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__* %28, i32 %29)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %7, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @InsertPgAttributeTuple(i32 %36, %struct.TYPE_14__* %37, i32 %38)
  %40 = load i32, i32* @RelationRelationId, align 4
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* @TypeRelationId, align 4
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i32 %48, i32* %49, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i64 %52, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 0, i32* %54, align 8
  %55 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %56 = call i32 @recordDependencyOn(%struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @OidIsValid(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %27
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @DEFAULT_COLLATION_OID, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load i32, i32* @CollationRelationId, align 4
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i64 %73, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* @DEPENDENCY_NORMAL, align 4
  %77 = call i32 @recordDependencyOn(%struct.TYPE_13__* %12, %struct.TYPE_13__* %13, i32 %76)
  br label %78

78:                                               ; preds = %68, %62, %27
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %23

82:                                               ; preds = %23
  %83 = load i8, i8* %6, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @RELKIND_VIEW, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %117

88:                                               ; preds = %82
  %89 = load i8, i8* %6, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %88
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %113, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** @SysAtt, align 8
  %98 = call i64 @lengthof(i32* %97)
  %99 = trunc i64 %98 to i32
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %95
  %102 = load i32*, i32** @SysAtt, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @memcpy(%struct.TYPE_14__* %14, i32 %106, i32 32)
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @InsertPgAttributeTuple(i32 %110, %struct.TYPE_14__* %14, i32 %111)
  br label %113

113:                                              ; preds = %101
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %95

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116, %88, %82
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @CatalogCloseIndexes(i32 %118)
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @RowExclusiveLock, align 4
  %122 = call i32 @table_close(i32 %120, i32 %121)
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @CatalogOpenIndexes(i32) #1

declare dso_local %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @InsertPgAttributeTuple(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @recordDependencyOn(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @lengthof(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @CatalogCloseIndexes(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
