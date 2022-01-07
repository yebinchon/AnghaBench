; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockRegisterTranche.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockRegisterTranche.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LWLockTrancheArray = common dso_local global i8** null, align 8
@LWLockTranchesAllocated = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LWLockRegisterTranche(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8**, i8*** @LWLockTrancheArray, align 8
  %8 = icmp ne i8** %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @LWLockTranchesAllocated, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %2
  %15 = load i32, i32* @LWLockTranchesAllocated, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @LWLockTranchesAllocated, align 4
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %21, %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 2
  store i32 %23, i32* %5, align 4
  br label %17

24:                                               ; preds = %17
  %25 = load i8**, i8*** @LWLockTrancheArray, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @repalloc(i8** %25, i32 %29)
  %31 = inttoptr i64 %30 to i8**
  store i8** %31, i8*** @LWLockTrancheArray, align 8
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* @LWLockTranchesAllocated, align 4
  br label %33

33:                                               ; preds = %37, %24
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LWLockTranchesAllocated, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8**, i8*** @LWLockTrancheArray, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* null, i8** %42, align 8
  br label %33

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i8*, i8** %4, align 8
  %46 = load i8**, i8*** @LWLockTrancheArray, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @repalloc(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
