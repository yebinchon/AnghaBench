; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_mul.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_matrix3.c_matrix3_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrix3 = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix3_mul(%struct.matrix3* %0, %struct.matrix3* %1, %struct.matrix3* %2) #0 {
  %4 = alloca %struct.matrix3*, align 8
  %5 = alloca %struct.matrix3*, align 8
  %6 = alloca %struct.matrix3*, align 8
  %7 = alloca %struct.matrix3, align 4
  store %struct.matrix3* %0, %struct.matrix3** %4, align 8
  store %struct.matrix3* %1, %struct.matrix3** %5, align 8
  store %struct.matrix3* %2, %struct.matrix3** %6, align 8
  %8 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %9 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %10 = icmp eq %struct.matrix3* %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 3
  %13 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %14 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %13, i32 0, i32 3
  %15 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %16 = call i32 @vec3_rotate(i32* %12, i32* %14, %struct.matrix3* %15)
  %17 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 2
  %18 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %19 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %18, i32 0, i32 2
  %20 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %21 = call i32 @vec3_rotate(i32* %17, i32* %19, %struct.matrix3* %20)
  %22 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 1
  %23 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %24 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %23, i32 0, i32 1
  %25 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %26 = call i32 @vec3_rotate(i32* %22, i32* %24, %struct.matrix3* %25)
  %27 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %7, i32 0, i32 0
  %28 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %29 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %28, i32 0, i32 0
  %30 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %31 = call i32 @vec3_transform3x4(i32* %27, i32* %29, %struct.matrix3* %30)
  %32 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %33 = call i32 @matrix3_copy(%struct.matrix3* %32, %struct.matrix3* %7)
  br label %59

34:                                               ; preds = %3
  %35 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %36 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %35, i32 0, i32 3
  %37 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %38 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %37, i32 0, i32 3
  %39 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %40 = call i32 @vec3_rotate(i32* %36, i32* %38, %struct.matrix3* %39)
  %41 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %42 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %41, i32 0, i32 2
  %43 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %44 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %43, i32 0, i32 2
  %45 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %46 = call i32 @vec3_rotate(i32* %42, i32* %44, %struct.matrix3* %45)
  %47 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %48 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %47, i32 0, i32 1
  %49 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %50 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %49, i32 0, i32 1
  %51 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %52 = call i32 @vec3_rotate(i32* %48, i32* %50, %struct.matrix3* %51)
  %53 = load %struct.matrix3*, %struct.matrix3** %4, align 8
  %54 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %53, i32 0, i32 0
  %55 = load %struct.matrix3*, %struct.matrix3** %5, align 8
  %56 = getelementptr inbounds %struct.matrix3, %struct.matrix3* %55, i32 0, i32 0
  %57 = load %struct.matrix3*, %struct.matrix3** %6, align 8
  %58 = call i32 @vec3_transform3x4(i32* %54, i32* %56, %struct.matrix3* %57)
  br label %59

59:                                               ; preds = %34, %11
  ret void
}

declare dso_local i32 @vec3_rotate(i32*, i32*, %struct.matrix3*) #1

declare dso_local i32 @vec3_transform3x4(i32*, i32*, %struct.matrix3*) #1

declare dso_local i32 @matrix3_copy(%struct.matrix3*, %struct.matrix3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
