; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_material_bitmask.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_light.c_gl_material_bitmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FRONT_EMISSION_BIT = common dso_local global i32 0, align 4
@BACK_EMISSION_BIT = common dso_local global i32 0, align 4
@FRONT_AMBIENT_BIT = common dso_local global i32 0, align 4
@BACK_AMBIENT_BIT = common dso_local global i32 0, align 4
@FRONT_DIFFUSE_BIT = common dso_local global i32 0, align 4
@BACK_DIFFUSE_BIT = common dso_local global i32 0, align 4
@FRONT_SPECULAR_BIT = common dso_local global i32 0, align 4
@BACK_SPECULAR_BIT = common dso_local global i32 0, align 4
@FRONT_SHININESS_BIT = common dso_local global i32 0, align 4
@BACK_SHININESS_BIT = common dso_local global i32 0, align 4
@FRONT_INDEXES_BIT = common dso_local global i32 0, align 4
@BACK_INDEXES_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Bad param in gl_material_bitmask\00", align 1
@GL_FRONT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_FRONT_AND_BACK = common dso_local global i32 0, align 4
@FRONT_MATERIAL_BITS = common dso_local global i32 0, align 4
@BACK_MATERIAL_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl_material_bitmask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %55 [
    i32 130, label %8
    i32 134, label %14
    i32 131, label %20
    i32 128, label %26
    i32 129, label %32
    i32 133, label %38
    i32 132, label %49
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @FRONT_EMISSION_BIT, align 4
  %10 = load i32, i32* @BACK_EMISSION_BIT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %6, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32, i32* @FRONT_AMBIENT_BIT, align 4
  %16 = load i32, i32* @BACK_AMBIENT_BIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %6, align 4
  br label %57

20:                                               ; preds = %2
  %21 = load i32, i32* @FRONT_DIFFUSE_BIT, align 4
  %22 = load i32, i32* @BACK_DIFFUSE_BIT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load i32, i32* @FRONT_SPECULAR_BIT, align 4
  %28 = load i32, i32* @BACK_SPECULAR_BIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  br label %57

32:                                               ; preds = %2
  %33 = load i32, i32* @FRONT_SHININESS_BIT, align 4
  %34 = load i32, i32* @BACK_SHININESS_BIT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %57

38:                                               ; preds = %2
  %39 = load i32, i32* @FRONT_AMBIENT_BIT, align 4
  %40 = load i32, i32* @BACK_AMBIENT_BIT, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @FRONT_DIFFUSE_BIT, align 4
  %45 = load i32, i32* @BACK_DIFFUSE_BIT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %57

49:                                               ; preds = %2
  %50 = load i32, i32* @FRONT_INDEXES_BIT, align 4
  %51 = load i32, i32* @BACK_INDEXES_BIT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %57

55:                                               ; preds = %2
  %56 = call i32 @gl_problem(i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %91

57:                                               ; preds = %49, %38, %32, %26, %20, %14, %8
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @GL_FRONT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @GL_BACK, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @GL_FRONT_AND_BACK, align 4
  %68 = icmp eq i32 %66, %67
  br label %69

69:                                               ; preds = %65, %61, %57
  %70 = phi i1 [ true, %61 ], [ true, %57 ], [ %68, %65 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @GL_FRONT, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load i32, i32* @FRONT_MATERIAL_BITS, align 4
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %6, align 4
  br label %89

80:                                               ; preds = %69
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @GL_BACK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @BACK_MATERIAL_BITS, align 4
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %80
  br label %89

89:                                               ; preds = %88, %76
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %55
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @gl_problem(i32*, i8*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
