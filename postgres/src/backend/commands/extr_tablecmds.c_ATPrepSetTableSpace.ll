; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATPrepSetTableSpace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_tablecmds.c_ATPrepSetTableSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@MyDatabaseTableSpace = common dso_local global i64 0, align 8
@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_TABLESPACE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cannot have multiple SET TABLESPACE subcommands\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i8*, i32)* @ATPrepSetTableSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ATPrepSetTableSpace(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @get_tablespace_oid(i8* %11, i32 0)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @OidIsValid(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @MyDatabaseTableSpace, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = call i32 (...) @GetUserId()
  %23 = load i32, i32* @ACL_CREATE, align 4
  %24 = call i64 @pg_tablespace_aclcheck(i64 %21, i32 %22, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @ACLCHECK_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* @OBJECT_TABLESPACE, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @aclcheck_error(i64 %29, i32 %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %20
  br label %34

34:                                               ; preds = %33, %16, %4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @OidIsValid(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* @ERROR, align 4
  %42 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %43 = call i32 @errcode(i32 %42)
  %44 = call i32 @errmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 @ereport(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i64, i64* %9, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  ret void
}

declare dso_local i64 @get_tablespace_oid(i8*, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @pg_tablespace_aclcheck(i64, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
