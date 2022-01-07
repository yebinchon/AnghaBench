; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_spgvacuumcleanup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_spgvacuumcleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32*, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }

@dummy_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @spgvacuumcleanup(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %3, align 8
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = icmp eq %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = call i64 @palloc0(i32 8)
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %20, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %22, align 8
  %23 = load i32, i32* @dummy_callback, align 4
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = call i32 @spgvacuumscan(%struct.TYPE_8__* %6)
  br label %27

27:                                               ; preds = %16, %13
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %32
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %3, align 8
  br label %49

49:                                               ; preds = %47, %11
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %50
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @spgvacuumscan(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
