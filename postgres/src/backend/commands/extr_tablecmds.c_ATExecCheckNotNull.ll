; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecCheckNotNull.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATExecCheckNotNull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_COLUMN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"column \22%s\22 of relation \22%s\22 does not exist\00", align 1
@ERRCODE_INVALID_TABLE_DEFINITION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"constraint must be added to child tables too\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Column \22%s\22 of relation \22%s\22 is not already NOT NULL.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Do not specify the ONLY keyword.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @ATExecCheckNotNull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATExecCheckNotNull(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @RelationGetRelid(i32 %10)
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @SearchSysCacheAttName(i32 %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @HeapTupleIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i32, i32* @ERRCODE_UNDEFINED_COLUMN, align 4
  %20 = call i32 @errcode(i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @RelationGetRelationName(i32 %22)
  %24 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %23)
  %25 = call i32 @ereport(i32 %18, i32 %24)
  br label %26

26:                                               ; preds = %17, %4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @GETSTRUCT(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ERROR, align 4
  %35 = load i32, i32* @ERRCODE_INVALID_TABLE_DEFINITION, align 4
  %36 = call i32 @errcode(i32 %35)
  %37 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @RelationGetRelationName(i32 %39)
  %41 = call i32 @errdetail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %40)
  %42 = call i32 @errhint(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %34, i32 %42)
  br label %44

44:                                               ; preds = %33, %26
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @ReleaseSysCache(i32 %45)
  ret void
}

declare dso_local i32 @SearchSysCacheAttName(i32, i8*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @errdetail(i8*, i8*, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
