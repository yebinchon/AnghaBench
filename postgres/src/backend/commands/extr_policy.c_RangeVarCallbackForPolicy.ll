; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_RangeVarCallbackForPolicy.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_policy.c_RangeVarCallbackForPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i8 }

@RELOID = common dso_local global i32 0, align 4
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@allowSystemTableMods = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"permission denied: \22%s\22 is a system catalog\00", align 1
@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"\22%s\22 is not a table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32, i8*)* @RangeVarCallbackForPolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeVarCallbackForPolicy(%struct.TYPE_5__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8, align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @RELOID, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ObjectIdGetDatum(i32 %13)
  %15 = call i32 @SearchSysCache1(i32 %12, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @HeapTupleIsValid(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %81

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @GETSTRUCT(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %10, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (...) @GetUserId()
  %29 = call i32 @pg_class_ownercheck(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @get_rel_relkind(i32 %33)
  %35 = call i32 @get_relkind_objtype(i32 %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @aclcheck_error(i32 %32, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %20
  %41 = load i32, i32* @allowSystemTableMods, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = call i64 @IsSystemClass(i32 %44, %struct.TYPE_6__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = call i32 @ereport(i32 %49, i32 %55)
  br label %57

57:                                               ; preds = %48, %43, %40
  %58 = load i8, i8* %11, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* @RELKIND_RELATION, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %57
  %64 = load i8, i8* %11, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @errmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = call i32 @ereport(i32 %70, i32 %76)
  br label %78

78:                                               ; preds = %69, %63, %57
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @ReleaseSysCache(i32 %79)
  br label %81

81:                                               ; preds = %78, %19
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @get_relkind_objtype(i32) #1

declare dso_local i32 @get_rel_relkind(i32) #1

declare dso_local i64 @IsSystemClass(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
