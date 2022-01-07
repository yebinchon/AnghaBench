; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_renameatt_check.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_renameatt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i32, i64 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot rename column of typed table\00", align 1
@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_VIEW = common dso_local global i8 0, align 1
@RELKIND_MATVIEW = common dso_local global i8 0, align 1
@RELKIND_COMPOSITE_TYPE = common dso_local global i8 0, align 1
@RELKIND_INDEX = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_INDEX = common dso_local global i8 0, align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"\22%s\22 is not a table, view, materialized view, composite type, index, or foreign table\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system catalog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*, i32)* @renameatt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renameatt_check(i32 %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  store i8 %10, i8* %7, align 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ERROR, align 4
  %20 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %21 = call i32 @errcode(i32 %20)
  %22 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @ereport(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %18, %15, %3
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @RELKIND_RELATION, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %24
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* @RELKIND_VIEW, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %82

36:                                               ; preds = %30
  %37 = load i8, i8* %7, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @RELKIND_MATVIEW, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %82

42:                                               ; preds = %36
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = load i8, i8* @RELKIND_COMPOSITE_TYPE, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %42
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @RELKIND_INDEX, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %48
  %55 = load i8, i8* %7, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @RELKIND_PARTITIONED_INDEX, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %54
  %61 = load i8, i8* %7, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load i8, i8* %7, align 1
  %68 = sext i8 %67 to i32
  %69 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32, i32* @ERROR, align 4
  %74 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %75 = call i32 @errcode(i32 %74)
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @NameStr(i32 %78)
  %80 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = call i32 @ereport(i32 %73, i32 %80)
  br label %82

82:                                               ; preds = %72, %66, %60, %54, %48, %42, %36, %30, %24
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (...) @GetUserId()
  %85 = call i32 @pg_class_ownercheck(i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %82
  %88 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @get_rel_relkind(i32 %89)
  %91 = call i32 @get_relkind_objtype(i32 %90)
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @NameStr(i32 %94)
  %96 = call i32 @aclcheck_error(i32 %88, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %87, %82
  %98 = load i32, i32* @allowSystemTableMods, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = call i64 @IsSystemClass(i32 %101, %struct.TYPE_4__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32, i32* @ERROR, align 4
  %107 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %108 = call i32 @errcode(i32 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @NameStr(i32 %111)
  %113 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = call i32 @ereport(i32 %106, i32 %113)
  br label %115

115:                                              ; preds = %105, %100, %97
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @get_relkind_objtype(i32) #1

declare dso_local i32 @get_rel_relkind(i32) #1

declare dso_local i64 @IsSystemClass(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
