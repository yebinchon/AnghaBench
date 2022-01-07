; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_index_check_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_bt_index_check_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }

@ShareLock = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not open parent table of index %s\00", align 1
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"index \22%s\22 lacks a main relation fork\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32)* @bt_index_check_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bt_index_check_internal(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @ShareLock, align 4
  store i32 %17, i32* %12, align 4
  br label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @AccessShareLock, align 4
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @IndexGetRelation(i64 %21, i32 1)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @OidIsValid(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.TYPE_13__* @table_open(i64 %27, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %11, align 8
  br label %31

30:                                               ; preds = %20
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call %struct.TYPE_13__* @index_open(i64 %32, i32 %33)
  store %struct.TYPE_13__* %34, %struct.TYPE_13__** %10, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %36 = icmp eq %struct.TYPE_13__* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @IndexGetRelation(i64 %39, i32 0)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37, %31
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_UNDEFINED_TABLE, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %47 = call i32 @RelationGetRelationName(%struct.TYPE_13__* %46)
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = call i32 @ereport(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %52 = call i32 @btree_index_checkable(%struct.TYPE_13__* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %54 = call i64 @btree_index_mainfork_expected(%struct.TYPE_13__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %50
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %58 = call i32 @RelationOpenSmgr(%struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MAIN_FORKNUM, align 4
  %63 = call i32 @smgrexists(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @ERROR, align 4
  %67 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %68 = call i32 @errcode(i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %70 = call i32 @RelationGetRelationName(%struct.TYPE_13__* %69)
  %71 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = call i32 @ereport(i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %65, %56
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = call i32 @_bt_heapkeyspace(%struct.TYPE_13__* %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @bt_check_every_level(%struct.TYPE_13__* %76, %struct.TYPE_13__* %77, i32 %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %50
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @index_close(%struct.TYPE_13__* %84, i32 %85)
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @table_close(%struct.TYPE_13__* %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %83
  ret void
}

declare dso_local i64 @IndexGetRelation(i64, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local %struct.TYPE_13__* @table_open(i64, i32) #1

declare dso_local %struct.TYPE_13__* @index_open(i64, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_13__*) #1

declare dso_local i32 @btree_index_checkable(%struct.TYPE_13__*) #1

declare dso_local i64 @btree_index_mainfork_expected(%struct.TYPE_13__*) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_13__*) #1

declare dso_local i32 @smgrexists(i32, i32) #1

declare dso_local i32 @_bt_heapkeyspace(%struct.TYPE_13__*) #1

declare dso_local i32 @bt_check_every_level(%struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @index_close(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @table_close(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
