; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_register_for_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_register_for_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }

@GL_NONE = common dso_local global i32 0, align 4
@ARG_UNUSED = common dso_local global i32 0, align 4
@WINED3DTA_SELECTMASK = common dso_local global i32 0, align 4
@GL_PRIMARY_COLOR = common dso_local global i32 0, align 4
@GL_REG_0_ATI = common dso_local global i32 0, align 4
@ATIFS_CONST_TFACTOR = common dso_local global i32 0, align 4
@GL_SECONDARY_INTERPOLATOR_ATI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unknown source argument %d\0A\00", align 1
@GL_ZERO = common dso_local global i32 0, align 4
@WINED3DTA_COMPLEMENT = common dso_local global i32 0, align 4
@GL_COMP_BIT_ATI = common dso_local global i32 0, align 4
@WINED3DTA_ALPHAREPLICATE = common dso_local global i32 0, align 4
@GL_ALPHA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.wined3d_gl_info*, i32, i32*, i32*, i32)* @register_for_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_for_arg(i32 %0, %struct.wined3d_gl_info* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_gl_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32*, i32** %11, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @GL_NONE, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %6
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ARG_UNUSED, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @GL_NONE, align 4
  %29 = load i32*, i32** %12, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %24
  store i32 -1, i32* %7, align 4
  br label %98

31:                                               ; preds = %20
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @WINED3DTA_SELECTMASK, align 4
  %34 = and i32 %32, %33
  switch i32 %34, label %59 [
    i32 132, label %35
    i32 133, label %37
    i32 129, label %46
    i32 128, label %50
    i32 131, label %52
    i32 130, label %54
    i32 134, label %56
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* @GL_PRIMARY_COLOR, align 4
  store i32 %36, i32* %14, align 4
  br label %63

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @GL_REG_0_ATI, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @GL_PRIMARY_COLOR, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %14, align 4
  br label %63

46:                                               ; preds = %31
  %47 = load i32, i32* @GL_REG_0_ATI, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %47, %48
  store i32 %49, i32* %14, align 4
  br label %63

50:                                               ; preds = %31
  %51 = load i32, i32* @ATIFS_CONST_TFACTOR, align 4
  store i32 %51, i32* %14, align 4
  br label %63

52:                                               ; preds = %31
  %53 = load i32, i32* @GL_SECONDARY_INTERPOLATOR_ATI, align 4
  store i32 %53, i32* %14, align 4
  br label %63

54:                                               ; preds = %31
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %14, align 4
  br label %63

56:                                               ; preds = %31
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @ATIFS_CONST_STAGE(i32 %57)
  store i32 %58, i32* %14, align 4
  br label %63

59:                                               ; preds = %31
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @FIXME(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @GL_ZERO, align 4
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %56, %54, %52, %50, %46, %44, %35
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @WINED3DTA_COMPLEMENT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @GL_COMP_BIT_ATI, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %71, %68
  br label %77

77:                                               ; preds = %76, %63
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @WINED3DTA_ALPHAREPLICATE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32*, i32** %12, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @GL_ALPHA, align 4
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %96

89:                                               ; preds = %77
  %90 = load i32*, i32** %12, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @GL_NONE, align 4
  %94 = load i32*, i32** %12, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %88
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %96, %30
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @ATIFS_CONST_STAGE(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
