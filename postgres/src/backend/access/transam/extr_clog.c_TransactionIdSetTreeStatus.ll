; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetTreeStatus.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_clog.c_TransactionIdSetTreeStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRANSACTION_STATUS_COMMITTED = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_ABORTED = common dso_local global i64 0, align 8
@TRANSACTION_STATUS_SUB_COMMITTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TransactionIdSetTreeStatus(i32 %0, i32 %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @TransactionIdToPage(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @TRANSACTION_STATUS_COMMITTED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @TRANSACTION_STATUS_ABORTED, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i1 [ true, %5 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %42, %23
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @TransactionIdToPage(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %45

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %27

45:                                               ; preds = %40, %27
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @TransactionIdSetPageStatus(i32 %50, i32 %51, i32* %52, i64 %53, i32 %54, i32 %55, i32 1)
  br label %93

57:                                               ; preds = %45
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %13, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @TRANSACTION_STATUS_COMMITTED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %13, align 4
  %65 = sub nsw i32 %63, %64
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i64, i64* @TRANSACTION_STATUS_SUB_COMMITTED, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @set_status_by_pages(i32 %65, i32* %69, i64 %70, i32 %71)
  br label %73

73:                                               ; preds = %62, %57
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @TransactionIdToPage(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @TransactionIdSetPageStatus(i32 %76, i32 %77, i32* %78, i64 %79, i32 %80, i32 %81, i32 0)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32*, i32** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @set_status_by_pages(i32 %85, i32* %89, i64 %90, i32 %91)
  br label %93

93:                                               ; preds = %73, %49
  ret void
}

declare dso_local i32 @TransactionIdToPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdSetPageStatus(i32, i32, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @set_status_by_pages(i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
