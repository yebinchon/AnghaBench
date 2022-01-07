; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_tuple_present_callback.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_tuple_present_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"heap tuple (%u,%u) from table \22%s\22 lacks matching index tuple within index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"Retrying verification using the function bt_index_parent_check() might provide a more specific error.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32, i8*)* @bt_tuple_present_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_tuple_present_callback(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %13, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @RelationGetDescr(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call %struct.TYPE_9__* @index_form_tuple(i32 %23, i32* %24, i32* %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %14, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %33 = call %struct.TYPE_9__* @bt_normalize_tuple(%struct.TYPE_10__* %31, %struct.TYPE_9__* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %15, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %38 = bitcast %struct.TYPE_9__* %37 to i8*
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %40 = call i32 @IndexTupleSize(%struct.TYPE_9__* %39)
  %41 = call i64 @bloom_lacks_element(i32 %36, i8* %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %72

43:                                               ; preds = %6
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = call i32 @ItemPointerGetBlockNumber(i32* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = call i32 @ItemPointerGetOffsetNumber(i32* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @RelationGetRelationName(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @RelationGetRelationName(i32 %59)
  %61 = call i32 @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52, i32 %56, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %43
  %67 = call i32 @errhint(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0))
  br label %69

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = call i32 @ereport(i32 %44, i32 %70)
  br label %72

72:                                               ; preds = %69, %6
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %78 = call i32 @pfree(%struct.TYPE_9__* %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %81 = icmp ne %struct.TYPE_9__* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %84 = call i32 @pfree(%struct.TYPE_9__* %83)
  br label %85

85:                                               ; preds = %82, %72
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_9__* @index_form_tuple(i32, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local %struct.TYPE_9__* @bt_normalize_tuple(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i64 @bloom_lacks_element(i32, i8*, i32) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @pfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
