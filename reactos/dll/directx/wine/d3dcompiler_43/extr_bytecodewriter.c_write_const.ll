; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_write_const.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_write_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.constant = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bytecode_buffer = type { i32 }

@D3DSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@D3DSIO_DEFB = common dso_local global i64 0, align 8
@D3DSI_INSTLENGTH_SHIFT = common dso_local global i32 0, align 4
@D3DSP_REGNUM_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.constant**, i32, i64, i64, %struct.bytecode_buffer*, i64)* @write_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_const(%struct.constant** %0, i32 %1, i64 %2, i64 %3, %struct.bytecode_buffer* %4, i64 %5) #0 {
  %7 = alloca %struct.constant**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bytecode_buffer*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.constant** %0, %struct.constant*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.bytecode_buffer* %4, %struct.bytecode_buffer** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @d3dsp_register(i64 %17, i32 0)
  %19 = or i32 -2147483648, %18
  %20 = load i32, i32* @D3DSP_WRITEMASK_ALL, align 4
  %21 = or i32 %19, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %6
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @D3DSIO_DEFB, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @D3DSI_INSTLENGTH_SHIFT, align 4
  %31 = shl i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %14, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %14, align 8
  br label %41

35:                                               ; preds = %25
  %36 = load i32, i32* @D3DSI_INSTLENGTH_SHIFT, align 4
  %37 = shl i32 5, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %14, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %14, align 8
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %6
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %117, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %120

47:                                               ; preds = %43
  %48 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %11, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @put_dword(%struct.bytecode_buffer* %48, i64 %49)
  %51 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %11, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load %struct.constant**, %struct.constant*** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.constant*, %struct.constant** %53, i64 %55
  %57 = load %struct.constant*, %struct.constant** %56, align 8
  %58 = getelementptr inbounds %struct.constant, %struct.constant* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @D3DSP_REGNUM_MASK, align 8
  %61 = and i64 %59, %60
  %62 = or i64 %52, %61
  %63 = call i32 @put_dword(%struct.bytecode_buffer* %51, i64 %62)
  %64 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %11, align 8
  %65 = load %struct.constant**, %struct.constant*** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.constant*, %struct.constant** %65, i64 %67
  %69 = load %struct.constant*, %struct.constant** %68, align 8
  %70 = getelementptr inbounds %struct.constant, %struct.constant* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @put_dword(%struct.bytecode_buffer* %64, i64 %74)
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @D3DSIO_DEFB, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %47
  %80 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %11, align 8
  %81 = load %struct.constant**, %struct.constant*** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.constant*, %struct.constant** %81, i64 %83
  %85 = load %struct.constant*, %struct.constant** %84, align 8
  %86 = getelementptr inbounds %struct.constant, %struct.constant* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @put_dword(%struct.bytecode_buffer* %80, i64 %90)
  %92 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %11, align 8
  %93 = load %struct.constant**, %struct.constant*** %7, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.constant*, %struct.constant** %93, i64 %95
  %97 = load %struct.constant*, %struct.constant** %96, align 8
  %98 = getelementptr inbounds %struct.constant, %struct.constant* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @put_dword(%struct.bytecode_buffer* %92, i64 %102)
  %104 = load %struct.bytecode_buffer*, %struct.bytecode_buffer** %11, align 8
  %105 = load %struct.constant**, %struct.constant*** %7, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.constant*, %struct.constant** %105, i64 %107
  %109 = load %struct.constant*, %struct.constant** %108, align 8
  %110 = getelementptr inbounds %struct.constant, %struct.constant* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @put_dword(%struct.bytecode_buffer* %104, i64 %114)
  br label %116

116:                                              ; preds = %79, %47
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %43

120:                                              ; preds = %43
  ret void
}

declare dso_local i32 @d3dsp_register(i64, i32) #1

declare dso_local i32 @put_dword(%struct.bytecode_buffer*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
