; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_set_look_dir.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_quat.c_quat_set_look_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quat = type { i32 }
%struct.vec3 = type { i32, i32, i32 }
%struct.axisang = type { i32 }

@EPSILON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quat_set_look_dir(%struct.quat* %0, %struct.vec3* %1) #0 {
  %3 = alloca %struct.quat*, align 8
  %4 = alloca %struct.vec3*, align 8
  %5 = alloca %struct.vec3, align 4
  %6 = alloca %struct.quat, align 4
  %7 = alloca %struct.quat, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.axisang, align 4
  store %struct.quat* %0, %struct.quat** %3, align 8
  store %struct.vec3* %1, %struct.vec3** %4, align 8
  %11 = load %struct.vec3*, %struct.vec3** %4, align 8
  %12 = call i32 @vec3_norm(%struct.vec3* %5, %struct.vec3* %11)
  %13 = call i32 @vec3_neg(%struct.vec3* %5, %struct.vec3* %5)
  %14 = call i32 @quat_identity(%struct.quat* %6)
  %15 = call i32 @quat_identity(%struct.quat* %7)
  %16 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EPSILON, align 4
  %19 = call i32 @close_float(i32 %17, float 0.000000e+00, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @EPSILON, align 4
  %25 = call i32 @close_float(i32 %23, float 0.000000e+00, i32 %24)
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ true, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EPSILON, align 4
  %33 = call i32 @close_float(i32 %31, float 0.000000e+00, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @atan2f(i32 %38, i32 %40)
  %42 = call i32 @axisang_set(%struct.axisang* %10, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, i32 %41)
  %43 = call i32 @quat_from_axisang(%struct.quat* %6, %struct.axisang* %10)
  br label %44

44:                                               ; preds = %36, %27
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.vec3, %struct.vec3* %5, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @asinf(i32 %49)
  %51 = call i32 @axisang_set(%struct.axisang* %10, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 %50)
  %52 = call i32 @quat_from_axisang(%struct.quat* %7, %struct.axisang* %10)
  br label %53

53:                                               ; preds = %47, %44
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load %struct.quat*, %struct.quat** %3, align 8
  %58 = call i32 @quat_copy(%struct.quat* %57, %struct.quat* %7)
  br label %69

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load %struct.quat*, %struct.quat** %3, align 8
  %64 = call i32 @quat_copy(%struct.quat* %63, %struct.quat* %6)
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.quat*, %struct.quat** %3, align 8
  %67 = call i32 @quat_mul(%struct.quat* %66, %struct.quat* %6, %struct.quat* %7)
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %56
  ret void
}

declare dso_local i32 @vec3_norm(%struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @vec3_neg(%struct.vec3*, %struct.vec3*) #1

declare dso_local i32 @quat_identity(%struct.quat*) #1

declare dso_local i32 @close_float(i32, float, i32) #1

declare dso_local i32 @axisang_set(%struct.axisang*, float, float, float, i32) #1

declare dso_local i32 @atan2f(i32, i32) #1

declare dso_local i32 @quat_from_axisang(%struct.quat*, %struct.axisang*) #1

declare dso_local i32 @asinf(i32) #1

declare dso_local i32 @quat_copy(%struct.quat*, %struct.quat*) #1

declare dso_local i32 @quat_mul(%struct.quat*, %struct.quat*, %struct.quat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
