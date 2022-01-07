; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_exec_get_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_preshader.c_exec_get_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_regstore = type { i32* }
%struct.d3dx_pres_operand = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@PRES_REGTAB_COUNT = common dso_local global i64 0, align 8
@PRES_REGTAB_CONST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Wrapping register index %u, table %u, wrap_size %u, table size %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.d3dx_regstore*, %struct.d3dx_pres_operand*, i32)* @exec_get_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @exec_get_arg(%struct.d3dx_regstore* %0, %struct.d3dx_pres_operand* %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.d3dx_regstore*, align 8
  %6 = alloca %struct.d3dx_pres_operand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.d3dx_regstore* %0, %struct.d3dx_regstore** %5, align 8
  store %struct.d3dx_pres_operand* %1, %struct.d3dx_pres_operand** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %6, align 8
  %14 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %11, align 4
  %17 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %6, align 8
  %18 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PRES_REGTAB_COUNT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %26 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %6, align 8
  %27 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %6, align 8
  %32 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call double @exec_get_reg_value(%struct.d3dx_regstore* %25, i32 %30, i32 %34)
  %36 = call i32 @lrint(double %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %24, %23
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @get_offset_reg(i32 %38, i32 %39)
  %41 = load %struct.d3dx_pres_operand*, %struct.d3dx_pres_operand** %6, align 8
  %42 = getelementptr inbounds %struct.d3dx_pres_operand, %struct.d3dx_pres_operand* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %40, %44
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @get_reg_offset(i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %53 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %51, %58
  br i1 %59, label %60, label %122

60:                                               ; preds = %37
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PRES_REGTAB_CONST, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %76, %64
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %68 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %66, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = shl i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %65

79:                                               ; preds = %65
  br label %88

80:                                               ; preds = %60
  %81 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %82 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %80, %79
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %93 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90, i32 %91, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = urem i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %105 = getelementptr inbounds %struct.d3dx_regstore, %struct.d3dx_regstore* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp uge i32 %103, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %88
  store double 0.000000e+00, double* %4, align 8
  br label %127

113:                                              ; preds = %88
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @get_offset_reg(i32 %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @get_reg_components(i32 %118)
  %120 = urem i32 %117, %119
  %121 = add i32 %116, %120
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %113, %37
  %123 = load %struct.d3dx_regstore*, %struct.d3dx_regstore** %5, align 8
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call double @exec_get_reg_value(%struct.d3dx_regstore* %123, i32 %124, i32 %125)
  store double %126, double* %4, align 8
  br label %127

127:                                              ; preds = %122, %112
  %128 = load double, double* %4, align 8
  ret double %128
}

declare dso_local i32 @lrint(double) #1

declare dso_local double @exec_get_reg_value(%struct.d3dx_regstore*, i32, i32) #1

declare dso_local i32 @get_offset_reg(i32, i32) #1

declare dso_local i32 @get_reg_offset(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_reg_components(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
