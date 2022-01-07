; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_DefineOpFamily.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_opclasscmds.c_DefineOpFamily.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"must be superuser to create an operator family\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DefineOpFamily(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @QualifiedNameGetCreationNamespace(i32 %9, i8** %3)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (...) @GetUserId()
  %13 = load i32, i32* @ACL_CREATE, align 4
  %14 = call i64 @pg_namespace_aclcheck(i32 %11, i32 %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @ACLCHECK_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @OBJECT_SCHEMA, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @get_namespace_name(i32 %21)
  %23 = call i32 @aclcheck_error(i64 %19, i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @get_index_am_oid(i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = call i32 (...) @superuser()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ERROR, align 4
  %33 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %34 = call i32 @errcode(i32 %33)
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @CreateOpFamily(i32 %40, i8* %41, i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local i32 @QualifiedNameGetCreationNamespace(i32, i8**) #1

declare dso_local i64 @pg_namespace_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @get_index_am_oid(i32, i32) #1

declare dso_local i32 @superuser(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @CreateOpFamily(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
