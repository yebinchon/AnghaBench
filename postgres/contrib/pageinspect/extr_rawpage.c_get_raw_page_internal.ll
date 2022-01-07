; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_rawpage.c_get_raw_page_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pageinspect/extr_rawpage.c_get_raw_page_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"must be superuser to use raw page functions\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@RELKIND_VIEW = common dso_local global i64 0, align 8
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot get raw page from view \22%s\22\00", align 1
@RELKIND_COMPOSITE_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"cannot get raw page from composite type \22%s\22\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot get raw page from foreign table \22%s\22\00", align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"cannot get raw page from partitioned table \22%s\22\00", align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"cannot get raw page from partitioned index \22%s\22\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"cannot access temporary tables of other sessions\00", align 1
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"block number %u is out of range for relation \22%s\22\00", align 1
@BLCKSZ = common dso_local global i64 0, align 8
@VARHDRSZ = common dso_local global i64 0, align 8
@RBM_NORMAL = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i64)* @get_raw_page_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_raw_page_internal(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = call i32 (...) @superuser()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ERROR, align 4
  %16 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %17 = call i32 @errcode(i32 %16)
  %18 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ereport(i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %14, %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @textToQualifiedNameList(i32* %21)
  %23 = call i32* @makeRangeVarFromNameList(i32 %22)
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @AccessShareLock, align 4
  %26 = call %struct.TYPE_10__* @relation_openrv(i32* %24, i32 %25)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %9, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RELKIND_VIEW, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %20
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %39 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %38)
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @ereport(i32 %35, i32 %40)
  br label %42

42:                                               ; preds = %34, %20
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @RELKIND_COMPOSITE_TYPE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %53 = call i32 @errcode(i32 %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %54)
  %56 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = call i32 @ereport(i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %50, %42
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RELKIND_FOREIGN_TABLE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %70)
  %72 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = call i32 @ereport(i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %66, %58
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load i32, i32* @ERROR, align 4
  %84 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %85 = call i32 @errcode(i32 %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %86)
  %88 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = call i32 @ereport(i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %82, %74
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RELKIND_PARTITIONED_INDEX, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load i32, i32* @ERROR, align 4
  %100 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %101 = call i32 @errcode(i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %102)
  %104 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %103)
  %105 = call i32 @ereport(i32 %99, i32 %104)
  br label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %108 = call i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_10__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @ERROR, align 4
  %112 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %113 = call i32 @errcode(i32 %112)
  %114 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %115 = call i32 @ereport(i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %110, %106
  %117 = load i64, i64* %6, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %119 = load i32, i32* %5, align 4
  %120 = call i64 @RelationGetNumberOfBlocksInFork(%struct.TYPE_10__* %118, i32 %119)
  %121 = icmp sge i64 %117, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i32, i32* @ERROR, align 4
  %124 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %125 = call i32 @errcode(i32 %124)
  %126 = load i64, i64* %6, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %128 = call i32 @RelationGetRelationName(%struct.TYPE_10__* %127)
  %129 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i64 %126, i32 %128)
  %130 = call i32 @ereport(i32 %123, i32 %129)
  br label %131

131:                                              ; preds = %122, %116
  %132 = load i64, i64* @BLCKSZ, align 8
  %133 = load i64, i64* @VARHDRSZ, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i64 @palloc(i64 %134)
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %7, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i64, i64* @BLCKSZ, align 8
  %139 = load i64, i64* @VARHDRSZ, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @SET_VARSIZE(i32* %137, i64 %140)
  %142 = load i32*, i32** %7, align 8
  %143 = call i8* @VARDATA(i32* %142)
  store i8* %143, i8** %10, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i64, i64* %6, align 8
  %147 = load i32, i32* @RBM_NORMAL, align 4
  %148 = call i32 @ReadBufferExtended(%struct.TYPE_10__* %144, i32 %145, i64 %146, i32 %147, i32* null)
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %151 = call i32 @LockBuffer(i32 %149, i32 %150)
  %152 = load i8*, i8** %10, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @BufferGetPage(i32 %153)
  %155 = load i64, i64* @BLCKSZ, align 8
  %156 = call i32 @memcpy(i8* %152, i32 %154, i64 %155)
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %159 = call i32 @LockBuffer(i32 %157, i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @ReleaseBuffer(i32 %160)
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %163 = load i32, i32* @AccessShareLock, align 4
  %164 = call i32 @relation_close(%struct.TYPE_10__* %162, i32 %163)
  %165 = load i32*, i32** %7, align 8
  ret i32* %165
}

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32* @makeRangeVarFromNameList(i32) #1

declare dso_local i32 @textToQualifiedNameList(i32*) #1

declare dso_local %struct.TYPE_10__* @relation_openrv(i32*, i32) #1

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_10__*) #1

declare dso_local i64 @RELATION_IS_OTHER_TEMP(%struct.TYPE_10__*) #1

declare dso_local i64 @RelationGetNumberOfBlocksInFork(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @palloc(i64) #1

declare dso_local i32 @SET_VARSIZE(i32*, i64) #1

declare dso_local i8* @VARDATA(i32*) #1

declare dso_local i32 @ReadBufferExtended(%struct.TYPE_10__*, i32, i64, i32, i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
