; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_entry_dealloc.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_stat_statements/extr_pg_stat_statements.c_entry_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@pgss_hash = common dso_local global i32 0, align 4
@STICKY_DECREASE_FACTOR = common dso_local global i32 0, align 4
@USAGE_DECREASE_FACTOR = common dso_local global i32 0, align 4
@entry_cmp = common dso_local global i32 0, align 4
@pgss = common dso_local global %struct.TYPE_10__* null, align 8
@ASSUMED_LENGTH_INIT = common dso_local global i32 0, align 4
@USAGE_DEALLOC_PERCENT = common dso_local global i32 0, align 4
@HASH_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @entry_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entry_dealloc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @pgss_hash, align 4
  %9 = call i32 @hash_get_num_entries(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call %struct.TYPE_9__** @palloc(i32 %12)
  store %struct.TYPE_9__** %13, %struct.TYPE_9__*** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @pgss_hash, align 4
  %15 = call i32 @hash_seq_init(i32* %1, i32 %14)
  br label %16

16:                                               ; preds = %61, %0
  %17 = call %struct.TYPE_9__* @hash_seq_search(i32* %1)
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %3, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %62

19:                                               ; preds = %16
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %21, i64 %24
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load i32, i32* @STICKY_DECREASE_FACTOR, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, %32
  store i32 %37, i32* %35, align 8
  br label %45

38:                                               ; preds = %19
  %39 = load i32, i32* @USAGE_DECREASE_FACTOR, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = mul nsw i32 %43, %39
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %50, %45
  br label %16

62:                                               ; preds = %16
  %63 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @entry_cmp, align 4
  %66 = call i32 @qsort(%struct.TYPE_9__** %63, i32 %64, i32 8, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sdiv i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %70, i64 %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pgss, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %69, %62
  %82 = load i32, i32* %7, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sdiv i32 %85, %86
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pgss, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @ASSUMED_LENGTH_INIT, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pgss, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %84
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @USAGE_DEALLOC_PERCENT, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sdiv i32 %97, 100
  %99 = call i32 @Max(i32 10, i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @Min(i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %117, %94
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %103
  %108 = load i32, i32* @pgss_hash, align 4
  %109 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %109, i64 %111
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i32, i32* @HASH_REMOVE, align 4
  %116 = call i32 @hash_search(i32 %108, i32* %114, i32 %115, i32* null)
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %103

120:                                              ; preds = %103
  %121 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %122 = call i32 @pfree(%struct.TYPE_9__** %121)
  ret void
}

declare dso_local %struct.TYPE_9__** @palloc(i32) #1

declare dso_local i32 @hash_get_num_entries(i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @hash_seq_search(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_9__**, i32, i32, i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @hash_search(i32, i32*, i32, i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
