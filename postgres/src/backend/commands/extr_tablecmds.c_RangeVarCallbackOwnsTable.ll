; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RangeVarCallbackOwnsTable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_RangeVarCallbackOwnsTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RELKIND_RELATION = common dso_local global i8 0, align 1
@RELKIND_TOASTVALUE = common dso_local global i8 0, align 1
@RELKIND_MATVIEW = common dso_local global i8 0, align 1
@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\22%s\22 is not a table or materialized view\00", align 1
@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RangeVarCallbackOwnsTable(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @OidIsValid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %67

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = call signext i8 @get_rel_relkind(i32 %15)
  store i8 %16, i8* %9, align 1
  %17 = load i8, i8* %9, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %67

20:                                               ; preds = %14
  %21 = load i8, i8* %9, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @RELKIND_RELATION, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = load i8, i8* %9, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @RELKIND_TOASTVALUE, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = load i8, i8* %9, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* @RELKIND_MATVIEW, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
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
  %51 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = call i32 @ereport(i32 %45, i32 %51)
  br label %53

53:                                               ; preds = %44, %38, %32, %26, %20
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (...) @GetUserId()
  %56 = call i32 @pg_class_ownercheck(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call signext i8 @get_rel_relkind(i32 %60)
  %62 = call i32 @get_relkind_objtype(i8 signext %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @aclcheck_error(i32 %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %13, %19, %58, %53
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local signext i8 @get_rel_relkind(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pg_class_ownercheck(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i32, i32, i32) #1

declare dso_local i32 @get_relkind_objtype(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
