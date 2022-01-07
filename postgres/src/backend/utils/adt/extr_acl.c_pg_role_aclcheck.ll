; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_pg_role_aclcheck.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_pg_role_aclcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_CREATE = common dso_local global i32 0, align 4
@ACLCHECK_OK = common dso_local global i32 0, align 4
@ACL_USAGE = common dso_local global i32 0, align 4
@ACLCHECK_NO_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pg_role_aclcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_role_aclcheck(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ACL_CREATE, align 4
  %10 = call i32 @ACL_GRANT_OPTION_FOR(i32 %9)
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @is_admin_of_role(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @ACLCHECK_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @ACL_CREATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @is_member_of_role(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @ACLCHECK_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @ACL_USAGE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @has_privs_of_role(i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @ACLCHECK_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %49

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i32, i32* @ACLCHECK_NO_PRIV, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %44, %31, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @ACL_GRANT_OPTION_FOR(i32) #1

declare dso_local i64 @is_admin_of_role(i32, i32) #1

declare dso_local i64 @is_member_of_role(i32, i32) #1

declare dso_local i64 @has_privs_of_role(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
