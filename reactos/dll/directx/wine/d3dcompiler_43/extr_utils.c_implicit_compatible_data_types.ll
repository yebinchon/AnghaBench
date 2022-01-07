; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_implicit_compatible_data_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_implicit_compatible_data_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_type = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hlsl_type* }

@FALSE = common dso_local global i32 0, align 4
@HLSL_CLASS_LAST_NUMERIC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@HLSL_CLASS_ARRAY = common dso_local global i64 0, align 8
@HLSL_CLASS_VECTOR = common dso_local global i64 0, align 8
@HLSL_CLASS_MATRIX = common dso_local global i64 0, align 8
@HLSL_CLASS_STRUCT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hlsl_type*, %struct.hlsl_type*)* @implicit_compatible_data_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @implicit_compatible_data_types(%struct.hlsl_type* %0, %struct.hlsl_type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hlsl_type*, align 8
  %5 = alloca %struct.hlsl_type*, align 8
  store %struct.hlsl_type* %0, %struct.hlsl_type** %4, align 8
  store %struct.hlsl_type* %1, %struct.hlsl_type** %5, align 8
  %6 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %7 = call i32 @convertible_data_type(%struct.hlsl_type* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %11 = call i32 @convertible_data_type(%struct.hlsl_type* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %234

15:                                               ; preds = %9
  %16 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %17 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %23 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %28 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %33 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %234

39:                                               ; preds = %31, %26, %21
  %40 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %41 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %46 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %51 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %234

57:                                               ; preds = %49, %44, %39
  br label %58

58:                                               ; preds = %57, %15
  %59 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %60 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %66 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %72 = call i64 @components_count_type(%struct.hlsl_type* %71)
  %73 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %74 = call i64 @components_count_type(%struct.hlsl_type* %73)
  %75 = icmp eq i64 %72, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %3, align 4
  br label %234

77:                                               ; preds = %64, %58
  %78 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %79 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %85 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %101, label %89

89:                                               ; preds = %83, %77
  %90 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %91 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %94 = icmp sle i64 %92, %93
  br i1 %94, label %95, label %128

95:                                               ; preds = %89
  %96 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %97 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %95, %83
  %102 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %103 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %109 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load %struct.hlsl_type*, %struct.hlsl_type** %111, align 8
  %113 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %114 = call i32 @compare_hlsl_types(%struct.hlsl_type* %112, %struct.hlsl_type* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %3, align 4
  br label %234

118:                                              ; preds = %107, %101
  %119 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %120 = call i64 @components_count_type(%struct.hlsl_type* %119)
  %121 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %122 = call i64 @components_count_type(%struct.hlsl_type* %121)
  %123 = icmp eq i64 %120, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %3, align 4
  br label %234

126:                                              ; preds = %118
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %3, align 4
  br label %234

128:                                              ; preds = %95, %89
  %129 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %130 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %133 = icmp sle i64 %131, %132
  br i1 %133, label %134, label %152

134:                                              ; preds = %128
  %135 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %136 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %139 = icmp sle i64 %137, %138
  br i1 %139, label %140, label %152

140:                                              ; preds = %134
  %141 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %142 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %145 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %143, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i32, i32* @TRUE, align 4
  store i32 %149, i32* %3, align 4
  br label %234

150:                                              ; preds = %140
  %151 = load i32, i32* @FALSE, align 4
  store i32 %151, i32* %3, align 4
  br label %234

152:                                              ; preds = %134, %128
  %153 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %154 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %160 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %216

164:                                              ; preds = %158, %152
  %165 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %166 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %194

170:                                              ; preds = %164
  %171 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %172 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %170
  %177 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %178 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %181 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %179, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %176
  %185 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %186 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %189 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp sge i32 %187, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, i32* @TRUE, align 4
  store i32 %193, i32* %3, align 4
  br label %234

194:                                              ; preds = %184, %176, %170, %164
  %195 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %196 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %206, label %200

200:                                              ; preds = %194
  %201 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %202 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %214

206:                                              ; preds = %200, %194
  %207 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %208 = call i64 @components_count_type(%struct.hlsl_type* %207)
  %209 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %210 = call i64 @components_count_type(%struct.hlsl_type* %209)
  %211 = icmp eq i64 %208, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %206
  %213 = load i32, i32* @TRUE, align 4
  store i32 %213, i32* %3, align 4
  br label %234

214:                                              ; preds = %206, %200
  %215 = load i32, i32* @FALSE, align 4
  store i32 %215, i32* %3, align 4
  br label %234

216:                                              ; preds = %158
  %217 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %218 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @HLSL_CLASS_STRUCT, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %232

222:                                              ; preds = %216
  %223 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %224 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @HLSL_CLASS_STRUCT, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %222
  %229 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %230 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %231 = call i32 @compare_hlsl_types(%struct.hlsl_type* %229, %struct.hlsl_type* %230)
  store i32 %231, i32* %3, align 4
  br label %234

232:                                              ; preds = %222, %216
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %232, %228, %214, %212, %192, %150, %148, %126, %124, %116, %70, %55, %37, %13
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i32 @convertible_data_type(%struct.hlsl_type*) #1

declare dso_local i64 @components_count_type(%struct.hlsl_type*) #1

declare dso_local i32 @compare_hlsl_types(%struct.hlsl_type*, %struct.hlsl_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
