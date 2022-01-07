; ModuleID = '/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_priolist.c_nn_priolist_activate.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/protocols/utils/extr_priolist.c_nn_priolist_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_priolist = type { i32, %struct.nn_priolist_slot* }
%struct.nn_priolist_slot = type { %struct.nn_priolist_data*, i32 }
%struct.nn_priolist_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_priolist_activate(%struct.nn_priolist* %0, %struct.nn_priolist_data* %1) #0 {
  %3 = alloca %struct.nn_priolist*, align 8
  %4 = alloca %struct.nn_priolist_data*, align 8
  %5 = alloca %struct.nn_priolist_slot*, align 8
  store %struct.nn_priolist* %0, %struct.nn_priolist** %3, align 8
  store %struct.nn_priolist_data* %1, %struct.nn_priolist_data** %4, align 8
  %6 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %7 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %6, i32 0, i32 1
  %8 = load %struct.nn_priolist_slot*, %struct.nn_priolist_slot** %7, align 8
  %9 = load %struct.nn_priolist_data*, %struct.nn_priolist_data** %4, align 8
  %10 = getelementptr inbounds %struct.nn_priolist_data, %struct.nn_priolist_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nn_priolist_slot, %struct.nn_priolist_slot* %8, i64 %13
  store %struct.nn_priolist_slot* %14, %struct.nn_priolist_slot** %5, align 8
  %15 = load %struct.nn_priolist_slot*, %struct.nn_priolist_slot** %5, align 8
  %16 = getelementptr inbounds %struct.nn_priolist_slot, %struct.nn_priolist_slot* %15, i32 0, i32 1
  %17 = call i32 @nn_list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.nn_priolist_slot*, %struct.nn_priolist_slot** %5, align 8
  %21 = getelementptr inbounds %struct.nn_priolist_slot, %struct.nn_priolist_slot* %20, i32 0, i32 1
  %22 = load %struct.nn_priolist_data*, %struct.nn_priolist_data** %4, align 8
  %23 = getelementptr inbounds %struct.nn_priolist_data, %struct.nn_priolist_data* %22, i32 0, i32 1
  %24 = load %struct.nn_priolist_slot*, %struct.nn_priolist_slot** %5, align 8
  %25 = getelementptr inbounds %struct.nn_priolist_slot, %struct.nn_priolist_slot* %24, i32 0, i32 1
  %26 = call i32 @nn_list_end(i32* %25)
  %27 = call i32 @nn_list_insert(i32* %21, i32* %23, i32 %26)
  br label %64

28:                                               ; preds = %2
  %29 = load %struct.nn_priolist_slot*, %struct.nn_priolist_slot** %5, align 8
  %30 = getelementptr inbounds %struct.nn_priolist_slot, %struct.nn_priolist_slot* %29, i32 0, i32 1
  %31 = load %struct.nn_priolist_data*, %struct.nn_priolist_data** %4, align 8
  %32 = getelementptr inbounds %struct.nn_priolist_data, %struct.nn_priolist_data* %31, i32 0, i32 1
  %33 = load %struct.nn_priolist_slot*, %struct.nn_priolist_slot** %5, align 8
  %34 = getelementptr inbounds %struct.nn_priolist_slot, %struct.nn_priolist_slot* %33, i32 0, i32 1
  %35 = call i32 @nn_list_end(i32* %34)
  %36 = call i32 @nn_list_insert(i32* %30, i32* %32, i32 %35)
  %37 = load %struct.nn_priolist_data*, %struct.nn_priolist_data** %4, align 8
  %38 = load %struct.nn_priolist_slot*, %struct.nn_priolist_slot** %5, align 8
  %39 = getelementptr inbounds %struct.nn_priolist_slot, %struct.nn_priolist_slot* %38, i32 0, i32 0
  store %struct.nn_priolist_data* %37, %struct.nn_priolist_data** %39, align 8
  %40 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %41 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %50

44:                                               ; preds = %28
  %45 = load %struct.nn_priolist_data*, %struct.nn_priolist_data** %4, align 8
  %46 = getelementptr inbounds %struct.nn_priolist_data, %struct.nn_priolist_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %49 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %64

50:                                               ; preds = %28
  %51 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %52 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nn_priolist_data*, %struct.nn_priolist_data** %4, align 8
  %55 = getelementptr inbounds %struct.nn_priolist_data, %struct.nn_priolist_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.nn_priolist_data*, %struct.nn_priolist_data** %4, align 8
  %60 = getelementptr inbounds %struct.nn_priolist_data, %struct.nn_priolist_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nn_priolist*, %struct.nn_priolist** %3, align 8
  %63 = getelementptr inbounds %struct.nn_priolist, %struct.nn_priolist* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %19, %44, %58, %50
  ret void
}

declare dso_local i32 @nn_list_empty(i32*) #1

declare dso_local i32 @nn_list_insert(i32*, i32*, i32) #1

declare dso_local i32 @nn_list_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
