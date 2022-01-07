; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_page_recyclable.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_page_recyclable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RecentGlobalXmin = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bt_page_recyclable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @PageIsNew(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @PageGetSpecialPointer(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %4, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i64 @P_ISDELETED(%struct.TYPE_5__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RecentGlobalXmin, align 4
  %22 = call i64 @TransactionIdPrecedes(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %26

25:                                               ; preds = %16, %9
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_5__*) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
