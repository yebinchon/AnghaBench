; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_superuser.c_superuser_arg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_superuser.c_superuser_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@last_roleid = common dso_local global i64 0, align 8
@last_roleid_is_super = common dso_local global i32 0, align 4
@IsUnderPostmaster = common dso_local global i32 0, align 4
@BOOTSTRAP_SUPERUSERID = common dso_local global i64 0, align 8
@AUTHOID = common dso_local global i32 0, align 4
@roleid_callback_registered = common dso_local global i32 0, align 4
@RoleidCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @superuser_arg(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* @last_roleid, align 8
  %7 = call i64 @OidIsValid(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i64, i64* @last_roleid, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @last_roleid_is_super, align 4
  store i32 %14, i32* %2, align 4
  br label %51

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @IsUnderPostmaster, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @BOOTSTRAP_SUPERUSERID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %51

23:                                               ; preds = %18, %15
  %24 = load i32, i32* @AUTHOID, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @ObjectIdGetDatum(i64 %25)
  %27 = call i32 @SearchSysCache1(i32 %24, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @HeapTupleIsValid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @GETSTRUCT(i32 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ReleaseSysCache(i32 %37)
  br label %40

39:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* @roleid_callback_registered, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* @AUTHOID, align 4
  %45 = load i32, i32* @RoleidCallback, align 4
  %46 = call i32 @CacheRegisterSyscacheCallback(i32 %44, i32 %45, i32 0)
  store i32 1, i32* @roleid_callback_registered, align 4
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, i64* %3, align 8
  store i64 %48, i64* @last_roleid, align 8
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* @last_roleid_is_super, align 4
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %22, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @CacheRegisterSyscacheCallback(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
