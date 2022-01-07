; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_shippable.c_is_shippable.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_shippable.c_is_shippable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i8*, i8* }
%struct.TYPE_9__ = type { i32 }

@NIL = common dso_local global i64 0, align 8
@ShippableCacheHash = common dso_local global i32 0, align 4
@HASH_FIND = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_shippable(i8* %0, i8* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @is_builtin(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %62

15:                                               ; preds = %3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NIL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %62

22:                                               ; preds = %15
  %23 = load i32, i32* @ShippableCacheHash, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = call i32 (...) @InitializeShippableCache()
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @ShippableCacheHash, align 4
  %39 = bitcast %struct.TYPE_8__* %8 to i8*
  %40 = load i32, i32* @HASH_FIND, align 4
  %41 = call i64 @hash_search(i32 %38, i8* %39, i32 %40, i32* null)
  %42 = inttoptr i64 %41 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %9, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = icmp ne %struct.TYPE_9__* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %27
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = call i32 @lookup_shippable(i8* %46, i8* %47, %struct.TYPE_10__* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @ShippableCacheHash, align 4
  %51 = bitcast %struct.TYPE_8__* %8 to i8*
  %52 = load i32, i32* @HASH_ENTER, align 4
  %53 = call i64 @hash_search(i32 %50, i8* %51, i32 %52, i32* null)
  %54 = inttoptr i64 %53 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %45, %27
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %21, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @is_builtin(i8*) #1

declare dso_local i32 @InitializeShippableCache(...) #1

declare dso_local i64 @hash_search(i32, i8*, i32, i32*) #1

declare dso_local i32 @lookup_shippable(i8*, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
