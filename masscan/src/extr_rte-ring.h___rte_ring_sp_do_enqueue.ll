; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_sp_do_enqueue.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_sp_do_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rte_ring = type { i8**, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RTE_RING_QUEUE_FIXED = common dso_local global i32 0, align 4
@enq_fail = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@RTE_RING_QUOT_EXCEED = common dso_local global i32 0, align 4
@enq_quota = common dso_local global i32 0, align 4
@enq_success = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rte_ring*, i8**, i32, i32)* @__rte_ring_sp_do_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rte_ring_sp_do_enqueue(%struct.rte_ring* %0, i8** %1, i32 %2, i32 %3) #0 {
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
  store %struct.rte_ring* %0, %struct.rte_ring** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %18 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %15, align 4
  %21 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %22 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %26 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %11, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = sub i32 %31, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ugt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %46 = load i32, i32* @enq_fail, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @ENOBUFS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %151

51:                                               ; preds = %40
  %52 = load i32, i32* %13, align 4
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %59 = load i32, i32* @enq_fail, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %58, i32 %59, i32 %60)
  store i32 0, i32* %5, align 4
  br label %151

62:                                               ; preds = %51
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %66, %67
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %71 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %96, %65
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ult i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %73
  %81 = load i8**, i8*** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %87 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add i32 %89, %90
  %92 = load i32, i32* %15, align 4
  %93 = and i32 %91, %92
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %88, i64 %94
  store i8* %85, i8** %95, align 8
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %14, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %73

99:                                               ; preds = %73
  %100 = call i32 (...) @rte_wmb()
  %101 = load i32, i32* %15, align 4
  %102 = add i32 %101, 1
  %103 = load i32, i32* %13, align 4
  %104 = sub i32 %102, %103
  %105 = load i32, i32* %8, align 4
  %106 = add i32 %104, %105
  %107 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %108 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp ugt i32 %106, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %99
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* @EDQUOT, align 4
  %121 = sub nsw i32 0, %120
  br label %126

122:                                              ; preds = %115
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @RTE_RING_QUOT_EXCEED, align 4
  %125 = or i32 %123, %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i32 [ %121, %119 ], [ %125, %122 ]
  store i32 %127, i32* %16, align 4
  %128 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %129 = load i32, i32* @enq_quota, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %128, i32 %129, i32 %130)
  br label %145

132:                                              ; preds = %99
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %139

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  br label %139

139:                                              ; preds = %137, %136
  %140 = phi i32 [ 0, %136 ], [ %138, %137 ]
  store i32 %140, i32* %16, align 4
  %141 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %142 = load i32, i32* @enq_success, align 4
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %126
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %148 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  store i32 %146, i32* %149, align 4
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %145, %57, %44
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__RING_STAT_ADD(%struct.rte_ring*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rte_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
