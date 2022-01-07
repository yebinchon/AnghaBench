; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_RemoveRoleFromObjectACL.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_RemoveRoleFromObjectACL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i8*, i8*, i32, i8*, i8*, i8* }

@DefaultAclRelationId = common dso_local global i32 0, align 4
@AccessShareLock = common dso_local global i32 0, align 4
@Anum_pg_default_acl_oid = common dso_local global i32 0, align 4
@BTEqualStrategyNumber = common dso_local global i32 0, align 4
@F_OIDEQ = common dso_local global i32 0, align 4
@DefaultAclOidIndexId = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not find tuple for default ACL %u\00", align 1
@OBJECT_TABLE = common dso_local global i8* null, align 8
@OBJECT_SEQUENCE = common dso_local global i8* null, align 8
@OBJECT_FUNCTION = common dso_local global i8* null, align 8
@OBJECT_TYPE = common dso_local global i8* null, align 8
@OBJECT_SCHEMA = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"unexpected default ACL type: %d\00", align 1
@ACL_NO_RIGHTS = common dso_local global i8* null, align 8
@DROP_CASCADE = common dso_local global i8* null, align 8
@OBJECT_DATABASE = common dso_local global i8* null, align 8
@OBJECT_ROUTINE = common dso_local global i8* null, align 8
@OBJECT_LANGUAGE = common dso_local global i8* null, align 8
@OBJECT_LARGEOBJECT = common dso_local global i8* null, align 8
@OBJECT_TABLESPACE = common dso_local global i8* null, align 8
@OBJECT_FOREIGN_SERVER = common dso_local global i8* null, align 8
@OBJECT_FDW = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"unexpected object class %u\00", align 1
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RemoveRoleFromObjectACL(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DefaultAclRelationId, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %94

17:                                               ; preds = %3
  %18 = load i32, i32* @DefaultAclRelationId, align 4
  %19 = load i32, i32* @AccessShareLock, align 4
  %20 = call i32 @table_open(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %22 = load i32, i32* @Anum_pg_default_acl_oid, align 4
  %23 = load i32, i32* @BTEqualStrategyNumber, align 4
  %24 = load i32, i32* @F_OIDEQ, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ObjectIdGetDatum(i32 %25)
  %27 = call i32 @ScanKeyInit(i32* %21, i32 %22, i32 %23, i32 %24, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @DefaultAclOidIndexId, align 4
  %30 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %31 = call i32 @systable_beginscan(i32 %28, i32 %29, i32 1, i32* null, i32 1, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @systable_getnext(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @HeapTupleIsValid(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %17
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %17
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @GETSTRUCT(i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %8, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 7
  store i32 %51, i32* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %71 [
    i32 140, label %56
    i32 139, label %59
    i32 142, label %62
    i32 138, label %65
    i32 141, label %68
  ]

56:                                               ; preds = %41
  %57 = load i8*, i8** @OBJECT_TABLE, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i8* %57, i8** %58, align 8
  br label %77

59:                                               ; preds = %41
  %60 = load i8*, i8** @OBJECT_SEQUENCE, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i8* %60, i8** %61, align 8
  br label %77

62:                                               ; preds = %41
  %63 = load i8*, i8** @OBJECT_FUNCTION, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i8* %63, i8** %64, align 8
  br label %77

65:                                               ; preds = %41
  %66 = load i8*, i8** @OBJECT_TYPE, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i8* %66, i8** %67, align 8
  br label %77

68:                                               ; preds = %41
  %69 = load i8*, i8** @OBJECT_SCHEMA, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  store i8* %69, i8** %70, align 8
  br label %77

71:                                               ; preds = %41
  %72 = load i32, i32* @ERROR, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @elog(i32 %72, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %68, %65, %62, %59, %56
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @systable_endscan(i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @AccessShareLock, align 4
  %82 = call i32 @table_close(i32 %80, i32 %81)
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 0, i32* %83, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i32 1, i32* %84, align 4
  %85 = load i8*, i8** @ACL_NO_RIGHTS, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i8* @list_make1_oid(i32 %87)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  store i32 0, i32* %90, align 8
  %91 = load i8*, i8** @DROP_CASCADE, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  store i8* %91, i8** %92, align 8
  %93 = call i32 @SetDefaultACL(%struct.TYPE_7__* %7)
  br label %147

94:                                               ; preds = %3
  %95 = load i32, i32* %5, align 4
  switch i32 %95, label %126 [
    i32 130, label %96
    i32 137, label %99
    i32 128, label %102
    i32 131, label %105
    i32 134, label %108
    i32 133, label %111
    i32 132, label %114
    i32 129, label %117
    i32 135, label %120
    i32 136, label %123
  ]

96:                                               ; preds = %94
  %97 = load i8*, i8** @OBJECT_TABLE, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %97, i8** %98, align 8
  br label %130

99:                                               ; preds = %94
  %100 = load i8*, i8** @OBJECT_DATABASE, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %100, i8** %101, align 8
  br label %130

102:                                              ; preds = %94
  %103 = load i8*, i8** @OBJECT_TYPE, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %103, i8** %104, align 8
  br label %130

105:                                              ; preds = %94
  %106 = load i8*, i8** @OBJECT_ROUTINE, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %106, i8** %107, align 8
  br label %130

108:                                              ; preds = %94
  %109 = load i8*, i8** @OBJECT_LANGUAGE, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %109, i8** %110, align 8
  br label %130

111:                                              ; preds = %94
  %112 = load i8*, i8** @OBJECT_LARGEOBJECT, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %112, i8** %113, align 8
  br label %130

114:                                              ; preds = %94
  %115 = load i8*, i8** @OBJECT_SCHEMA, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %115, i8** %116, align 8
  br label %130

117:                                              ; preds = %94
  %118 = load i8*, i8** @OBJECT_TABLESPACE, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %118, i8** %119, align 8
  br label %130

120:                                              ; preds = %94
  %121 = load i8*, i8** @OBJECT_FOREIGN_SERVER, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %121, i8** %122, align 8
  br label %130

123:                                              ; preds = %94
  %124 = load i8*, i8** @OBJECT_FDW, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 8
  store i8* %124, i8** %125, align 8
  br label %130

126:                                              ; preds = %94
  %127 = load i32, i32* @ERROR, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @elog(i32 %127, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 0, i32* %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i8* @list_make1_oid(i32 %132)
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 7
  store i8* %133, i8** %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 1, i32* %135, align 4
  %136 = load i8*, i8** @ACL_NO_RIGHTS, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  store i8* %136, i8** %137, align 8
  %138 = load i32, i32* @NIL, align 4
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  store i32 %138, i32* %139, align 8
  %140 = load i32, i32* %4, align 4
  %141 = call i8* @list_make1_oid(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  store i8* %141, i8** %142, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 0, i32* %143, align 8
  %144 = load i8*, i8** @DROP_CASCADE, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i8* %144, i8** %145, align 8
  %146 = call i32 @ExecGrantStmt_oids(%struct.TYPE_6__* %13)
  br label %147

147:                                              ; preds = %130, %77
  ret void
}

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i32 @ScanKeyInit(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @systable_beginscan(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @systable_getnext(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @systable_endscan(i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i8* @list_make1_oid(i32) #1

declare dso_local i32 @SetDefaultACL(%struct.TYPE_7__*) #1

declare dso_local i32 @ExecGrantStmt_oids(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
