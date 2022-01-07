; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_ExtendMultiXactMember.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_ExtendMultiXactMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MultiXactMemberControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MAX_MEMBERS_IN_LAST_MEMBERS_PAGE = common dso_local global i32 0, align 4
@MaxMultiXactOffset = common dso_local global i32 0, align 4
@MULTIXACT_MEMBERS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @ExtendMultiXactMember to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExtendMultiXactMember(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @MXOffsetToFlagsOffset(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @MXOffsetToFlagsBitShift(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @MXOffsetToMemberPage(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MultiXactMemberControlLock, align 4
  %26 = load i32, i32* @LW_EXCLUSIVE, align 4
  %27 = call i32 @LWLockAcquire(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ZeroMultiXactMemberPage(i32 %28, i32 1)
  %30 = load i32, i32* @MultiXactMemberControlLock, align 4
  %31 = call i32 @LWLockRelease(i32 %30)
  br label %32

32:                                               ; preds = %22, %19, %12
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @MAX_MEMBERS_IN_LAST_MEMBERS_PAGE, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @MaxMultiXactOffset, align 4
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @MULTIXACT_MEMBERS_PER_PAGE, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @MULTIXACT_MEMBERS_PER_PAGE, align 4
  %47 = srem i32 %45, %46
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %9

56:                                               ; preds = %9
  ret void
}

declare dso_local i32 @MXOffsetToFlagsOffset(i32) #1

declare dso_local i32 @MXOffsetToFlagsBitShift(i32) #1

declare dso_local i32 @MXOffsetToMemberPage(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ZeroMultiXactMemberPage(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
