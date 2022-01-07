; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_skip_unrecognized.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_skip_unrecognized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm1_data = type { i32 }
%struct.wined3d_shader_src_param = type { i32 }
%struct.wined3d_shader_dst_param = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"Unrecognized opcode param: token=0x%08x addr_token=0x%08x.\0A\00", align 1
@WINED3D_SM1_ADDRESS_MODE_RELATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_sm1_data*, i32*)* @shader_skip_unrecognized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_skip_unrecognized(%struct.wined3d_sm1_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wined3d_sm1_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_shader_src_param, align 4
  %10 = alloca %struct.wined3d_shader_dst_param, align 4
  %11 = alloca %struct.wined3d_shader_src_param, align 4
  store %struct.wined3d_sm1_data* %0, %struct.wined3d_sm1_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %64, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, -2147483648
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %67

17:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  %18 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @shader_get_param(%struct.wined3d_sm1_data* %18, i32* %19, i32* %7, i32* %8)
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @FIXME(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @WINED3D_SM1_ADDRESS_MODE_RELATIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %17
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @shader_parse_src_param(i32 %37, %struct.wined3d_shader_src_param* null, %struct.wined3d_shader_src_param* %9)
  br label %39

39:                                               ; preds = %36, %17
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @WINED3D_SM1_ADDRESS_MODE_RELATIVE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi %struct.wined3d_shader_src_param* [ %9, %48 ], [ null, %49 ]
  %52 = call i32 @shader_parse_dst_param(i32 %43, %struct.wined3d_shader_src_param* %51, %struct.wined3d_shader_dst_param* %10)
  br label %64

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @WINED3D_SM1_ADDRESS_MODE_RELATIVE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %61

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %59
  %62 = phi %struct.wined3d_shader_src_param* [ %9, %59 ], [ null, %60 ]
  %63 = call i32 @shader_parse_src_param(i32 %54, %struct.wined3d_shader_src_param* %62, %struct.wined3d_shader_src_param* %11)
  br label %64

64:                                               ; preds = %61, %50
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %12

67:                                               ; preds = %12
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @shader_get_param(%struct.wined3d_sm1_data*, i32*, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @shader_parse_src_param(i32, %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param*) #1

declare dso_local i32 @shader_parse_dst_param(i32, %struct.wined3d_shader_src_param*, %struct.wined3d_shader_dst_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
