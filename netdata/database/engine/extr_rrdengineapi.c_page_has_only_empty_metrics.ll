; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_page_has_only_empty_metrics.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengineapi.c_page_has_only_empty_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdeng_page_descr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@SN_EMPTY_SLOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrdeng_page_descr*)* @page_has_only_empty_metrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @page_has_only_empty_metrics(%struct.rrdeng_page_descr* %0) #0 {
  %2 = alloca %struct.rrdeng_page_descr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.rrdeng_page_descr* %0, %struct.rrdeng_page_descr** %2, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %2, align 8
  %7 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  store i64* %10, i64** %5, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %2, align 8
  %15 = getelementptr inbounds %struct.rrdeng_page_descr, %struct.rrdeng_page_descr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = udiv i64 %17, 8
  %19 = icmp ult i64 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %11
  %21 = load i64, i64* @SN_EMPTY_SLOT, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %33

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
