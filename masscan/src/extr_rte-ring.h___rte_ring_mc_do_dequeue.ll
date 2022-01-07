; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_mc_do_dequeue.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_mc_do_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rte_ring = type { %struct.TYPE_4__, i8**, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@RTE_RING_QUEUE_FIXED = common dso_local global i32 0, align 4
@deq_fail = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@deq_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rte_ring*, i8**, i32, i32)* @__rte_ring_mc_do_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rte_ring_mc_do_dequeue(%struct.rte_ring* %0, i8** %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rte_ring* %0, %struct.rte_ring** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %20 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %77, %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %26 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %30 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sub i32 %33, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ugt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %23
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %48 = load i32, i32* @deq_fail, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %47, i32 %48, i32 %49)
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %141

53:                                               ; preds = %42
  %54 = load i32, i32* %17, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %61 = load i32, i32* @deq_fail, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %60, i32 %61, i32 %62)
  store i32 0, i32* %5, align 4
  br label %141

64:                                               ; preds = %53
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %68, %69
  store i32 %70, i32* %11, align 4
  %71 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %72 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @rte_atomic32_cmpset(i32* %73, i32 %74, i32 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %67
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %23, label %83

83:                                               ; preds = %77
  %84 = call i32 (...) @rte_rmb()
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %108, %83
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ult i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i64 @likely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %85
  %93 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %94 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = and i32 %98, %99
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %95, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = load i8**, i8*** %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %103, i8** %107, align 8
  br label %108

108:                                              ; preds = %92
  %109 = load i32, i32* %14, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %14, align 4
  br label %85

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %122, %111
  %113 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %114 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = call i32 (...) @rte_pause()
  br label %112

124:                                              ; preds = %112
  %125 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %126 = load i32, i32* @deq_success, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %125, i32 %126, i32 %127)
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %131 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %139

137:                                              ; preds = %124
  %138 = load i32, i32* %8, align 4
  br label %139

139:                                              ; preds = %137, %136
  %140 = phi i32 [ 0, %136 ], [ %138, %137 ]
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %139, %59, %46
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__RING_STAT_ADD(%struct.rte_ring*, i32, i32) #1

declare dso_local i32 @rte_atomic32_cmpset(i32*, i32, i32) #1

declare dso_local i32 @rte_rmb(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rte_pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
