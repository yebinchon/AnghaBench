; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_QualifiedNameGetCreationNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_QualifiedNameGetCreationNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"pg_temp\00", align 1
@myTempNamespace = common dso_local global i32 0, align 4
@activeTempCreationPending = common dso_local global i64 0, align 8
@activeCreationNamespace = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_SCHEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"no schema has been selected to create in\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QualifiedNameGetCreationNamespace(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @DeconstructQualifiedName(i32* %8, i8** %6, i8** %9)
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @AccessTempTableNamespace(i32 0)
  %19 = load i32, i32* @myTempNamespace, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @get_namespace_oid(i8* %21, i32 0)
  store i32 %22, i32* %7, align 4
  br label %42

23:                                               ; preds = %2
  %24 = call i32 (...) @recomputeNamespacePath()
  %25 = load i64, i64* @activeTempCreationPending, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = call i32 @AccessTempTableNamespace(i32 1)
  %29 = load i32, i32* @myTempNamespace, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %23
  %31 = load i32, i32* @activeCreationNamespace, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @OidIsValid(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_UNDEFINED_SCHEMA, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %27, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @DeconstructQualifiedName(i32*, i8**, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @AccessTempTableNamespace(i32) #1

declare dso_local i32 @get_namespace_oid(i8*, i32) #1

declare dso_local i32 @recomputeNamespacePath(...) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
