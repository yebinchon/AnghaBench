; ModuleID = '/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_btree_index_checkable.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/amcheck/extr_verify_nbtree.c_btree_index_checkable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@RELKIND_INDEX = common dso_local global i64 0, align 8
@BTREE_AM_OID = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"only B-Tree indexes are supported as targets for verification\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Relation \22%s\22 is not a B-Tree index.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot access temporary tables of other sessions\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Index \22%s\22 is associated with temporary relation.\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cannot check index \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Index is not valid.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @btree_index_checkable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_index_checkable(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @RELKIND_INDEX, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BTREE_AM_OID, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %10, %1
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %23)
  %25 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = call i32 @ereport(i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %18, %10
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_9__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %36)
  %38 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = call i32 @ereport(i32 %32, i32 %38)
  br label %40

40:                                               ; preds = %31, %27
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = call i32 @RelationGetRelationName(%struct.TYPE_9__* %51)
  %53 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %55 = call i32 @ereport(i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %47, %40
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_9__*) #1

declare dso_local i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
