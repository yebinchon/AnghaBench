; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_hashtable.c_hashtable_do_rehash.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_hashtable.c_hashtable_do_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.hashtable_bucket*, %struct.TYPE_10__ }
%struct.hashtable_bucket = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @hashtable_do_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashtable_do_rehash(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hashtable_bucket*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i64 @hashsize(i64 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = mul i64 %19, 4
  %21 = call %struct.hashtable_bucket* @jsonp_malloc(i64 %20)
  store %struct.hashtable_bucket* %21, %struct.hashtable_bucket** %11, align 8
  %22 = load %struct.hashtable_bucket*, %struct.hashtable_bucket** %11, align 8
  %23 = icmp ne %struct.hashtable_bucket* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %99

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load %struct.hashtable_bucket*, %struct.hashtable_bucket** %27, align 8
  %29 = call i32 @jsonp_free(%struct.hashtable_bucket* %28)
  %30 = load %struct.hashtable_bucket*, %struct.hashtable_bucket** %11, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  store %struct.hashtable_bucket* %30, %struct.hashtable_bucket** %32, align 8
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %60, %25
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = call i64 @hashsize(i64 %42)
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %37
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.hashtable_bucket*, %struct.hashtable_bucket** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.hashtable_bucket, %struct.hashtable_bucket* %50, i64 %51
  %53 = getelementptr inbounds %struct.hashtable_bucket, %struct.hashtable_bucket* %52, i32 0, i32 0
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.hashtable_bucket*, %struct.hashtable_bucket** %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct.hashtable_bucket, %struct.hashtable_bucket* %56, i64 %57
  %59 = getelementptr inbounds %struct.hashtable_bucket, %struct.hashtable_bucket* %58, i32 0, i32 1
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %59, align 8
  br label %60

60:                                               ; preds = %45
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %37

63:                                               ; preds = %37
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %4, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = call i32 @list_init(%struct.TYPE_10__* %69)
  br label %71

71:                                               ; preds = %96, %63
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  %75 = icmp ne %struct.TYPE_10__* %72, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %5, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = call %struct.TYPE_9__* @list_to_pair(%struct.TYPE_10__* %80)
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %6, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = urem i64 %84, %85
  store i64 %86, i64* %8, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load %struct.hashtable_bucket*, %struct.hashtable_bucket** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.hashtable_bucket, %struct.hashtable_bucket* %90, i64 %91
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = call i32 @insert_to_bucket(%struct.TYPE_11__* %87, %struct.hashtable_bucket* %92, i32* %94)
  br label %96

96:                                               ; preds = %76
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %4, align 8
  br label %71

98:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %24
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @hashsize(i64) #1

declare dso_local %struct.hashtable_bucket* @jsonp_malloc(i64) #1

declare dso_local i32 @jsonp_free(%struct.hashtable_bucket*) #1

declare dso_local i32 @list_init(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @list_to_pair(%struct.TYPE_10__*) #1

declare dso_local i32 @insert_to_bucket(%struct.TYPE_11__*, %struct.hashtable_bucket*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
