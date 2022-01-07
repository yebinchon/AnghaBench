; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"grantable rights not supported for statistics objects\00", align 1
@ACL_NO_RIGHTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"grantable rights not supported for event triggers\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unrecognized objtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @pg_aclmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_aclmask(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %96 [
    i32 141, label %15
    i32 130, label %28
    i32 132, label %28
    i32 140, label %34
    i32 136, label %40
    i32 135, label %46
    i32 134, label %52
    i32 133, label %58
    i32 131, label %64
    i32 129, label %68
    i32 138, label %74
    i32 137, label %80
    i32 139, label %86
    i32 128, label %90
  ]

15:                                               ; preds = %6
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @pg_class_aclmask(i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @pg_attribute_aclmask(i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = or i32 %20, %26
  store i32 %27, i32* %7, align 4
  br label %101

28:                                               ; preds = %6, %6
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @pg_class_aclmask(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %101

34:                                               ; preds = %6
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @pg_database_aclmask(i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %101

40:                                               ; preds = %6
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @pg_proc_aclmask(i32 %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  br label %101

46:                                               ; preds = %6
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @pg_language_aclmask(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %7, align 4
  br label %101

52:                                               ; preds = %6
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @pg_largeobject_aclmask_snapshot(i32 %53, i32 %54, i32 %55, i32 %56, i32* null)
  store i32 %57, i32* %7, align 4
  br label %101

58:                                               ; preds = %6
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @pg_namespace_aclmask(i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %101

64:                                               ; preds = %6
  %65 = load i32, i32* @ERROR, align 4
  %66 = call i32 (i32, i8*, ...) @elog(i32 %65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ACL_NO_RIGHTS, align 4
  store i32 %67, i32* %7, align 4
  br label %101

68:                                               ; preds = %6
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @pg_tablespace_aclmask(i32 %69, i32 %70, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %101

74:                                               ; preds = %6
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @pg_foreign_data_wrapper_aclmask(i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  br label %101

80:                                               ; preds = %6
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @pg_foreign_server_aclmask(i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  br label %101

86:                                               ; preds = %6
  %87 = load i32, i32* @ERROR, align 4
  %88 = call i32 (i32, i8*, ...) @elog(i32 %87, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @ACL_NO_RIGHTS, align 4
  store i32 %89, i32* %7, align 4
  br label %101

90:                                               ; preds = %6
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @pg_type_aclmask(i32 %91, i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  br label %101

96:                                               ; preds = %6
  %97 = load i32, i32* @ERROR, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32, i8*, ...) @elog(i32 %97, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @ACL_NO_RIGHTS, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %96, %90, %86, %80, %74, %68, %64, %58, %52, %46, %40, %34, %28, %15
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @pg_class_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @pg_attribute_aclmask(i32, i32, i32, i32, i32) #1

declare dso_local i32 @pg_database_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @pg_proc_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @pg_language_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @pg_largeobject_aclmask_snapshot(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pg_namespace_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @pg_tablespace_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @pg_foreign_data_wrapper_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @pg_foreign_server_aclmask(i32, i32, i32, i32) #1

declare dso_local i32 @pg_type_aclmask(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
