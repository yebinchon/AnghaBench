; ModuleID = '/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_find.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_assoc.c_assoc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }

@expanding = common dso_local global i64 0, align 8
@hashpower = common dso_local global i64 0, align 8
@expand_bucket = common dso_local global i32 0, align 4
@old_hashtable = common dso_local global %struct.TYPE_6__** null, align 8
@primary_hashtable = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @assoc_find(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i64, i64* @expanding, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @hashpower, align 8
  %16 = sub nsw i64 %15, 1
  %17 = call i64 @hashmask(i64 %16)
  %18 = and i64 %14, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @expand_bucket, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @old_hashtable, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 %25
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %7, align 8
  br label %36

28:                                               ; preds = %13, %3
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @primary_hashtable, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @hashpower, align 8
  %32 = call i64 @hashmask(i64 %31)
  %33 = and i64 %30, %32
  %34 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %29, i64 %33
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %7, align 8
  br label %36

36:                                               ; preds = %28, %22
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = call i32 @ITEM_key(%struct.TYPE_6__* %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @memcmp(i8* %47, i32 %49, i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %9, align 8
  br label %61

55:                                               ; preds = %46, %40
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %37

61:                                               ; preds = %53, %37
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @MEMCACHED_ASSOC_FIND(i8* %62, i64 %63, i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %66
}

declare dso_local i64 @hashmask(i64) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_6__*) #1

declare dso_local i32 @MEMCACHED_ASSOC_FIND(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
