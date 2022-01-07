; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_expr_compatible_data_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_expr_compatible_data_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_type = type { i64, i32, i32, i64 }

@HLSL_TYPE_LAST_SCALAR = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@HLSL_CLASS_VECTOR = common dso_local global i64 0, align 8
@HLSL_CLASS_MATRIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hlsl_type*, %struct.hlsl_type*)* @expr_compatible_data_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expr_compatible_data_types(%struct.hlsl_type* %0, %struct.hlsl_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hlsl_type*, align 8
  %5 = alloca %struct.hlsl_type*, align 8
  store %struct.hlsl_type* %0, %struct.hlsl_type** %4, align 8
  store %struct.hlsl_type* %1, %struct.hlsl_type** %5, align 8
  %6 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %7 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HLSL_TYPE_LAST_SCALAR, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %13 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HLSL_TYPE_LAST_SCALAR, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %163

19:                                               ; preds = %11
  %20 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %21 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %26 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %39, label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %31 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %36 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %24
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %163

41:                                               ; preds = %34, %29
  %42 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %43 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %49 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %3, align 4
  br label %163

55:                                               ; preds = %47, %41
  %56 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %57 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %63 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %161

67:                                               ; preds = %61, %55
  %68 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %69 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %75 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %126

79:                                               ; preds = %73, %67
  %80 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %81 = call i64 @components_count_type(%struct.hlsl_type* %80)
  %82 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %83 = call i64 @components_count_type(%struct.hlsl_type* %82)
  %84 = icmp eq i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %3, align 4
  br label %163

87:                                               ; preds = %79
  %88 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %89 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %87
  %94 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %95 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %123, label %98

98:                                               ; preds = %93
  %99 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %100 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %123, label %103

103:                                              ; preds = %98, %87
  %104 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %105 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %103
  %110 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %111 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %116 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br label %119

119:                                              ; preds = %114, %109
  %120 = phi i1 [ true, %109 ], [ %118, %114 ]
  br label %121

121:                                              ; preds = %119, %103
  %122 = phi i1 [ false, %103 ], [ %120, %119 ]
  br label %123

123:                                              ; preds = %121, %98, %93
  %124 = phi i1 [ true, %98 ], [ true, %93 ], [ %122, %121 ]
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %163

126:                                              ; preds = %73
  %127 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %128 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %131 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp sge i32 %129, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %136 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %139 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %137, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %134, %126
  %143 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %144 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %147 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp sle i32 %145, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %142
  %151 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %152 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %155 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = icmp sle i32 %153, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %150, %134
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* %3, align 4
  br label %163

160:                                              ; preds = %150, %142
  br label %161

161:                                              ; preds = %160, %61
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %158, %123, %85, %53, %39, %17
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @components_count_type(%struct.hlsl_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
