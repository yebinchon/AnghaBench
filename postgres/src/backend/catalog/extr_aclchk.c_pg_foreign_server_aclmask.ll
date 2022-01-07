; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_foreign_server_aclmask.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_pg_foreign_server_aclmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FOREIGNSERVEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNDEFINED_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"foreign server with OID %u does not exist\00", align 1
@Anum_pg_foreign_server_srvacl = common dso_local global i32 0, align 4
@OBJECT_FOREIGN_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pg_foreign_server_aclmask(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @superuser_arg(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %5, align 4
  br label %79

22:                                               ; preds = %4
  %23 = load i32, i32* @FOREIGNSERVEROID, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @ObjectIdGetDatum(i32 %24)
  %26 = call i32 @SearchSysCache1(i32 %23, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @HeapTupleIsValid(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ERROR, align 4
  %32 = load i32, i32* @ERRCODE_UNDEFINED_OBJECT, align 4
  %33 = call i32 @errcode(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = call i32 @ereport(i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %22
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @GETSTRUCT(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %16, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* @FOREIGNSERVEROID, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @Anum_pg_foreign_server_srvacl, align 4
  %47 = call i64 @SysCacheGetAttr(i32 %44, i32 %45, i32 %46, i32* %13)
  store i64 %47, i64* %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i32, i32* @OBJECT_FOREIGN_SERVER, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32* @acldefault(i32 %51, i32 %52)
  store i32* %53, i32** %14, align 8
  store i64 0, i64* %12, align 8
  br label %57

54:                                               ; preds = %37
  %55 = load i64, i64* %12, align 8
  %56 = call i32* @DatumGetAclP(i64 %55)
  store i32* %56, i32** %14, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @aclmask(i32* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %57
  %67 = load i32*, i32** %14, align 8
  %68 = ptrtoint i32* %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @DatumGetPointer(i64 %69)
  %71 = icmp ne i64 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @pfree(i32* %73)
  br label %75

75:                                               ; preds = %72, %66, %57
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ReleaseSysCache(i32 %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %20
  %80 = load i32, i32* %5, align 4
  ret i32 %80
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
