; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_relobject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_objectaddress.c_get_object_address_relobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"must specify relation and object name\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8
@RewriteRelationId = common dso_local global i32 0, align 4
@TriggerRelationId = common dso_local global i32 0, align 4
@ConstraintRelationId = common dso_local global i32 0, align 4
@PolicyRelationId = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unrecognized objtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i64 } (i32, i32*, i32**, i32)* @get_object_address_relobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i64 } @get_object_address_relobject(i32 %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @llast(i32* %15)
  %17 = call i8* @strVal(i32 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @list_length(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %22, %4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @list_copy(i32* %29)
  %31 = load i32, i32* %11, align 4
  %32 = sub nsw i32 %31, 1
  %33 = call i32* @list_truncate(i32 %30, i32 %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @makeRangeVarFromNameList(i32* %34)
  %36 = load i32, i32* @AccessShareLock, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32* @table_openrv_extended(i32 %35, i32 %36, i32 %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32*, i32** %10, align 8
  %43 = call i8* @RelationGetRelid(i32* %42)
  br label %46

44:                                               ; preds = %28
  %45 = load i8*, i8** @InvalidOid, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i8* [ %43, %41 ], [ %45, %44 ]
  store i8* %47, i8** %14, align 8
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %113 [
    i32 130, label %49
    i32 128, label %65
    i32 129, label %81
    i32 131, label %97
  ]

49:                                               ; preds = %46
  %50 = load i32, i32* @RewriteRelationId, align 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %14, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @get_rewrite_oid(i8* %55, i8* %56, i32 %57)
  br label %61

59:                                               ; preds = %49
  %60 = load i8*, i8** @InvalidOid, align 8
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i8* [ %58, %54 ], [ %60, %59 ]
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 0, i32* %64, align 8
  br label %117

65:                                               ; preds = %46
  %66 = load i32, i32* @TriggerRelationId, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i8*, i8** %14, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i8* @get_trigger_oid(i8* %71, i8* %72, i32 %73)
  br label %77

75:                                               ; preds = %65
  %76 = load i8*, i8** @InvalidOid, align 8
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi i8* [ %74, %70 ], [ %76, %75 ]
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 0, i32* %80, align 8
  br label %117

81:                                               ; preds = %46
  %82 = load i32, i32* @ConstraintRelationId, align 4
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i8* @get_relation_constraint_oid(i8* %87, i8* %88, i32 %89)
  br label %93

91:                                               ; preds = %81
  %92 = load i8*, i8** @InvalidOid, align 8
  br label %93

93:                                               ; preds = %91, %86
  %94 = phi i8* [ %90, %86 ], [ %92, %91 ]
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 0, i32* %96, align 8
  br label %117

97:                                               ; preds = %46
  %98 = load i32, i32* @PolicyRelationId, align 4
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %10, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %14, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i8* @get_relation_policy_oid(i8* %103, i8* %104, i32 %105)
  br label %109

107:                                              ; preds = %97
  %108 = load i8*, i8** @InvalidOid, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi i8* [ %106, %102 ], [ %108, %107 ]
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 0, i32* %112, align 8
  br label %117

113:                                              ; preds = %46
  %114 = load i32, i32* @ERROR, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @elog(i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %113, %109, %93, %77, %61
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @OidIsValid(i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %117
  %123 = load i32*, i32** %10, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32*, i32** %10, align 8
  %127 = load i32, i32* @AccessShareLock, align 4
  %128 = call i32 @table_close(i32* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %122
  store i32* null, i32** %10, align 8
  br label %133

130:                                              ; preds = %117
  %131 = load i32*, i32** %10, align 8
  %132 = load i32**, i32*** %8, align 8
  store i32* %131, i32** %132, align 8
  br label %133

133:                                              ; preds = %130, %129
  %134 = bitcast %struct.TYPE_3__* %5 to { i8*, i64 }*
  %135 = load { i8*, i64 }, { i8*, i64 }* %134, align 8
  ret { i8*, i64 } %135
}

declare dso_local i8* @strVal(i32) #1

declare dso_local i32 @llast(i32*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32* @list_truncate(i32, i32) #1

declare dso_local i32 @list_copy(i32*) #1

declare dso_local i32* @table_openrv_extended(i32, i32, i32) #1

declare dso_local i32 @makeRangeVarFromNameList(i32*) #1

declare dso_local i8* @RelationGetRelid(i32*) #1

declare dso_local i8* @get_rewrite_oid(i8*, i8*, i32) #1

declare dso_local i8* @get_trigger_oid(i8*, i8*, i32) #1

declare dso_local i8* @get_relation_constraint_oid(i8*, i8*, i32) #1

declare dso_local i8* @get_relation_policy_oid(i8*, i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @OidIsValid(i8*) #1

declare dso_local i32 @table_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
