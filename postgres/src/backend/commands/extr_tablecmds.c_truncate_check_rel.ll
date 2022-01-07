; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_truncate_check_rel.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_truncate_check_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_PARTITIONED_TABLE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"\22%s\22 is not a table\00", align 1
@ACL_TRUNCATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system catalog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_4__*)* @truncate_check_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncate_check_rel(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @NameStr(i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RELKIND_RELATION, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RELKIND_PARTITIONED_TABLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @ERROR, align 4
  %24 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %25 = call i32 @errcode(i32 %24)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @ereport(i32 %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %16, %2
  %30 = load i32, i32* %3, align 4
  %31 = call i32 (...) @GetUserId()
  %32 = load i32, i32* @ACL_TRUNCATE, align 4
  %33 = call i64 @pg_class_aclcheck(i32 %30, i32 %31, i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @ACLCHECK_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @get_relkind_objtype(i64 %41)
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @aclcheck_error(i64 %38, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @allowSystemTableMods, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = call i64 @IsSystemClass(i32 %49, %struct.TYPE_4__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @ERROR, align 4
  %55 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %56 = call i32 @errcode(i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = call i32 @ereport(i32 %54, i32 %58)
  br label %60

60:                                               ; preds = %53, %48, %45
  ret void
}

declare dso_local i8* @NameStr(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i64 @pg_class_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i8*) #1

declare dso_local i32 @get_relkind_objtype(i64) #1

declare dso_local i64 @IsSystemClass(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
