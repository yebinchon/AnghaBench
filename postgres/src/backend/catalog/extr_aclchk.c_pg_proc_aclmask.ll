; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_proc_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_proc_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"function with OID %u does not exist\00", align 1
@Anum_pg_proc_proacl = common dso_local global i32 0, align 4
@OBJECT_FUNCTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_proc_aclmask(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @superuser_arg(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %5, align 4
  br label %77

21:                                               ; preds = %4
  %22 = load i32, i32* @PROCOID, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @ObjectIdGetDatum(i32 %23)
  %25 = call i32 @SearchSysCache1(i32 %22, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @HeapTupleIsValid(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* @ERRCODE_UNDEFINED_FUNCTION, align 4
  %32 = call i32 @errcode(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @ereport(i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %29, %21
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @GETSTRUCT(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* @PROCOID, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @Anum_pg_proc_proacl, align 4
  %45 = call i64 @SysCacheGetAttr(i32 %42, i32 %43, i32 %44, i32* %13)
  store i64 %45, i64* %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @OBJECT_FUNCTION, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32* @acldefault(i32 %49, i32 %50)
  store i32* %51, i32** %14, align 8
  store i64 0, i64* %12, align 8
  br label %55

52:                                               ; preds = %36
  %53 = load i64, i64* %12, align 8
  %54 = call i32* @DatumGetAclP(i64 %53)
  store i32* %54, i32** %14, align 8
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @aclmask(i32* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %55
  %65 = load i32*, i32** %14, align 8
  %66 = ptrtoint i32* %65 to i64
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @DatumGetPointer(i64 %67)
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @pfree(i32* %71)
  br label %73

73:                                               ; preds = %70, %64, %55
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @ReleaseSysCache(i32 %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %19
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @superuser_arg(i32) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i64 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @acldefault(i32, i32) #1

declare dso_local i32* @DatumGetAclP(i64) #1

declare dso_local i32 @aclmask(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @DatumGetPointer(i64) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
