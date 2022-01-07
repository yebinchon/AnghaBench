; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_select_frontend.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_select_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_frontend = type { i32 }

@sm1_shader_frontend = common dso_local global %struct.wined3d_shader_frontend zeroinitializer, align 4
@sm4_shader_frontend = common dso_local global %struct.wined3d_shader_frontend zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid byte code format %#x specified.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_shader_frontend* (i32)* @shader_select_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_shader_frontend* @shader_select_frontend(i32 %0) #0 {
  %2 = alloca %struct.wined3d_shader_frontend*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %7 [
    i32 129, label %5
    i32 128, label %6
  ]

5:                                                ; preds = %1
  store %struct.wined3d_shader_frontend* @sm1_shader_frontend, %struct.wined3d_shader_frontend** %2, align 8
  br label %10

6:                                                ; preds = %1
  store %struct.wined3d_shader_frontend* @sm4_shader_frontend, %struct.wined3d_shader_frontend** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %8)
  store %struct.wined3d_shader_frontend* null, %struct.wined3d_shader_frontend** %2, align 8
  br label %10

10:                                               ; preds = %7, %6, %5
  %11 = load %struct.wined3d_shader_frontend*, %struct.wined3d_shader_frontend** %2, align 8
  ret %struct.wined3d_shader_frontend* %11
}

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
