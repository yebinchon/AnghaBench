; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_get_role_password.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_get_role_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUTHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Role \22%s\22 does not exist.\00", align 1
@Anum_pg_authid_rolpassword = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"User \22%s\22 has no password assigned.\00", align 1
@Anum_pg_authid_rolvaliduntil = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"User \22%s\22 has an expired password.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_role_password(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i32, i32* @AUTHNAME, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @PointerGetDatum(i8* %12)
  %14 = call i32 @SearchSysCache1(i32 %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @HeapTupleIsValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %4, align 8
  %21 = call i8* @psprintf(i32 %19, i8* %20)
  %22 = load i8**, i8*** %5, align 8
  store i8* %21, i8** %22, align 8
  store i8* null, i8** %3, align 8
  br label %65

23:                                               ; preds = %2
  %24 = load i32, i32* @AUTHNAME, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @Anum_pg_authid_rolpassword, align 4
  %27 = call i32 @SysCacheGetAttr(i32 %24, i32 %25, i32 %26, i32* %9)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ReleaseSysCache(i32 %31)
  %33 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @psprintf(i32 %33, i8* %34)
  %36 = load i8**, i8*** %5, align 8
  store i8* %35, i8** %36, align 8
  store i8* null, i8** %3, align 8
  br label %65

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @TextDatumGetCString(i32 %38)
  store i8* %39, i8** %10, align 8
  %40 = load i32, i32* @AUTHNAME, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @Anum_pg_authid_rolvaliduntil, align 4
  %43 = call i32 @SysCacheGetAttr(i32 %40, i32 %41, i32 %42, i32* %9)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @DatumGetTimestampTz(i32 %47)
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %46, %37
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @ReleaseSysCache(i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* %6, align 8
  %56 = call i64 (...) @GetCurrentTimestamp()
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i8*, i8** %4, align 8
  %61 = call i8* @psprintf(i32 %59, i8* %60)
  %62 = load i8**, i8*** %5, align 8
  store i8* %61, i8** %62, align 8
  store i8* null, i8** %3, align 8
  br label %65

63:                                               ; preds = %54, %49
  %64 = load i8*, i8** %10, align 8
  store i8* %64, i8** %3, align 8
  br label %65

65:                                               ; preds = %63, %58, %30, %18
  %66 = load i8*, i8** %3, align 8
  ret i8* %66
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i8* @psprintf(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @DatumGetTimestampTz(i32) #1

declare dso_local i64 @GetCurrentTimestamp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
