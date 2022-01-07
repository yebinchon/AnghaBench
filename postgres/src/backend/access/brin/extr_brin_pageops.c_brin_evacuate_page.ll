; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_evacuate_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_pageops.c_brin_evacuate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@BRIN_EVACUATE_PAGE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brin_evacuate_page(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BufferGetPage(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @BrinPageFlags(i32 %19)
  %21 = load i32, i32* @BRIN_EVACUATE_PAGE, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @Assert(i32 %22)
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @PageGetMaxOffsetNumber(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %26, i64* %9, align 8
  br label %27

27:                                               ; preds = %80, %4
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  %32 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %33 = load i32, i32* %11, align 4
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @PageGetItemId(i32 %33, i64 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i64 @ItemIdIsUsed(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %31
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @ItemIdGetLength(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i64 @PageGetItem(i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %14, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = call %struct.TYPE_7__* @brin_copy_tuple(%struct.TYPE_7__* %46, i32 %47, %struct.TYPE_7__* %48, i32* %13)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %14, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %52 = call i32 @LockBuffer(i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @brin_doupdate(i32 %53, i32 %54, i32* %55, i32 %58, i32 %59, i64 %60, %struct.TYPE_7__* %61, i32 %62, %struct.TYPE_7__* %63, i32 %64, i32 0)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %39
  %68 = load i64, i64* %9, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %9, align 8
  br label %70

70:                                               ; preds = %67, %39
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %73 = call i32 @LockBuffer(i32 %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @BRIN_IS_REGULAR_PAGE(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %83

78:                                               ; preds = %70
  br label %79

79:                                               ; preds = %78, %31
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %9, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %9, align 8
  br label %27

83:                                               ; preds = %77, %27
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @UnlockReleaseBuffer(i32 %84)
  ret void
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BrinPageFlags(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i64 @ItemIdIsUsed(i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local %struct.TYPE_7__* @brin_copy_tuple(%struct.TYPE_7__*, i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @brin_doupdate(i32, i32, i32*, i32, i32, i64, %struct.TYPE_7__*, i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @BRIN_IS_REGULAR_PAGE(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
