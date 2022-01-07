; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_datafile_list_insert.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_datafile_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rrdengine_datafile*, %struct.rrdengine_datafile* }
%struct.rrdengine_datafile = type { %struct.rrdengine_datafile* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @datafile_list_insert(%struct.rrdengine_instance* %0, %struct.rrdengine_datafile* %1) #0 {
  %3 = alloca %struct.rrdengine_instance*, align 8
  %4 = alloca %struct.rrdengine_datafile*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %3, align 8
  store %struct.rrdengine_datafile* %1, %struct.rrdengine_datafile** %4, align 8
  %5 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %6 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %7, align 8
  %9 = icmp ne %struct.rrdengine_datafile* null, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @likely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %4, align 8
  %15 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %16 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %17, align 8
  %19 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %18, i32 0, i32 0
  store %struct.rrdengine_datafile* %14, %struct.rrdengine_datafile** %19, align 8
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %22 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %23, align 8
  %25 = icmp eq %struct.rrdengine_datafile* null, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %4, align 8
  %31 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %32 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store %struct.rrdengine_datafile* %30, %struct.rrdengine_datafile** %33, align 8
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %4, align 8
  %36 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %3, align 8
  %37 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.rrdengine_datafile* %35, %struct.rrdengine_datafile** %38, align 8
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
