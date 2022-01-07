; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_init_light.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_context.c_init_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_light = type { double, double, double, double, double, double, i32, i32, i32, i32, i32, i32 }

@GL_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_light*, i64)* @init_light to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_light(%struct.gl_light* %0, i64 %1) #0 {
  %3 = alloca %struct.gl_light*, align 8
  %4 = alloca i64, align 8
  store %struct.gl_light* %0, %struct.gl_light** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %6 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ASSIGN_4V(i32 %7, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %13 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ASSIGN_4V(i32 %14, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %16 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %17 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ASSIGN_4V(i32 %18, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %22 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ASSIGN_4V(i32 %23, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %25 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %26 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ASSIGN_4V(i32 %27, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  br label %29

29:                                               ; preds = %20, %11
  %30 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %31 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ASSIGN_4V(i32 %32, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %34 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %35 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ASSIGN_3V(i32 %36, double 0.000000e+00, double 0.000000e+00, double -1.000000e+00)
  %38 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %39 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %38, i32 0, i32 0
  store double 0.000000e+00, double* %39, align 8
  %40 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %41 = call i32 @gl_compute_spot_exp_table(%struct.gl_light* %40)
  %42 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %43 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %42, i32 0, i32 1
  store double 1.800000e+02, double* %43, align 8
  %44 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %45 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %44, i32 0, i32 2
  store double -1.000000e+00, double* %45, align 8
  %46 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %47 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %46, i32 0, i32 3
  store double 1.000000e+00, double* %47, align 8
  %48 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %49 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %48, i32 0, i32 4
  store double 0.000000e+00, double* %49, align 8
  %50 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %51 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %50, i32 0, i32 5
  store double 0.000000e+00, double* %51, align 8
  %52 = load i32, i32* @GL_FALSE, align 4
  %53 = load %struct.gl_light*, %struct.gl_light** %3, align 8
  %54 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  ret void
}

declare dso_local i32 @ASSIGN_4V(i32, double, double, double, double) #1

declare dso_local i32 @ASSIGN_3V(i32, double, double, double) #1

declare dso_local i32 @gl_compute_spot_exp_table(%struct.gl_light*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
