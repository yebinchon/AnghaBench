; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_load_np2fixup_constants.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_shader_arb_load_np2fixup_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arb_ps_np2fixup_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i64 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_state = type { %struct.wined3d_texture** }
%struct.wined3d_texture = type { i32* }

@MAX_FRAGMENT_SAMPLERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Nonexistent texture is flagged for NP2 texcoord fixup.\0A\00", align 1
@GL_FRAGMENT_PROGRAM_ARB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arb_ps_np2fixup_info*, %struct.wined3d_gl_info*, %struct.wined3d_state*)* @shader_arb_load_np2fixup_constants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_arb_load_np2fixup_constants(%struct.arb_ps_np2fixup_info* %0, %struct.wined3d_gl_info* %1, %struct.wined3d_state* %2) #0 {
  %4 = alloca %struct.arb_ps_np2fixup_info*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wined3d_texture*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  store %struct.arb_ps_np2fixup_info* %0, %struct.arb_ps_np2fixup_info** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_state* %2, %struct.wined3d_state** %6, align 8
  %15 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %16 = mul nsw i32 4, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %4, align 8
  %21 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %125

27:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %96, %27
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %101

31:                                               ; preds = %28
  %32 = load %struct.wined3d_state*, %struct.wined3d_state** %6, align 8
  %33 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %32, i32 0, i32 0
  %34 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %34, i64 %35
  %37 = load %struct.wined3d_texture*, %struct.wined3d_texture** %36, align 8
  store %struct.wined3d_texture* %37, %struct.wined3d_texture** %12, align 8
  %38 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %4, align 8
  %39 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %13, align 1
  %45 = load i8, i8* %13, align 1
  %46 = zext i8 %45 to i32
  %47 = ashr i32 %46, 1
  %48 = mul nsw i32 %47, 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %19, i64 %49
  store i32* %50, i32** %14, align 8
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 1
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %31
  br label %96

55:                                               ; preds = %31
  %56 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %57 = icmp ne %struct.wined3d_texture* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = call i32 @ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %96

60:                                               ; preds = %55
  %61 = load i8, i8* %13, align 1
  %62 = zext i8 %61 to i32
  %63 = srem i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %60
  %66 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %67 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %74 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %14, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32 %77, i32* %79, align 4
  br label %95

80:                                               ; preds = %60
  %81 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %82 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %14, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %89 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %80, %65
  br label %96

96:                                               ; preds = %95, %58, %54
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = load i64, i64* %10, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %28

101:                                              ; preds = %28
  store i64 0, i64* %10, align 8
  br label %102

102:                                              ; preds = %121, %101
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %4, align 8
  %105 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %103, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load i32, i32* @GL_FRAGMENT_PROGRAM_ARB, align 4
  %111 = load %struct.arb_ps_np2fixup_info*, %struct.arb_ps_np2fixup_info** %4, align 8
  %112 = getelementptr inbounds %struct.arb_ps_np2fixup_info, %struct.arb_ps_np2fixup_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %113, %114
  %116 = load i64, i64* %10, align 8
  %117 = mul i64 %116, 4
  %118 = getelementptr inbounds i32, i32* %19, i64 %117
  %119 = call i32 @glProgramEnvParameter4fvARB(i32 %110, i64 %115, i32* %118)
  %120 = call i32 @GL_EXTCALL(i32 %119)
  br label %121

121:                                              ; preds = %109
  %122 = load i64, i64* %10, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %10, align 8
  br label %102

124:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %124, %26
  %126 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %11, align 4
  switch i32 %127, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %125, %125
  ret void

129:                                              ; preds = %125
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @GL_EXTCALL(i32) #2

declare dso_local i32 @glProgramEnvParameter4fvARB(i32, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
