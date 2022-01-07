; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeNamespace.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_typecmds.c_AlterTypeNamespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJECT_DOMAIN = common dso_local global i64 0, align 8
@TYPTYPE_DOMAIN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_WRONG_OBJECT_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s is not a domain\00", align 1
@TypeRelationId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AlterTypeNamespace(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @makeTypeNameFromNameList(i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @typenameTypeId(i32* null, i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @OBJECT_DOMAIN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  %24 = call i64 @get_typtype(i32 %23)
  %25 = load i64, i64* @TYPTYPE_DOMAIN, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_WRONG_OBJECT_TYPE, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @format_type_be(i32 %31)
  %33 = call i32 @errmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = call i32 @ereport(i32 %28, i32 %33)
  br label %35

35:                                               ; preds = %27, %22, %4
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @LookupCreationNamespace(i8* %36)
  store i32 %37, i32* %11, align 4
  %38 = call i32* (...) @new_object_addresses()
  store i32* %38, i32** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @AlterTypeNamespace_oid(i32 %39, i32 %40, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @free_object_addresses(i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @TypeRelationId, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ObjectAddressSet(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %14, align 4
  ret i32 %55
}

declare dso_local i32* @makeTypeNameFromNameList(i32*) #1

declare dso_local i32 @typenameTypeId(i32*, i32*) #1

declare dso_local i64 @get_typtype(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @format_type_be(i32) #1

declare dso_local i32 @LookupCreationNamespace(i8*) #1

declare dso_local i32* @new_object_addresses(...) #1

declare dso_local i32 @AlterTypeNamespace_oid(i32, i32, i32*) #1

declare dso_local i32 @free_object_addresses(i32*) #1

declare dso_local i32 @ObjectAddressSet(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
