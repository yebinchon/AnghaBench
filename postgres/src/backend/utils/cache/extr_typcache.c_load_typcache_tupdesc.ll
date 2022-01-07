; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_load_typcache_tupdesc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_typcache.c_load_typcache_tupdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid typrelid for composite type %u\00", align 1
@AccessShareLock = common dso_local global i32 0, align 4
@tupledesc_id_counter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @load_typcache_tupdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_typcache_tupdesc(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @OidIsValid(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @elog(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AccessShareLock, align 4
  %20 = call %struct.TYPE_11__* @relation_open(i32 %18, i32 %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %3, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = call %struct.TYPE_12__* @RelationGetDescr(%struct.TYPE_11__* %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load i64, i64* @tupledesc_id_counter, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* @tupledesc_id_counter, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = load i32, i32* @AccessShareLock, align 4
  %56 = call i32 @relation_close(%struct.TYPE_11__* %54, i32 %55)
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local %struct.TYPE_11__* @relation_open(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_12__* @RelationGetDescr(%struct.TYPE_11__*) #1

declare dso_local i32 @relation_close(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
