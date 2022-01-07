; ModuleID = '/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_utils.c_i386nto_register_area.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/qnx/src/extr_utils.c_i386nto_register_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NTO_REG_GENERAL = common dso_local global i32 0, align 4
@NUM_GPREGS = common dso_local global i32 0, align 4
@NTO_REG_FLOAT = common dso_local global i32 0, align 4
@I387_FCTRL_REGNUM = common dso_local global i32 0, align 4
@I387_FISEG_REGNUM = common dso_local global i32 0, align 4
@I387_FOP_REGNUM = common dso_local global i32 0, align 4
@I387_ST0_REGNUM = common dso_local global i32 0, align 4
@I387_XMM0_REGNUM = common dso_local global i32 0, align 4
@I387_MXCSR_REGNUM = common dso_local global i32 0, align 4
@X86_CPU_FXSR = common dso_local global i32 0, align 4
@nto_cpuinfo_flags = common dso_local global i32 0, align 4
@nto_cpuinfo_valid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386nto_register_area(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NTO_REG_GENERAL, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @NUM_GPREGS, align 4
  %25 = mul nsw i32 %24, 4
  store i32 %25, i32* %4, align 4
  br label %131

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @i386nto_reg_offset(i32 %27)
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %131

34:                                               ; preds = %26
  store i32 4, i32* %4, align 4
  br label %131

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NTO_REG_FLOAT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %129

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @I387_FCTRL_REGNUM, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @I387_FISEG_REGNUM, align 4
  %46 = icmp sle i32 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @I387_FISEG_REGNUM, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @I387_FOP_REGNUM, align 4
  %56 = icmp sle i32 %54, %55
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi i1 [ false, %47 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @I387_ST0_REGNUM, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @I387_ST0_REGNUM, align 4
  %66 = add nsw i32 %65, 8
  %67 = icmp slt i32 %64, %66
  br label %68

68:                                               ; preds = %63, %57
  %69 = phi i1 [ false, %57 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @I387_XMM0_REGNUM, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %77 = icmp slt i32 %75, %76
  br label %78

78:                                               ; preds = %74, %68
  %79 = phi i1 [ false, %68 ], [ %77, %74 ]
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %15, align 4
  store i32 512, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  store i32 2, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %84 = load i32, i32* @I387_FCTRL_REGNUM, align 4
  store i32 %84, i32* %11, align 4
  br label %113

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  store i32 4, i32* %9, align 4
  store i32 8, i32* %8, align 4
  %89 = load i32, i32* @I387_FISEG_REGNUM, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %112

91:                                               ; preds = %85
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  store i32 16, i32* %9, align 4
  store i32 32, i32* %8, align 4
  %95 = load i32, i32* @I387_ST0_REGNUM, align 4
  store i32 %95, i32* %11, align 4
  br label %111

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  store i32 16, i32* %9, align 4
  store i32 160, i32* %8, align 4
  %100 = load i32, i32* @I387_XMM0_REGNUM, align 4
  store i32 %100, i32* %11, align 4
  br label %110

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  store i32 4, i32* %9, align 4
  store i32 24, i32* %8, align 4
  %106 = load i32, i32* @I387_MXCSR_REGNUM, align 4
  store i32 %106, i32* %11, align 4
  br label %109

107:                                              ; preds = %101
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %105
  br label %110

110:                                              ; preds = %109, %99
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112, %83
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sub nsw i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = mul nsw i32 %120, %121
  %123 = add nsw i32 %117, %122
  br label %125

124:                                              ; preds = %113
  br label %125

125:                                              ; preds = %124, %116
  %126 = phi i32 [ %123, %116 ], [ 0, %124 ]
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %4, align 4
  br label %131

129:                                              ; preds = %35
  br label %130

130:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %125, %34, %33, %23
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @i386nto_reg_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
