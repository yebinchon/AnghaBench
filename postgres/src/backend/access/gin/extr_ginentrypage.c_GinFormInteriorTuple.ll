; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_GinFormInteriorTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginentrypage.c_GinFormInteriorTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

@INDEX_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, i32, i32)* @GinFormInteriorTuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @GinFormInteriorTuple(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @GinPageIsLeaf(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = call i32 @GinIsPostingTree(%struct.TYPE_10__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @GinGetPostingOffset(%struct.TYPE_10__* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @MAXALIGN(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @palloc(i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %7, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @memcpy(%struct.TYPE_10__* %24, %struct.TYPE_10__* %25, i32 %26)
  %28 = load i32, i32* @INDEX_SIZE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %49

39:                                               ; preds = %12, %3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = call i32 @IndexTupleSize(%struct.TYPE_10__* %40)
  %42 = call i64 @palloc(i32 %41)
  %43 = inttoptr i64 %42 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %7, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = call i32 @IndexTupleSize(%struct.TYPE_10__* %46)
  %48 = call i32 @memcpy(%struct.TYPE_10__* %44, %struct.TYPE_10__* %45, i32 %47)
  br label %49

49:                                               ; preds = %39, %16
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @GinSetDownlink(%struct.TYPE_10__* %50, i32 %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  ret %struct.TYPE_10__* %53
}

declare dso_local i64 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinIsPostingTree(%struct.TYPE_10__*) #1

declare dso_local i32 @GinGetPostingOffset(%struct.TYPE_10__*) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_10__*) #1

declare dso_local i32 @GinSetDownlink(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
