; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entryPreparePage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_entryPreparePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.TYPE_3__*, i64)* @entryPreparePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entryPreparePage(i32 %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GinPageIsData(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @GinPageIsLeaf(i32 %27)
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @PageIndexTupleDelete(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %26, %5
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @GinPageIsLeaf(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @InvalidBlockNumber, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @PageGetItemId(i32 %43, i32 %44)
  %46 = call i32 @PageGetItem(i32 %42, i32 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @GinSetDownlink(i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %41, %37, %33
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i32) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @GinSetDownlink(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
