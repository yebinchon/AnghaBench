; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_RequestNamedLWLockTranche.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_RequestNamedLWLockTranche.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@IsUnderPostmaster = common dso_local global i64 0, align 8
@lock_named_request_allowed = common dso_local global i32 0, align 4
@NamedLWLockTrancheRequestArray = common dso_local global %struct.TYPE_4__* null, align 8
@NamedLWLockTrancheRequestsAllocated = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@NamedLWLockTrancheRequests = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RequestNamedLWLockTranche(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @IsUnderPostmaster, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @lock_named_request_allowed, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %69

13:                                               ; preds = %9
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NamedLWLockTrancheRequestArray, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  store i32 16, i32* @NamedLWLockTrancheRequestsAllocated, align 4
  %17 = load i32, i32* @TopMemoryContext, align 4
  %18 = load i32, i32* @NamedLWLockTrancheRequestsAllocated, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @MemoryContextAlloc(i32 %17, i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** @NamedLWLockTrancheRequestArray, align 8
  br label %24

24:                                               ; preds = %16, %13
  %25 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %26 = load i32, i32* @NamedLWLockTrancheRequestsAllocated, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32, i32* @NamedLWLockTrancheRequestsAllocated, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %34, %28
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %6, align 4
  br label %30

37:                                               ; preds = %30
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NamedLWLockTrancheRequestArray, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @repalloc(%struct.TYPE_4__* %38, i32 %42)
  %44 = inttoptr i64 %43 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** @NamedLWLockTrancheRequestArray, align 8
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @NamedLWLockTrancheRequestsAllocated, align 4
  br label %46

46:                                               ; preds = %37, %24
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @NamedLWLockTrancheRequestArray, align 8
  %48 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %5, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = add nsw i64 %52, 1
  %54 = load i64, i64* @NAMEDATALEN, align 8
  %55 = icmp slt i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i64, i64* @NAMEDATALEN, align 8
  %63 = call i32 @StrNCpy(i32 %60, i8* %61, i64 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @NamedLWLockTrancheRequests, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @NamedLWLockTrancheRequests, align 4
  br label %69

69:                                               ; preds = %46, %12
  ret void
}

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @StrNCpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
