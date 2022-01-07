; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_list_item_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_list_item_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_data = type { i64 }
%struct.list_item = type { i32, i32 }

@OBS_COMBO_FORMAT_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_data*, %struct.list_item*)* @list_item_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_item_free(%struct.list_data* %0, %struct.list_item* %1) #0 {
  %3 = alloca %struct.list_data*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_data* %0, %struct.list_data** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  %6 = getelementptr inbounds %struct.list_item, %struct.list_item* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @bfree(i32 %7)
  %9 = load %struct.list_data*, %struct.list_data** %3, align 8
  %10 = getelementptr inbounds %struct.list_data, %struct.list_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OBS_COMBO_FORMAT_STRING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.list_item*, %struct.list_item** %4, align 8
  %16 = getelementptr inbounds %struct.list_item, %struct.list_item* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bfree(i32 %17)
  br label %19

19:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @bfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
