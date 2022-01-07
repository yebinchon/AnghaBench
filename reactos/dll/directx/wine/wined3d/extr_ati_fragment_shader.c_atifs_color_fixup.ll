; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_color_fixup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_ati_fragment_shader.c_atifs_color_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_gl_info = type { i32 }
%struct.color_fixup_desc = type { i32 }

@color_fixup_rg = common dso_local global i32 0, align 4
@GL_MOV_ATI = common dso_local global i32 0, align 4
@GL_RED_BIT_ATI = common dso_local global i32 0, align 4
@GL_GREEN_BIT_ATI = common dso_local global i32 0, align 4
@GL_NONE = common dso_local global i32 0, align 4
@GL_2X_BIT_ATI = common dso_local global i32 0, align 4
@GL_BIAS_BIT_ATI = common dso_local global i32 0, align 4
@GL_BLUE_BIT_ATI = common dso_local global i32 0, align 4
@GL_ONE = common dso_local global i32 0, align 4
@GL_ALPHA = common dso_local global i32 0, align 4
@color_fixup_rgl = common dso_local global i32 0, align 4
@color_fixup_rgba = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported color fixup.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_gl_info*, i32, i32)* @atifs_color_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atifs_color_fixup(%struct.wined3d_gl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.color_fixup_desc, align 4
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store %struct.wined3d_gl_info* %0, %struct.wined3d_gl_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @color_fixup_rg, align 4
  %9 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @is_same_fixup(i32 %10, i32 %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %15 = load i32, i32* @GL_MOV_ATI, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GL_RED_BIT_ATI, align 4
  %18 = load i32, i32* @GL_GREEN_BIT_ATI, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @GL_NONE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GL_NONE, align 4
  %23 = load i32, i32* @GL_2X_BIT_ATI, align 4
  %24 = load i32, i32* @GL_BIAS_BIT_ATI, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @wrap_op1(%struct.wined3d_gl_info* %14, i32 %15, i32 %16, i32 %19, i32 %20, i32 %21, i32 %22, i32 %25)
  %27 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %28 = load i32, i32* @GL_MOV_ATI, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GL_BLUE_BIT_ATI, align 4
  %31 = load i32, i32* @GL_NONE, align 4
  %32 = load i32, i32* @GL_ONE, align 4
  %33 = load i32, i32* @GL_NONE, align 4
  %34 = load i32, i32* @GL_NONE, align 4
  %35 = call i32 @wrap_op1(%struct.wined3d_gl_info* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %37 = load i32, i32* @GL_MOV_ATI, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @GL_ALPHA, align 4
  %40 = load i32, i32* @GL_NONE, align 4
  %41 = load i32, i32* @GL_ONE, align 4
  %42 = load i32, i32* @GL_NONE, align 4
  %43 = load i32, i32* @GL_NONE, align 4
  %44 = call i32 @wrap_op1(%struct.wined3d_gl_info* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %98

45:                                               ; preds = %3
  %46 = load i32, i32* @color_fixup_rgl, align 4
  %47 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @is_same_fixup(i32 %48, i32 %46)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %53 = load i32, i32* @GL_MOV_ATI, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @GL_RED_BIT_ATI, align 4
  %56 = load i32, i32* @GL_GREEN_BIT_ATI, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @GL_NONE, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @GL_NONE, align 4
  %61 = load i32, i32* @GL_2X_BIT_ATI, align 4
  %62 = load i32, i32* @GL_BIAS_BIT_ATI, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @wrap_op1(%struct.wined3d_gl_info* %52, i32 %53, i32 %54, i32 %57, i32 %58, i32 %59, i32 %60, i32 %63)
  br label %97

65:                                               ; preds = %45
  %66 = load i32, i32* @color_fixup_rgba, align 4
  %67 = getelementptr inbounds %struct.color_fixup_desc, %struct.color_fixup_desc* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @is_same_fixup(i32 %68, i32 %66)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %73 = load i32, i32* @GL_MOV_ATI, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @GL_NONE, align 4
  %76 = load i32, i32* @GL_NONE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @GL_NONE, align 4
  %79 = load i32, i32* @GL_2X_BIT_ATI, align 4
  %80 = load i32, i32* @GL_BIAS_BIT_ATI, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @wrap_op1(%struct.wined3d_gl_info* %72, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %81)
  %83 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %84 = load i32, i32* @GL_MOV_ATI, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @GL_ALPHA, align 4
  %87 = load i32, i32* @GL_NONE, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @GL_NONE, align 4
  %90 = load i32, i32* @GL_2X_BIT_ATI, align 4
  %91 = load i32, i32* @GL_BIAS_BIT_ATI, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @wrap_op1(%struct.wined3d_gl_info* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %92)
  br label %96

94:                                               ; preds = %65
  %95 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %71
  br label %97

97:                                               ; preds = %96, %51
  br label %98

98:                                               ; preds = %97, %13
  ret void
}

declare dso_local i64 @is_same_fixup(i32, i32) #1

declare dso_local i32 @wrap_op1(%struct.wined3d_gl_info*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
