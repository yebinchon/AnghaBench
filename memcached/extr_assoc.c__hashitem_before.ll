; ModuleID = '/home/carl/AnghaBench/memcached/extr_assoc.c__hashitem_before.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_assoc.c__hashitem_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }

@expanding = common dso_local global i64 0, align 8
@hashpower = common dso_local global i64 0, align 8
@expand_bucket = common dso_local global i32 0, align 4
@old_hashtable = common dso_local global %struct.TYPE_6__** null, align 8
@primary_hashtable = common dso_local global %struct.TYPE_6__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__** (i8*, i64, i64)* @_hashitem_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__** @_hashitem_before(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* @expanding, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @hashpower, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i64 @hashmask(i64 %14)
  %16 = and i64 %12, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @expand_bucket, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @old_hashtable, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %21, i64 %23
  store %struct.TYPE_6__** %24, %struct.TYPE_6__*** %7, align 8
  br label %32

25:                                               ; preds = %11, %3
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @primary_hashtable, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @hashpower, align 8
  %29 = call i64 @hashmask(i64 %28)
  %30 = and i64 %27, %29
  %31 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %30
  store %struct.TYPE_6__** %31, %struct.TYPE_6__*** %7, align 8
  br label %32

32:                                               ; preds = %25, %20
  br label %33

33:                                               ; preds = %56, %32
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %38, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load i8*, i8** %4, align 8
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @ITEM_key(%struct.TYPE_6__* %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @memcmp(i8* %45, i32 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %44, %37
  %53 = phi i1 [ true, %37 ], [ %51, %44 ]
  br label %54

54:                                               ; preds = %52, %33
  %55 = phi i1 [ false, %33 ], [ %53, %52 ]
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  store %struct.TYPE_6__** %59, %struct.TYPE_6__*** %7, align 8
  br label %33

60:                                               ; preds = %54
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  ret %struct.TYPE_6__** %61
}

declare dso_local i64 @hashmask(i64) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
