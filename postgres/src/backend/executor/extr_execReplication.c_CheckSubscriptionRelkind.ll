; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_CheckSubscriptionRelkind.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execReplication.c_CheckSubscriptionRelkind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RELKIND_PARTITIONED_TABLE = common dso_local global i8 0, align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"cannot use relation \22%s.%s\22 as logical replication target\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\22%s.%s\22 is a partitioned table.\00", align 1
@RELKIND_FOREIGN_TABLE = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"\22%s.%s\22 is a foreign table.\00", align 1
@RELKIND_RELATION = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"\22%s.%s\22 is not a table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckSubscriptionRelkind(i8 signext %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* @RELKIND_PARTITIONED_TABLE, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* @ERROR, align 4
  %14 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %15 = call i32 @errcode(i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @errdetail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %19, i8* %20)
  %22 = call i32 @ereport(i32 %13, i32 %21)
  br label %41

23:                                               ; preds = %3
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @RELKIND_FOREIGN_TABLE, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @errdetail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %37)
  %39 = call i32 @ereport(i32 %30, i32 %38)
  br label %40

40:                                               ; preds = %29, %23
  br label %41

41:                                               ; preds = %40, %12
  %42 = load i8, i8* %4, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @RELKIND_RELATION, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* @ERROR, align 4
  %49 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %50 = call i32 @errcode(i32 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @errdetail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %54, i8* %55)
  %57 = call i32 @ereport(i32 %48, i32 %56)
  br label %58

58:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, i8*) #1

declare dso_local i32 @errdetail(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
