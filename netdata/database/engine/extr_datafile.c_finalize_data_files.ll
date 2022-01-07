; ModuleID = '/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_finalize_data_files.c'
source_filename = "/home/carl/AnghaBench/netdata/database/engine/extr_datafile.c_finalize_data_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrdengine_instance = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rrdengine_journalfile* }
%struct.rrdengine_journalfile = type { %struct.rrdengine_journalfile*, %struct.TYPE_3__, %struct.rrdengine_journalfile* }
%struct.TYPE_3__ = type { %struct.rrdengine_journalfile* }
%struct.rrdengine_datafile = type { %struct.rrdengine_datafile*, %struct.TYPE_3__, %struct.rrdengine_datafile* }
%struct.extent_info = type { %struct.extent_info*, %struct.TYPE_3__, %struct.extent_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @finalize_data_files(%struct.rrdengine_instance* %0) #0 {
  %2 = alloca %struct.rrdengine_instance*, align 8
  %3 = alloca %struct.rrdengine_datafile*, align 8
  %4 = alloca %struct.rrdengine_datafile*, align 8
  %5 = alloca %struct.rrdengine_journalfile*, align 8
  %6 = alloca %struct.extent_info*, align 8
  %7 = alloca %struct.extent_info*, align 8
  store %struct.rrdengine_instance* %0, %struct.rrdengine_instance** %2, align 8
  %8 = load %struct.rrdengine_instance*, %struct.rrdengine_instance** %2, align 8
  %9 = getelementptr inbounds %struct.rrdengine_instance, %struct.rrdengine_instance* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %10, align 8
  %12 = bitcast %struct.rrdengine_journalfile* %11 to %struct.rrdengine_datafile*
  store %struct.rrdengine_datafile* %12, %struct.rrdengine_datafile** %3, align 8
  br label %13

13:                                               ; preds = %54, %1
  %14 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %15 = icmp ne %struct.rrdengine_datafile* %14, null
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %18 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %17, i32 0, i32 2
  %19 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %18, align 8
  %20 = bitcast %struct.rrdengine_datafile* %19 to %struct.rrdengine_journalfile*
  store %struct.rrdengine_journalfile* %20, %struct.rrdengine_journalfile** %5, align 8
  %21 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %22 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %21, i32 0, i32 0
  %23 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %22, align 8
  store %struct.rrdengine_datafile* %23, %struct.rrdengine_datafile** %4, align 8
  %24 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %25 = getelementptr inbounds %struct.rrdengine_datafile, %struct.rrdengine_datafile* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %26, align 8
  %28 = bitcast %struct.rrdengine_journalfile* %27 to %struct.extent_info*
  store %struct.extent_info* %28, %struct.extent_info** %6, align 8
  br label %29

29:                                               ; preds = %39, %16
  %30 = load %struct.extent_info*, %struct.extent_info** %6, align 8
  %31 = icmp ne %struct.extent_info* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.extent_info*, %struct.extent_info** %6, align 8
  %34 = getelementptr inbounds %struct.extent_info, %struct.extent_info* %33, i32 0, i32 0
  %35 = load %struct.extent_info*, %struct.extent_info** %34, align 8
  store %struct.extent_info* %35, %struct.extent_info** %7, align 8
  %36 = load %struct.extent_info*, %struct.extent_info** %6, align 8
  %37 = bitcast %struct.extent_info* %36 to %struct.rrdengine_journalfile*
  %38 = call i32 @freez(%struct.rrdengine_journalfile* %37)
  br label %39

39:                                               ; preds = %32
  %40 = load %struct.extent_info*, %struct.extent_info** %7, align 8
  store %struct.extent_info* %40, %struct.extent_info** %6, align 8
  br label %29

41:                                               ; preds = %29
  %42 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %5, align 8
  %43 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %44 = bitcast %struct.rrdengine_datafile* %43 to %struct.rrdengine_journalfile*
  %45 = call i32 @close_journal_file(%struct.rrdengine_journalfile* %42, %struct.rrdengine_journalfile* %44)
  %46 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %47 = bitcast %struct.rrdengine_datafile* %46 to %struct.rrdengine_journalfile*
  %48 = call i32 @close_data_file(%struct.rrdengine_journalfile* %47)
  %49 = load %struct.rrdengine_journalfile*, %struct.rrdengine_journalfile** %5, align 8
  %50 = call i32 @freez(%struct.rrdengine_journalfile* %49)
  %51 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %3, align 8
  %52 = bitcast %struct.rrdengine_datafile* %51 to %struct.rrdengine_journalfile*
  %53 = call i32 @freez(%struct.rrdengine_journalfile* %52)
  br label %54

54:                                               ; preds = %41
  %55 = load %struct.rrdengine_datafile*, %struct.rrdengine_datafile** %4, align 8
  store %struct.rrdengine_datafile* %55, %struct.rrdengine_datafile** %3, align 8
  br label %13

56:                                               ; preds = %13
  ret void
}

declare dso_local i32 @freez(%struct.rrdengine_journalfile*) #1

declare dso_local i32 @close_journal_file(%struct.rrdengine_journalfile*, %struct.rrdengine_journalfile*) #1

declare dso_local i32 @close_data_file(%struct.rrdengine_journalfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
