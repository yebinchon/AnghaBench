; ModuleID = '/home/carl/AnghaBench/nanomsg/tests/extr_..srcutilslist.c_nn_list_insert.c'
source_filename = "/home/carl/AnghaBench/nanomsg/tests/extr_..srcutilslist.c_nn_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_list = type { %struct.nn_list_item*, %struct.nn_list_item* }
%struct.nn_list_item = type { %struct.nn_list_item*, %struct.nn_list_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_list_insert(%struct.nn_list* %0, %struct.nn_list_item* %1, %struct.nn_list_item* %2) #0 {
  %4 = alloca %struct.nn_list*, align 8
  %5 = alloca %struct.nn_list_item*, align 8
  %6 = alloca %struct.nn_list_item*, align 8
  store %struct.nn_list* %0, %struct.nn_list** %4, align 8
  store %struct.nn_list_item* %1, %struct.nn_list_item** %5, align 8
  store %struct.nn_list_item* %2, %struct.nn_list_item** %6, align 8
  %7 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %8 = call i32 @nn_list_item_isinlist(%struct.nn_list_item* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @nn_assert(i32 %11)
  %13 = load %struct.nn_list_item*, %struct.nn_list_item** %6, align 8
  %14 = icmp ne %struct.nn_list_item* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.nn_list_item*, %struct.nn_list_item** %6, align 8
  %17 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %16, i32 0, i32 0
  %18 = load %struct.nn_list_item*, %struct.nn_list_item** %17, align 8
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %21 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %20, i32 0, i32 0
  %22 = load %struct.nn_list_item*, %struct.nn_list_item** %21, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi %struct.nn_list_item* [ %18, %15 ], [ %22, %19 ]
  %25 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %26 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %25, i32 0, i32 0
  store %struct.nn_list_item* %24, %struct.nn_list_item** %26, align 8
  %27 = load %struct.nn_list_item*, %struct.nn_list_item** %6, align 8
  %28 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %29 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %28, i32 0, i32 1
  store %struct.nn_list_item* %27, %struct.nn_list_item** %29, align 8
  %30 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %31 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %30, i32 0, i32 0
  %32 = load %struct.nn_list_item*, %struct.nn_list_item** %31, align 8
  %33 = icmp ne %struct.nn_list_item* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %36 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %37 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %36, i32 0, i32 0
  %38 = load %struct.nn_list_item*, %struct.nn_list_item** %37, align 8
  %39 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %38, i32 0, i32 1
  store %struct.nn_list_item* %35, %struct.nn_list_item** %39, align 8
  br label %40

40:                                               ; preds = %34, %23
  %41 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %42 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %41, i32 0, i32 1
  %43 = load %struct.nn_list_item*, %struct.nn_list_item** %42, align 8
  %44 = icmp ne %struct.nn_list_item* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %47 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %48 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %47, i32 0, i32 1
  %49 = load %struct.nn_list_item*, %struct.nn_list_item** %48, align 8
  %50 = getelementptr inbounds %struct.nn_list_item, %struct.nn_list_item* %49, i32 0, i32 0
  store %struct.nn_list_item* %46, %struct.nn_list_item** %50, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %53 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %52, i32 0, i32 1
  %54 = load %struct.nn_list_item*, %struct.nn_list_item** %53, align 8
  %55 = icmp ne %struct.nn_list_item* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %58 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %57, i32 0, i32 1
  %59 = load %struct.nn_list_item*, %struct.nn_list_item** %58, align 8
  %60 = load %struct.nn_list_item*, %struct.nn_list_item** %6, align 8
  %61 = icmp eq %struct.nn_list_item* %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %51
  %63 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %64 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %65 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %64, i32 0, i32 1
  store %struct.nn_list_item* %63, %struct.nn_list_item** %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.nn_list_item*, %struct.nn_list_item** %6, align 8
  %68 = icmp ne %struct.nn_list_item* %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.nn_list_item*, %struct.nn_list_item** %5, align 8
  %71 = load %struct.nn_list*, %struct.nn_list** %4, align 8
  %72 = getelementptr inbounds %struct.nn_list, %struct.nn_list* %71, i32 0, i32 0
  store %struct.nn_list_item* %70, %struct.nn_list_item** %72, align 8
  br label %73

73:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_list_item_isinlist(%struct.nn_list_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
