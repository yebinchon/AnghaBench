; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageReuse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageReuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@InHotStandby = common dso_local global i64 0, align 8
@MaxTransactionId = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @gistRedoPageReuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistRedoPageReuse(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @XLogRecGetData(i32* %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %3, align 8
  %11 = load i64, i64* @InHotStandby, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = call i32 (...) @ReadNextFullTransactionId()
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @ReadNextFullTransactionId()
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @U64FromFullTransactionId(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @U64FromFullTransactionId(i32 %21)
  %23 = sub nsw i32 %20, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MaxTransactionId, align 4
  %26 = sdiv i32 %25, 2
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %13
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @XidFromFullTransactionId(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ResolveRecoveryConflictWithSnapshot(i32 %31, i32 %34)
  br label %36

36:                                               ; preds = %28, %13
  br label %37

37:                                               ; preds = %36, %1
  ret void
}

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i32 @ReadNextFullTransactionId(...) #1

declare dso_local i32 @U64FromFullTransactionId(i32) #1

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i32 @ResolveRecoveryConflictWithSnapshot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
