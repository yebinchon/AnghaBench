; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_dshash_find.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_dshash.c_dshash_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@DSHASH_MAGIC = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dshash_find(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @hash_key(%struct.TYPE_10__* %11, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @PARTITION_FOR_HASH(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DSHASH_MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @PARTITION_LOCK(%struct.TYPE_10__* %32, i64 %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @LW_EXCLUSIVE, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @LW_SHARED, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @LWLockAcquire(i32 %34, i32 %42)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call i32 @ensure_valid_bucket_pointers(%struct.TYPE_10__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @BUCKET_FOR_HASH(%struct.TYPE_10__* %48, i32 %49)
  %51 = call i32* @find_in_bucket(%struct.TYPE_10__* %46, i8* %47, i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %41
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @PARTITION_LOCK(%struct.TYPE_10__* %55, i64 %56)
  %58 = call i32 @LWLockRelease(i32 %57)
  store i8* null, i8** %4, align 8
  br label %67

59:                                               ; preds = %41
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = call i8* @ENTRY_FROM_ITEM(i32* %65)
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %59, %54
  %68 = load i8*, i8** %4, align 8
  ret i8* %68
}

declare dso_local i32 @hash_key(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @PARTITION_FOR_HASH(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @PARTITION_LOCK(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @ensure_valid_bucket_pointers(%struct.TYPE_10__*) #1

declare dso_local i32* @find_in_bucket(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @BUCKET_FOR_HASH(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i8* @ENTRY_FROM_ITEM(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
