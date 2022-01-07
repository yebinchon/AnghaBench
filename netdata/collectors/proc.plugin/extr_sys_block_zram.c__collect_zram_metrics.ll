; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c__collect_zram_metrics.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c__collect_zram_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*, i32, i32*)* @_collect_zram_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_collect_zram_metrics(i8* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @read_mm_stat(i32 %14, %struct.TYPE_6__* %10)
  %16 = icmp slt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32*, i32** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @free_device(i32* %21, i8* %22)
  store i32 -1, i32* %5, align 4
  br label %146

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @rrdset_next(i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rrdset_next(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rrdset_next(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @rrdset_next(i32 %43)
  br label %45

45:                                               ; preds = %28, %24
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rrddim_set_by_pointer(i32 %48, i32 %51, i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %62, %64
  %66 = call i32 @rrddim_set_by_pointer(i32 %57, i32 %60, i32 %65)
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @rrdset_done(i32 %69)
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %78, %80
  %82 = call i32 @rrddim_set_by_pointer(i32 %73, i32 %76, i32 %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @rrddim_set_by_pointer(i32 %85, i32 %88, i32 %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @rrdset_done(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %45
  br label %107

100:                                              ; preds = %45
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 100
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %103, %105
  br label %107

107:                                              ; preds = %100, %99
  %108 = phi i32 [ 1, %99 ], [ %106, %100 ]
  store i32 %108, i32* %11, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @rrddim_set_by_pointer(i32 %111, i32 %114, i32 %115)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @rrdset_done(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %107
  br label %132

125:                                              ; preds = %107
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %127, 1000000
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sdiv i32 %128, %130
  br label %132

132:                                              ; preds = %125, %124
  %133 = phi i32 [ 100, %124 ], [ %131, %125 ]
  store i32 %133, i32* %11, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @rrddim_set_by_pointer(i32 %136, i32 %139, i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @rrdset_done(i32 %144)
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %132, %20
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @read_mm_stat(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @free_device(i32*, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rrdset_next(i32) #1

declare dso_local i32 @rrddim_set_by_pointer(i32, i32, i32) #1

declare dso_local i32 @rrdset_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
