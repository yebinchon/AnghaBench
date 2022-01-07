; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.h_matrix3_copy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.h_matrix3_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrix3*, %struct.matrix3*)* @matrix3_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matrix3_copy(%struct.matrix3* %0, %struct.matrix3* %1) #0 {
  %3 = alloca %struct.matrix3*, align 8
  %4 = alloca %struct.matrix3*, align 8
  store %struct.matrix3* %0, %struct.matrix3** %3, align 8
  store %struct.matrix3* %1, %struct.matrix3** %4, align 8
  %5 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %6 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %5, i32 0, i32 3
  %7 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %8 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 3
  %9 = call i32 @vec3_copy(i32* %6, i32* %8)
  %10 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %11 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %10, i32 0, i32 2
  %12 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %13 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %12, i32 0, i32 2
  %14 = call i32 @vec3_copy(i32* %11, i32* %13)
  %15 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %16 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %15, i32 0, i32 1
  %17 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %18 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %17, i32 0, i32 1
  %19 = call i32 @vec3_copy(i32* %16, i32* %18)
  %20 = load %struct.matrix3*, %struct.matrix3** %3, align 8
  %21 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %20, i32 0, i32 0
  %22 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %23 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %22, i32 0, i32 0
  %24 = call i32 @vec3_copy(i32* %21, i32* %23)
  ret void
}

declare dso_local i32 @vec3_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
