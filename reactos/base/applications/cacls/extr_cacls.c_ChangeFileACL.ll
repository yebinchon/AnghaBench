; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_ChangeFileACL.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cacls/extr_cacls.c_ChangeFileACL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OptionG = common dso_local global i64 0, align 8
@GUser = common dso_local global i32 0, align 4
@GPerm = common dso_local global i32* null, align 8
@OptionP = common dso_local global i64 0, align 8
@OptionE = common dso_local global i32 0, align 4
@PUser = common dso_local global i32 0, align 4
@PPerm = common dso_local global i32* null, align 8
@OptionD = common dso_local global i64 0, align 8
@DUser = common dso_local global i32 0, align 4
@OptionR = common dso_local global i64 0, align 8
@RUser = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ChangeFileACL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ChangeFileACL(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i64, i64* @OptionG, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @GUser, align 4
  %11 = load i32*, i32** @GPerm, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GrantUserAccessRights(i32 %8, i32 %9, i32 %10, i32 %12)
  br label %14

14:                                               ; preds = %7, %2
  %15 = load i64, i64* @OptionP, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i32, i32* @OptionE, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PUser, align 4
  %24 = load i32*, i32** @PPerm, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ReplaceUserAccessRights(i32 %21, i32 %22, i32 %23, i32 %25)
  br label %34

27:                                               ; preds = %17
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PUser, align 4
  %31 = load i32*, i32** @PPerm, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @EditUserAccessRights(i32 %28, i32 %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34, %14
  %36 = load i64, i64* @OptionD, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DUser, align 4
  %42 = call i32 @DenyUserAccess(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i64, i64* @OptionR, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @RUser, align 4
  %50 = call i32 @RevokeUserAccessRights(i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* @TRUE, align 4
  ret i32 %52
}

declare dso_local i32 @GrantUserAccessRights(i32, i32, i32, i32) #1

declare dso_local i32 @ReplaceUserAccessRights(i32, i32, i32, i32) #1

declare dso_local i32 @EditUserAccessRights(i32, i32, i32, i32) #1

declare dso_local i32 @DenyUserAccess(i32, i32, i32) #1

declare dso_local i32 @RevokeUserAccessRights(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
