; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_map_register.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm4.c_map_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm4_data = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.wined3d_shader_register = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@WINED3DSPR_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid output index %u.\0A\00", align 1
@WINED3DSPR_COLOROUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_sm4_data*, %struct.wined3d_shader_register*)* @map_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_register(%struct.wined3d_sm4_data* %0, %struct.wined3d_shader_register* %1) #0 {
  %3 = alloca %struct.wined3d_sm4_data*, align 8
  %4 = alloca %struct.wined3d_shader_register*, align 8
  %5 = alloca i32, align 4
  store %struct.wined3d_sm4_data* %0, %struct.wined3d_sm4_data** %3, align 8
  store %struct.wined3d_shader_register* %1, %struct.wined3d_shader_register** %4, align 8
  %6 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_sm4_data, %struct.wined3d_sm4_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %49 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %4, align 8
  %12 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @WINED3DSPR_OUTPUT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %10
  %17 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %3, align 8
  %25 = getelementptr inbounds %struct.wined3d_sm4_data, %struct.wined3d_sm4_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp uge i32 %23, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %50

32:                                               ; preds = %16
  %33 = load i32, i32* @WINED3DSPR_COLOROUT, align 4
  %34 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.wined3d_sm4_data*, %struct.wined3d_sm4_data** %3, align 8
  %37 = getelementptr inbounds %struct.wined3d_sm4_data, %struct.wined3d_sm4_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wined3d_shader_register*, %struct.wined3d_shader_register** %4, align 8
  %44 = getelementptr inbounds %struct.wined3d_shader_register, %struct.wined3d_shader_register* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  br label %48

48:                                               ; preds = %32, %10
  br label %50

49:                                               ; preds = %2
  br label %50

50:                                               ; preds = %49, %48, %29
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
