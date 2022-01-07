; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utillexer.h_error_data_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/callback/extr_..utillexer.h_error_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.error_data*)* @error_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @error_data_free(%struct.error_data* %0) #0 {
  %2 = alloca %struct.error_data*, align 8
  store %struct.error_data* %0, %struct.error_data** %2, align 8
  %3 = load %struct.error_data*, %struct.error_data** %2, align 8
  %4 = getelementptr inbounds %struct.error_data, %struct.error_data* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.error_data*, %struct.error_data** %2, align 8
  %8 = getelementptr inbounds %struct.error_data, %struct.error_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @error_item_array_free(i32 %6, i32 %10)
  %12 = load %struct.error_data*, %struct.error_data** %2, align 8
  %13 = getelementptr inbounds %struct.error_data, %struct.error_data* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_2__* %13 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i32 @da_free(i64 %15)
  ret void
}

declare dso_local i32 @error_item_array_free(i32, i32) #1

declare dso_local i32 @da_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
