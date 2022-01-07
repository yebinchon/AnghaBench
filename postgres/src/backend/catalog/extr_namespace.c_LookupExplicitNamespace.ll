; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_LookupExplicitNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_LookupExplicitNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"pg_temp\00", align 1
@myTempNamespace = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@ACL_USAGE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i64 0, align 8
@OBJECT_SCHEMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LookupExplicitNamespace(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @myTempNamespace, align 4
  %13 = call i64 @OidIsValid(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i32, i32* @myTempNamespace, align 4
  store i32 %16, i32* %3, align 4
  br label %47

17:                                               ; preds = %11
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @get_namespace_oid(i8* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @OidIsValid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @InvalidOid, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (...) @GetUserId()
  %33 = load i32, i32* @ACL_USAGE, align 4
  %34 = call i64 @pg_namespace_aclcheck(i32 %31, i32 %32, i32 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @ACLCHECK_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @OBJECT_SCHEMA, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @aclcheck_error(i64 %39, i32 %40, i8* %41)
  br label %43

43:                                               ; preds = %38, %30
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @InvokeNamespaceSearchHook(i32 %44, i32 1)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %28, %15
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_namespace_oid(i8*, i32) #1

declare dso_local i64 @pg_namespace_aclcheck(i32, i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i32 @aclcheck_error(i64, i32, i8*) #1

declare dso_local i32 @InvokeNamespaceSearchHook(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
