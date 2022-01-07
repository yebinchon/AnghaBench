; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_delete_old_data.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_rrdengine.c_delete_old_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.rrdengine_instance* }
%struct.rrdengine_instance = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rrdengine_datafile* }
%struct.rrdengine_datafile = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.extent_info* }
%struct.extent_info = type { i32, %struct.extent_info*, %struct.rrdeng_page_descr** }
%struct.rrdeng_page_descr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @delete_old_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_old_data(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdengine_datafile*, align 8
  %5 = alloca %struct.extent_info*, align 8
  %6 = alloca %struct.extent_info*, align 8
  %7 = alloca %struct.rrdeng_page_descr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %11, align 8
  store %struct.rrdengine_instance* %12, %struct.rrdengine_instance** %3, align 8
  %13 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %14 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %15, align 8
  store %struct.rrdengine_datafile* %16, %struct.rrdengine_datafile** %4, align 8
  %17 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %4, align 8
  %18 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.extent_info*, %struct.extent_info** %19, align 8
  store %struct.extent_info* %20, %struct.extent_info** %5, align 8
  br label %21

21:                                               ; preds = %52, %1
  %22 = load %struct.extent_info*, %struct.extent_info** %5, align 8
  %23 = icmp ne %struct.extent_info* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load %struct.extent_info*, %struct.extent_info** %5, align 8
  %26 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %43, %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.extent_info*, %struct.extent_info** %5, align 8
  %34 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %33, i32 0, i32 2
  %35 = load %struct.rrdeng_page_descr**, %struct.rrdeng_page_descr*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %35, i64 %37
  %39 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %38, align 8
  store %struct.rrdeng_page_descr* %39, %struct.rrdeng_page_descr** %7, align 8
  %40 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %41 = load %struct.rrdeng_page_descr*, %struct.rrdeng_page_descr** %7, align 8
  %42 = call i32 @pg_cache_punch_hole(%struct.rrdengine_instance* %40, %struct.rrdeng_page_descr* %41, i32 0)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.extent_info*, %struct.extent_info** %5, align 8
  %48 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %47, i32 0, i32 1
  %49 = load %struct.extent_info*, %struct.extent_info** %48, align 8
  store %struct.extent_info* %49, %struct.extent_info** %6, align 8
  %50 = load %struct.extent_info*, %struct.extent_info** %5, align 8
  %51 = call i32 @freez(%struct.extent_info* %50)
  br label %52

52:                                               ; preds = %46
  %53 = load %struct.extent_info*, %struct.extent_info** %6, align 8
  store %struct.extent_info* %53, %struct.extent_info** %5, align 8
  br label %21

54:                                               ; preds = %21
  ret void
}

declare dso_local i32 @pg_cache_punch_hole(%struct.rrdengine_instance*, %struct.rrdeng_page_descr*, i32) #1

declare dso_local i32 @freez(%struct.extent_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
