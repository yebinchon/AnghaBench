; ModuleID = '/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_insert.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@expanding = common dso_local global i64 0, align 8
@hashpower = common dso_local global i64 0, align 8
@expand_bucket = common dso_local global i32 0, align 4
@old_hashtable = common dso_local global %struct.TYPE_6__** null, align 8
@primary_hashtable = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assoc_insert(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @expanding, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @hashpower, align 8
  %11 = sub nsw i64 %10, 1
  %12 = call i64 @hashmask(i64 %11)
  %13 = and i64 %9, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @expand_bucket, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %8
  %18 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @old_hashtable, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %18, i64 %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @old_hashtable, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %28
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %29, align 8
  br label %47

30:                                               ; preds = %8, %2
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @primary_hashtable, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @hashpower, align 8
  %34 = call i64 @hashmask(i64 %33)
  %35 = and i64 %32, %34
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @primary_hashtable, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @hashpower, align 8
  %44 = call i64 @hashmask(i64 %43)
  %45 = and i64 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %45
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %46, align 8
  br label %47

47:                                               ; preds = %30, %17
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = call i32 @ITEM_key(%struct.TYPE_6__* %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @MEMCACHED_ASSOC_INSERT(i32 %49, i32 %52)
  ret i32 1
}

declare dso_local i64 @hashmask(i64) #1

declare dso_local i32 @MEMCACHED_ASSOC_INSERT(i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
