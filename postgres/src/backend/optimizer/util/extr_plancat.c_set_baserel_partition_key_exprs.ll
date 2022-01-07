; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_set_baserel_partition_key_exprs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_plancat.c_set_baserel_partition_key_exprs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32**, i32** }
%struct.TYPE_7__ = type { i32, i64*, i32, i32*, i32*, i32* }

@InvalidAttrNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"wrong number of partition key expressions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*)* @set_baserel_partition_key_exprs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_baserel_partition_key_exprs(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.TYPE_7__* @RelationGetPartitionKey(i32 %13)
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i64 @IS_SIMPLE_REL(%struct.TYPE_6__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br label %26

26:                                               ; preds = %21, %2
  %27 = phi i1 [ false, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 8, %38
  %40 = trunc i64 %39 to i32
  %41 = call i64 @palloc(i32 %40)
  %42 = inttoptr i64 %41 to i32**
  store i32** %42, i32*** %8, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32* @list_head(i32 %45)
  store i32* %46, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %118, %26
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %121

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @InvalidAttrNumber, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %51
  %63 = load i64, i64* %12, align 8
  %64 = icmp sgt i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @Assert(i32 %65)
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @makeVar(i64 %67, i64 %68, i32 %75, i32 %82, i32 %89, i32 0)
  %91 = inttoptr i64 %90 to i32*
  store i32* %91, i32** %11, align 8
  br label %111

92:                                               ; preds = %51
  %93 = load i32*, i32** %9, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* @ERROR, align 4
  %97 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @lfirst(i32* %99)
  %101 = call i64 @copyObject(i32 %100)
  %102 = inttoptr i64 %101 to i32*
  store i32* %102, i32** %11, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load i64, i64* %10, align 8
  %105 = call i32 @ChangeVarNodes(i32* %103, i32 1, i64 %104, i32 0)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = call i32* @lnext(i32 %108, i32* %109)
  store i32* %110, i32** %9, align 8
  br label %111

111:                                              ; preds = %98, %62
  %112 = load i32*, i32** %11, align 8
  %113 = call i32* @list_make1(i32* %112)
  %114 = load i32**, i32*** %8, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* %113, i32** %117, align 8
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %47

121:                                              ; preds = %47
  %122 = load i32**, i32*** %8, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  store i32** %122, i32*** %124, align 8
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 8, %126
  %128 = trunc i64 %127 to i32
  %129 = call i64 @palloc0(i32 %128)
  %130 = inttoptr i64 %129 to i32**
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i32** %130, i32*** %132, align 8
  ret void
}

declare dso_local %struct.TYPE_7__* @RelationGetPartitionKey(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @IS_SIMPLE_REL(%struct.TYPE_6__*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @list_head(i32) #1

declare dso_local i64 @makeVar(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @copyObject(i32) #1

declare dso_local i32 @lfirst(i32*) #1

declare dso_local i32 @ChangeVarNodes(i32*, i32, i64, i32) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i32* @list_make1(i32*) #1

declare dso_local i64 @palloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
