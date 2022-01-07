; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_d3d9_swizzle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_d3d9_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BWRITERVS_X_X = common dso_local global i32 0, align 4
@D3DVS_X_X = common dso_local global i32 0, align 4
@BWRITERVS_X_Y = common dso_local global i32 0, align 4
@D3DVS_X_Y = common dso_local global i32 0, align 4
@BWRITERVS_X_Z = common dso_local global i32 0, align 4
@D3DVS_X_Z = common dso_local global i32 0, align 4
@BWRITERVS_X_W = common dso_local global i32 0, align 4
@D3DVS_X_W = common dso_local global i32 0, align 4
@BWRITERVS_Y_X = common dso_local global i32 0, align 4
@D3DVS_Y_X = common dso_local global i32 0, align 4
@BWRITERVS_Y_Y = common dso_local global i32 0, align 4
@D3DVS_Y_Y = common dso_local global i32 0, align 4
@BWRITERVS_Y_Z = common dso_local global i32 0, align 4
@D3DVS_Y_Z = common dso_local global i32 0, align 4
@BWRITERVS_Y_W = common dso_local global i32 0, align 4
@D3DVS_Y_W = common dso_local global i32 0, align 4
@BWRITERVS_Z_X = common dso_local global i32 0, align 4
@D3DVS_Z_X = common dso_local global i32 0, align 4
@BWRITERVS_Z_Y = common dso_local global i32 0, align 4
@D3DVS_Z_Y = common dso_local global i32 0, align 4
@BWRITERVS_Z_Z = common dso_local global i32 0, align 4
@D3DVS_Z_Z = common dso_local global i32 0, align 4
@BWRITERVS_Z_W = common dso_local global i32 0, align 4
@D3DVS_Z_W = common dso_local global i32 0, align 4
@BWRITERVS_W_X = common dso_local global i32 0, align 4
@D3DVS_W_X = common dso_local global i32 0, align 4
@BWRITERVS_W_Y = common dso_local global i32 0, align 4
@D3DVS_W_Y = common dso_local global i32 0, align 4
@BWRITERVS_W_Z = common dso_local global i32 0, align 4
@D3DVS_W_Z = common dso_local global i32 0, align 4
@BWRITERVS_W_W = common dso_local global i32 0, align 4
@D3DVS_W_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @d3d9_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_swizzle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @BWRITERVS_X_X, align 4
  %6 = and i32 %4, %5
  %7 = load i32, i32* @BWRITERVS_X_X, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @D3DVS_X_X, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @BWRITERVS_X_Y, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @BWRITERVS_X_Y, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @D3DVS_X_Y, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @BWRITERVS_X_Z, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @BWRITERVS_X_Z, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load i32, i32* @D3DVS_X_Z, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @BWRITERVS_X_W, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @BWRITERVS_X_W, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* @D3DVS_X_W, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @BWRITERVS_Y_X, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @BWRITERVS_Y_X, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @D3DVS_Y_X, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @BWRITERVS_Y_Y, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @BWRITERVS_Y_Y, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @D3DVS_Y_Y, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @BWRITERVS_Y_Z, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @BWRITERVS_Y_Z, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @D3DVS_Y_Z, align 4
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @BWRITERVS_Y_W, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @BWRITERVS_Y_W, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @D3DVS_Y_W, align 4
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @BWRITERVS_Z_X, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @BWRITERVS_Z_X, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @D3DVS_Z_X, align 4
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @BWRITERVS_Z_Y, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @BWRITERVS_Z_Y, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @D3DVS_Z_Y, align 4
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %93
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @BWRITERVS_Z_Z, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @BWRITERVS_Z_Z, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @D3DVS_Z_Z, align 4
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %109, %103
  %114 = load i32, i32* %2, align 4
  %115 = load i32, i32* @BWRITERVS_Z_W, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @BWRITERVS_Z_W, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i32, i32* @D3DVS_Z_W, align 4
  %121 = load i32, i32* %3, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %119, %113
  %124 = load i32, i32* %2, align 4
  %125 = load i32, i32* @BWRITERVS_W_X, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @BWRITERVS_W_X, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @D3DVS_W_X, align 4
  %131 = load i32, i32* %3, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %129, %123
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @BWRITERVS_W_Y, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @BWRITERVS_W_Y, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %133
  %140 = load i32, i32* @D3DVS_W_Y, align 4
  %141 = load i32, i32* %3, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %133
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* @BWRITERVS_W_Z, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @BWRITERVS_W_Z, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load i32, i32* @D3DVS_W_Z, align 4
  %151 = load i32, i32* %3, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* @BWRITERVS_W_W, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @BWRITERVS_W_W, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i32, i32* @D3DVS_W_W, align 4
  %161 = load i32, i32* %3, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %159, %153
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
