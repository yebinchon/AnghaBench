; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_mp_hwupload_find_upload_format.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_hwtransfer.c_mp_hwupload_find_upload_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_hwupload = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_hwupload_find_upload_format(%struct.mp_hwupload* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_hwupload*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.priv*, align 8
  store %struct.mp_hwupload* %0, %struct.mp_hwupload** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mp_hwupload*, %struct.mp_hwupload** %4, align 8
  %8 = getelementptr inbounds %struct.mp_hwupload, %struct.mp_hwupload* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %6, align 8
  %12 = load %struct.priv*, %struct.priv** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @update_format_decision(%struct.priv* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.priv*, %struct.priv** %6, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @update_format_decision(%struct.priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
