; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_from_axisang.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_from_axisang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { i32 }
%struct.axisang = type { i32 }
%struct.quat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix3_from_axisang(%struct.matrix3* %0, %struct.axisang* %1) #0 {
  %3 = alloca %struct.matrix3*, align 8
  %4 = alloca %struct.axisang*, align 8
  %5 = alloca %struct.quat, align 4
  store %struct.matrix3* %0, %struct.matrix3** %3, align 8
  store %struct.axisang* %1, %struct.axisang** %4, align 8
  %6 = load %struct.axisang*, %struct.axisang** %4, align 8
  %7 = call i32 @quat_from_axisang(%struct.quat* %5, %struct.axisang* %6)
  %8 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %9 = call i32 @matrix3_from_quat(%struct.matrix3* %8, %struct.quat* %5)
  ret void
}

declare dso_local i32 @quat_from_axisang(%struct.quat*, %struct.axisang*) #1

declare dso_local i32 @matrix3_from_quat(%struct.matrix3*, %struct.quat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
