; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_lockcmds.c_RangeVarCallbackForLockTable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_lockcmds.c_RangeVarCallbackForLockTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@RELKIND_VIEW = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"\22%s\22 is not a table or view\00", align 1
@RELPERSISTENCE_TEMP = common dso_local global i8 0, align 1
@XACT_FLAGS_ACCESSEDTEMPNAMESPACE = common dso_local global i32 0, align 4
@MyXactFlags = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*)* @RangeVarCallbackForLockTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RangeVarCallbackForLockTable(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @OidIsValid(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  br label %82

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = call signext i8 @get_rel_relkind(i32 %21)
  store i8 %22, i8* %10, align 1
  %23 = load i8, i8* %10, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  br label %82

26:                                               ; preds = %20
  %27 = load i8, i8* %10, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @RELKIND_RELATION, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load i8, i8* %10, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i8, i8* %10, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @RELKIND_VIEW, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load i32, i32* @ERROR, align 4
  %46 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %47 = call i32 @errcode(i32 %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = call i32 @ereport(i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %44, %38, %32, %26
  %54 = load i32, i32* %6, align 4
  %55 = call signext i8 @get_rel_persistence(i32 %54)
  store i8 %55, i8* %11, align 1
  %56 = load i8, i8* %11, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* @RELPERSISTENCE_TEMP, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @XACT_FLAGS_ACCESSEDTEMPNAMESPACE, align 4
  %63 = load i32, i32* @MyXactFlags, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @MyXactFlags, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (...) @GetUserId()
  %69 = call i64 @LockTableAclCheck(i32 %66, i32 %67, i32 %68)
  store i64 %69, i64* %12, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* @ACLCHECK_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load i64, i64* %12, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call signext i8 @get_rel_relkind(i32 %75)
  %77 = call i32 @get_relkind_objtype(i8 signext %76)
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @aclcheck_error(i64 %74, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %19, %25, %73, %65
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local signext i8 @get_rel_persistence(i32) #1

declare dso_local i64 @LockTableAclCheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_relkind_objtype(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
