; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_getbuf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_getbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@P_NEW = common dso_local global i64 0, align 8
@BT_WRITE = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"FSM returned nonrecyclable page\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"FSM returned nonlockable page\00", align 1
@ExclusiveLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_getbuf(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @P_NEW, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @ReadBuffer(i32 %16, i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @LockBuffer(i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @_bt_checkpage(i32 %22, i32 %23)
  br label %127

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @BT_WRITE, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @Assert(i32 %29)
  br label %31

31:                                               ; preds = %91, %25
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @GetFreeIndexPage(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @InvalidBlockNumber, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %92

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @ReadBuffer(i32 %39, i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @ConditionalLockBuffer(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %38
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @BufferGetPage(i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @_bt_page_recyclable(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %80

51:                                               ; preds = %45
  %52 = call i64 (...) @XLogStandbyInfoActive()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @RelationNeedsWAL(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @PageIsNew(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @PageGetSpecialPointer(i32 %63)
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %11, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @_bt_log_reuse_page(i32 %67, i64 %68, i32 %72)
  br label %74

74:                                               ; preds = %62, %58, %54, %51
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @BufferGetPageSize(i32 %76)
  %78 = call i32 @_bt_pageinit(i32 %75, i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %129

80:                                               ; preds = %45
  %81 = load i32, i32* @DEBUG2, align 4
  %82 = call i32 @elog(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @_bt_relbuf(i32 %83, i32 %84)
  br label %91

86:                                               ; preds = %38
  %87 = load i32, i32* @DEBUG2, align 4
  %88 = call i32 @elog(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ReleaseBuffer(i32 %89)
  br label %91

91:                                               ; preds = %86, %80
  br label %31

92:                                               ; preds = %37
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @RELATION_IS_LOCAL(i32 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @ExclusiveLock, align 4
  %103 = call i32 @LockRelationForExtension(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %92
  %105 = load i32, i32* %5, align 4
  %106 = load i64, i64* @P_NEW, align 8
  %107 = call i32 @ReadBuffer(i32 %105, i64 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @BT_WRITE, align 4
  %110 = call i32 @LockBuffer(i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %104
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @ExclusiveLock, align 4
  %116 = call i32 @UnlockRelationForExtension(i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %104
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @BufferGetPage(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @PageIsNew(i32 %120)
  %122 = call i32 @Assert(i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @BufferGetPageSize(i32 %124)
  %126 = call i32 @_bt_pageinit(i32 %123, i32 %125)
  br label %127

127:                                              ; preds = %117, %15
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %74
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @_bt_checkpage(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @GetFreeIndexPage(i32) #1

declare dso_local i64 @ConditionalLockBuffer(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @_bt_page_recyclable(i32) #1

declare dso_local i64 @XLogStandbyInfoActive(...) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @_bt_log_reuse_page(i32, i64, i32) #1

declare dso_local i32 @_bt_pageinit(i32, i32) #1

declare dso_local i32 @BufferGetPageSize(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @RELATION_IS_LOCAL(i32) #1

declare dso_local i32 @LockRelationForExtension(i32, i32) #1

declare dso_local i32 @UnlockRelationForExtension(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
