; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_do_item_unlink_q.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_do_item_unlink_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64, %struct.TYPE_6__*, %struct.TYPE_6__* }

@heads = common dso_local global %struct.TYPE_6__** null, align 8
@tails = common dso_local global %struct.TYPE_6__** null, align 8
@sizes = common dso_local global i32* null, align 8
@sizes_bytes = common dso_local global i32* null, align 8
@ITEM_HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @do_item_unlink_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_item_unlink_q(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @heads, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %5, i64 %8
  store %struct.TYPE_6__** %9, %struct.TYPE_6__*** %3, align 8
  %10 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @tails, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %10, i64 %13
  store %struct.TYPE_6__** %14, %struct.TYPE_6__*** %4, align 8
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = icmp eq %struct.TYPE_6__* %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp eq %struct.TYPE_6__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %29, align 8
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = icmp eq %struct.TYPE_6__* %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = icmp eq %struct.TYPE_6__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %45, align 8
  br label %46

46:                                               ; preds = %35, %30
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = icmp ne %struct.TYPE_6__* %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %58 = icmp ne %struct.TYPE_6__* %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %46
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %72, align 8
  br label %73

73:                                               ; preds = %65, %46
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = icmp ne %struct.TYPE_6__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %85, align 8
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i32*, i32** @sizes, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = call i64 @ITEM_ntotal(%struct.TYPE_6__* %94)
  %96 = load i32*, i32** @sizes_bytes, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %95
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ITEM_ntotal(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
