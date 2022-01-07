; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_sc_do_dequeue.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_sc_do_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rte_ring = type { %struct.TYPE_4__, i8**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@RTE_RING_QUEUE_FIXED = common dso_local global i32 0, align 4
@deq_fail = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@deq_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rte_ring*, i8**, i32, i32)* @__rte_ring_sc_do_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rte_ring_sc_do_dequeue(%struct.rte_ring* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rte_ring*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rte_ring* %0, %struct.rte_ring** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %17 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  %20 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %21 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %25 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ugt i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %43 = load i32, i32* @deq_fail, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %114

48:                                               ; preds = %37
  %49 = load i32, i32* %13, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %56 = load i32, i32* @deq_fail, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %55, i32 %56, i32 %57)
  store i32 0, i32* %5, align 4
  br label %114

59:                                               ; preds = %48
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61, %4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %63, %64
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %68 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  %70 = call i32 (...) @rte_rmb()
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %94, %62
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ult i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @likely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %80 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %79, i32 0, i32 1
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %82, %83
  %85 = load i32, i32* %15, align 4
  %86 = and i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %81, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i8**, i8*** %7, align 8
  %91 = load i32, i32* %14, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %89, i8** %93, align 8
  br label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %14, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %71

97:                                               ; preds = %71
  %98 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %99 = load i32, i32* @deq_success, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %98, i32 %99, i32 %100)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %104 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %112

110:                                              ; preds = %97
  %111 = load i32, i32* %8, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ 0, %109 ], [ %111, %110 ]
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %54, %41
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__RING_STAT_ADD(%struct.rte_ring*, i32, i32) #1

declare dso_local i32 @rte_rmb(...) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
