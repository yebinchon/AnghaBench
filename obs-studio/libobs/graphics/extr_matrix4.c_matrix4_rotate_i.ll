; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_rotate_i.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix4.c_matrix4_rotate_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { i32 }
%struct.matrix4 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix4_rotate_i(%struct.matrix4* %0, %struct.quat* %1, %struct.matrix4* %2) #0 {
  %4 = alloca %struct.matrix4*, align 8
  %5 = alloca %struct.quat*, align 8
  %6 = alloca %struct.matrix4*, align 8
  %7 = alloca %struct.matrix4, align 4
  store %struct.matrix4* %0, %struct.matrix4** %4, align 8
  store %struct.quat* %1, %struct.quat** %5, align 8
  store %struct.matrix4* %2, %struct.matrix4** %6, align 8
  %8 = load %struct.quat*, %struct.quat** %5, align 8
  %9 = call i32 @matrix4_from_quat(%struct.matrix4* %7, %struct.quat* %8)
  %10 = load %struct.matrix4*, %struct.matrix4** %4, align 8
  %11 = load %struct.matrix4*, %struct.matrix4** %6, align 8
  %12 = call i32 @matrix4_mul(%struct.matrix4* %10, %struct.matrix4* %7, %struct.matrix4* %11)
  ret void
}

declare dso_local i32 @matrix4_from_quat(%struct.matrix4*, %struct.quat*) #1

declare dso_local i32 @matrix4_mul(%struct.matrix4*, %struct.matrix4*, %struct.matrix4*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
