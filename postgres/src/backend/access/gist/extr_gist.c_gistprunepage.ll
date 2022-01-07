; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistprunepage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistprunepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @gistprunepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistprunepage(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @GistPageIsLeaf(i32 %22)
  %24 = call i32 @Assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @PageGetMaxOffsetNumber(i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %46, %4
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @PageGetItemId(i32 %33, i64 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i64 @ItemIdIsDead(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i64, i64* %20, i64 %43
  store i64 %40, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %32
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %12, align 8
  %48 = call i64 @OffsetNumberNext(i64 %47)
  store i64 %48, i64* %12, align 8
  br label %28

49:                                               ; preds = %28
  %50 = call i64 (...) @XLogStandbyInfoActive()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = call i64 @RelationNeedsWAL(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @index_compute_xid_horizon_for_tuples(i32 %57, i32 %58, i32 %59, i64* %20, i32 %60)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %56, %52, %49
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = call i32 (...) @START_CRIT_SECTION()
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @PageIndexMultiDelete(i32 %67, i64* %20, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @GistClearPageHasGarbage(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @MarkBufferDirty(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = call i64 @RelationNeedsWAL(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %65
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @gistXLogDelete(i32 %78, i64* %20, i32 %79, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @PageSetLSN(i32 %82, i32 %83)
  br label %90

85:                                               ; preds = %65
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @gistGetFakeLSN(i32 %87)
  %89 = call i32 @PageSetLSN(i32 %86, i32 %88)
  br label %90

90:                                               ; preds = %85, %77
  %91 = call i32 (...) @END_CRIT_SECTION()
  br label %92

92:                                               ; preds = %90, %62
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @GistPageIsLeaf(i32) #2

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #2

declare dso_local i32 @PageGetItemId(i32, i64) #2

declare dso_local i64 @ItemIdIsDead(i32) #2

declare dso_local i64 @OffsetNumberNext(i64) #2

declare dso_local i64 @XLogStandbyInfoActive(...) #2

declare dso_local i64 @RelationNeedsWAL(i32) #2

declare dso_local i32 @index_compute_xid_horizon_for_tuples(i32, i32, i32, i64*, i32) #2

declare dso_local i32 @START_CRIT_SECTION(...) #2

declare dso_local i32 @PageIndexMultiDelete(i32, i64*, i32) #2

declare dso_local i32 @GistClearPageHasGarbage(i32) #2

declare dso_local i32 @MarkBufferDirty(i32) #2

declare dso_local i32 @gistXLogDelete(i32, i64*, i32, i32) #2

declare dso_local i32 @PageSetLSN(i32, i32) #2

declare dso_local i32 @gistGetFakeLSN(i32) #2

declare dso_local i32 @END_CRIT_SECTION(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
