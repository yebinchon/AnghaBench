; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_get_opcode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader_sm1.c_shader_get_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_sm1_opcode_info = type { i64, i64, i64, i64 }
%struct.wined3d_sm1_data = type { %struct.wined3d_sm1_opcode_info*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@WINED3DSIH_TABLE_SIZE = common dso_local global i64 0, align 8
@WINED3D_SM1_OPCODE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"Unsupported opcode %#x, token 0x%08x, shader version %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_sm1_opcode_info* (%struct.wined3d_sm1_data*, i64)* @shader_get_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_sm1_opcode_info* @shader_get_opcode(%struct.wined3d_sm1_data* %0, i64 %1) #0 {
  %3 = alloca %struct.wined3d_sm1_opcode_info*, align 8
  %4 = alloca %struct.wined3d_sm1_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wined3d_sm1_opcode_info*, align 8
  %8 = alloca i32, align 4
  store %struct.wined3d_sm1_data* %0, %struct.wined3d_sm1_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @WINED3D_SHADER_VERSION(i32 %12, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.wined3d_sm1_data*, %struct.wined3d_sm1_data** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_sm1_data, %struct.wined3d_sm1_data* %18, i32 0, i32 0
  %20 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %19, align 8
  store %struct.wined3d_sm1_opcode_info* %20, %struct.wined3d_sm1_opcode_info** %7, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %72, %2
  %22 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %22, i64 %24
  %26 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WINED3DSIH_TABLE_SIZE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @WINED3D_SM1_OPCODE_MASK, align 8
  %33 = and i64 %31, %32
  %34 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %34, i64 %36
  %38 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %33, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %30
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %42, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %41
  %51 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %51, i64 %53
  %55 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %60, i64 %62
  %64 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %59, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %58, %50
  %68 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.wined3d_sm1_opcode_info, %struct.wined3d_sm1_opcode_info* %68, i64 %70
  store %struct.wined3d_sm1_opcode_info* %71, %struct.wined3d_sm1_opcode_info** %3, align 8
  br label %82

72:                                               ; preds = %58, %41, %30
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %21

75:                                               ; preds = %21
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @WINED3D_SM1_OPCODE_MASK, align 8
  %78 = and i64 %76, %77
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @FIXME(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %79, i64 %80)
  store %struct.wined3d_sm1_opcode_info* null, %struct.wined3d_sm1_opcode_info** %3, align 8
  br label %82

82:                                               ; preds = %75, %67
  %83 = load %struct.wined3d_sm1_opcode_info*, %struct.wined3d_sm1_opcode_info** %3, align 8
  ret %struct.wined3d_sm1_opcode_info* %83
}

declare dso_local i64 @WINED3D_SHADER_VERSION(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
