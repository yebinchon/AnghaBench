; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_RI_FKey_fk_upd_check_required.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_ri_triggers.c_RI_FKey_fk_upd_check_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@RI_KEYS_ALL_NULL = common dso_local global i32 0, align 4
@RI_KEYS_SOME_NULL = common dso_local global i32 0, align 4
@MinTransactionIdAttributeNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RI_FKey_fk_upd_check_required(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_5__* @ri_FetchConstraintInfo(i32* %15, i32 %16, i32 0)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @RelationGetDescr(i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %22 = call i32 @ri_NullCheck(i32 %19, i32* %20, %struct.TYPE_5__* %21, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @RI_KEYS_ALL_NULL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %64

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @RI_KEYS_SOME_NULL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %38 [
    i32 128, label %35
    i32 129, label %36
    i32 130, label %37
  ]

35:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %64

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %64

38:                                               ; preds = %31, %36
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @MinTransactionIdAttributeNumber, align 4
  %43 = call i32 @slot_getsysattr(i32* %41, i32 %42, i32* %14)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @DatumGetTransactionId(i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i64 @TransactionIdIsCurrentTransactionId(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %64

55:                                               ; preds = %40
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = call i64 @ri_KeysEqual(i32 %56, i32* %57, i32* %58, %struct.TYPE_5__* %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %64

63:                                               ; preds = %55
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %62, %54, %37, %35, %26
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_5__* @ri_FetchConstraintInfo(i32*, i32, i32) #1

declare dso_local i32 @ri_NullCheck(i32, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @slot_getsysattr(i32*, i32, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @DatumGetTransactionId(i32) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @ri_KeysEqual(i32, i32*, i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
