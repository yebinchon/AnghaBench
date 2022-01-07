; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeNamespace_oid.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeNamespace_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACLCHECK_NOT_OWNER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot alter array type %s\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"You can alter type %s, which will alter the array type as well.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AlterTypeNamespace_oid(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 (...) @GetUserId()
  %10 = call i32 @pg_type_ownercheck(i64 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ACLCHECK_NOT_OWNER, align 4
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @aclcheck_error_type(i32 %13, i64 %14)
  br label %16

16:                                               ; preds = %12, %3
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @get_element_type(i64 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @OidIsValid(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load i64, i64* %7, align 8
  %24 = call i64 @get_array_type(i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @format_type_be(i64 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @format_type_be(i64 %34)
  %36 = call i32 @errhint(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call i32 @ereport(i32 %28, i32 %36)
  br label %38

38:                                               ; preds = %27, %22, %16
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @AlterTypeNamespaceInternal(i64 %39, i64 %40, i32 0, i32 1, i32* %41)
  ret i64 %42
}

declare dso_local i32 @pg_type_ownercheck(i64, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error_type(i32, i64) #1

declare dso_local i64 @get_element_type(i64) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i64 @get_array_type(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i64) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i64 @AlterTypeNamespaceInternal(i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
