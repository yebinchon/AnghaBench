; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_mp_do_enqueue.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_rte-ring.h___rte_ring_mp_do_enqueue.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rte_ring*, i8**, i32, i32)* @__rte_ring_mp_do_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rte_ring_mp_do_enqueue(%struct.rte_ring* %0, i8** %1, i32 %2, i32 %3) #0 {
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
  %18 = alloca i32, align 4
  store %struct.rte_ring* %0, %struct.rte_ring** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %21 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %16, align 4
  br label %24

24:                                               ; preds = %80, %4
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %27 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %10, align 4
  %30 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %31 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %18, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* %10, align 4
  %38 = sub i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ugt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %24
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %51 = load i32, i32* @enq_fail, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %178

56:                                               ; preds = %45
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %64 = load i32, i32* @enq_fail, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %63, i32 %64, i32 %65)
  store i32 0, i32* %5, align 4
  br label %178

67:                                               ; preds = %56
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %24
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %71, %72
  store i32 %73, i32* %11, align 4
  %74 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %75 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @rte_atomic32_cmpset(i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %14, align 4
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %24, label %86

86:                                               ; preds = %80
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %110, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ult i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @likely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = load i8**, i8*** %7, align 8
  %96 = load i32, i32* %15, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %101 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %15, align 4
  %105 = add i32 %103, %104
  %106 = load i32, i32* %16, align 4
  %107 = and i32 %105, %106
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %102, i64 %108
  store i8* %99, i8** %109, align 8
  br label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %15, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %87

113:                                              ; preds = %87
  %114 = call i32 (...) @rte_wmb()
  %115 = load i32, i32* %16, align 4
  %116 = add i32 %115, 1
  %117 = load i32, i32* %12, align 4
  %118 = sub i32 %116, %117
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %118, %119
  %121 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %122 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ugt i32 %120, %124
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %113
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* @EDQUOT, align 4
  %135 = sub nsw i32 0, %134
  br label %140

136:                                              ; preds = %129
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @RTE_RING_QUOT_EXCEED, align 4
  %139 = or i32 %137, %138
  br label %140

140:                                              ; preds = %136, %133
  %141 = phi i32 [ %135, %133 ], [ %139, %136 ]
  store i32 %141, i32* %17, align 4
  %142 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %143 = load i32, i32* @enq_quota, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %142, i32 %143, i32 %144)
  br label %159

146:                                              ; preds = %113
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @RTE_RING_QUEUE_FIXED, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %153

151:                                              ; preds = %146
  %152 = load i32, i32* %8, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = phi i32 [ 0, %150 ], [ %152, %151 ]
  store i32 %154, i32* %17, align 4
  %155 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %156 = load i32, i32* @enq_success, align 4
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @__RING_STAT_ADD(%struct.rte_ring* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %153, %140
  br label %160

160:                                              ; preds = %170, %159
  %161 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %162 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = call i32 (...) @rte_pause()
  br label %160

172:                                              ; preds = %160
  %173 = load i32, i32* %11, align 4
  %174 = load %struct.rte_ring*, %struct.rte_ring** %6, align 8
  %175 = getelementptr inbounds %struct.rte_ring, %struct.rte_ring* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  store i32 %173, i32* %176, align 4
  %177 = load i32, i32* %17, align 4
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %172, %62, %49
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__RING_STAT_ADD(%struct.rte_ring*, i32, i32) #1

declare dso_local i32 @rte_atomic32_cmpset(i32*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rte_wmb(...) #1

declare dso_local i32 @rte_pause(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
