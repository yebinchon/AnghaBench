; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_get_default_acl_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_aclchk.c_get_default_acl_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFACLROLENSPOBJ = common dso_local global i32 0, align 4
@Anum_pg_default_acl_defaclacl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i8)* @get_default_acl_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_default_acl_internal(i32 %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  store i32* null, i32** %7, align 8
  %11 = load i32, i32* @DEFACLROLENSPOBJ, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ObjectIdGetDatum(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = load i8, i8* %6, align 1
  %17 = call i32 @CharGetDatum(i8 signext %16)
  %18 = call i32 @SearchSysCache3(i32 %11, i32 %13, i32 %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @HeapTupleIsValid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* @DEFACLROLENSPOBJ, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @Anum_pg_default_acl_defaclacl, align 4
  %26 = call i32 @SysCacheGetAttr(i32 %23, i32 %24, i32 %25, i32* %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = call i32* @DatumGetAclPCopy(i32 %30)
  store i32* %31, i32** %7, align 8
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ReleaseSysCache(i32 %33)
  br label %35

35:                                               ; preds = %32, %3
  %36 = load i32*, i32** %7, align 8
  ret i32* %36
}

declare dso_local i32 @SearchSysCache3(i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @CharGetDatum(i8 signext) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i32 @SysCacheGetAttr(i32, i32, i32, i32*) #1

declare dso_local i32* @DatumGetAclPCopy(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
