; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_compatible_data_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_compatible_data_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_type = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@HLSL_CLASS_LAST_NUMERIC = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@HLSL_CLASS_VECTOR = common dso_local global i64 0, align 8
@HLSL_CLASS_ARRAY = common dso_local global i64 0, align 8
@HLSL_CLASS_STRUCT = common dso_local global i64 0, align 8
@HLSL_CLASS_MATRIX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compatible_data_types(%struct.hlsl_type* %0, %struct.hlsl_type* %1) #0 {
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
  br label %222

15:                                               ; preds = %9
  %16 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %17 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %23 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %28 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %3, align 4
  br label %222

33:                                               ; preds = %26, %21
  %34 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %35 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %41 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %47 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %50 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %48, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %222

54:                                               ; preds = %39, %33
  br label %55

55:                                               ; preds = %54, %15
  %56 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %57 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @HLSL_CLASS_LAST_NUMERIC, align 8
  %60 = icmp sle i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %63 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %68 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %3, align 4
  br label %222

73:                                               ; preds = %66, %61, %55
  %74 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %75 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %73
  %80 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %81 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %86 = call i64 @compare_hlsl_types(i32 %84, %struct.hlsl_type* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %3, align 4
  br label %222

90:                                               ; preds = %79
  %91 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %92 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %98 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @HLSL_CLASS_STRUCT, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %96, %90
  %103 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %104 = call i64 @components_count_type(%struct.hlsl_type* %103)
  %105 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %106 = call i64 @components_count_type(%struct.hlsl_type* %105)
  %107 = icmp sge i64 %104, %106
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %3, align 4
  br label %222

109:                                              ; preds = %96
  %110 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %111 = call i64 @components_count_type(%struct.hlsl_type* %110)
  %112 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %113 = call i64 @components_count_type(%struct.hlsl_type* %112)
  %114 = icmp eq i64 %111, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %3, align 4
  br label %222

116:                                              ; preds = %73
  %117 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %118 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @HLSL_CLASS_STRUCT, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %124 = call i64 @components_count_type(%struct.hlsl_type* %123)
  %125 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %126 = call i64 @components_count_type(%struct.hlsl_type* %125)
  %127 = icmp sge i64 %124, %126
  %128 = zext i1 %127 to i32
  store i32 %128, i32* %3, align 4
  br label %222

129:                                              ; preds = %116
  %130 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %131 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @HLSL_CLASS_ARRAY, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %137 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @HLSL_CLASS_STRUCT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %135, %129
  %142 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %143 = call i64 @components_count_type(%struct.hlsl_type* %142)
  %144 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %145 = call i64 @components_count_type(%struct.hlsl_type* %144)
  %146 = icmp eq i64 %143, %145
  %147 = zext i1 %146 to i32
  store i32 %147, i32* %3, align 4
  br label %222

148:                                              ; preds = %135
  %149 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %150 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %156 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %212

160:                                              ; preds = %154, %148
  %161 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %162 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %190

166:                                              ; preds = %160
  %167 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %168 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @HLSL_CLASS_MATRIX, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %166
  %173 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %174 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %177 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %175, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %172
  %181 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %182 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %185 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %183, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %3, align 4
  br label %222

190:                                              ; preds = %180, %172, %166, %160
  %191 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %192 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %202, label %196

196:                                              ; preds = %190
  %197 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %198 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @HLSL_CLASS_VECTOR, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %210

202:                                              ; preds = %196, %190
  %203 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %204 = call i64 @components_count_type(%struct.hlsl_type* %203)
  %205 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %206 = call i64 @components_count_type(%struct.hlsl_type* %205)
  %207 = icmp eq i64 %204, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @TRUE, align 4
  store i32 %209, i32* %3, align 4
  br label %222

210:                                              ; preds = %202, %196
  %211 = load i32, i32* @FALSE, align 4
  store i32 %211, i32* %3, align 4
  br label %222

212:                                              ; preds = %154
  %213 = load %struct.hlsl_type*, %struct.hlsl_type** %4, align 8
  %214 = call i64 @components_count_type(%struct.hlsl_type* %213)
  %215 = load %struct.hlsl_type*, %struct.hlsl_type** %5, align 8
  %216 = call i64 @components_count_type(%struct.hlsl_type* %215)
  %217 = icmp sge i64 %214, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %212
  %219 = load i32, i32* @TRUE, align 4
  store i32 %219, i32* %3, align 4
  br label %222

220:                                              ; preds = %212
  %221 = load i32, i32* @FALSE, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %220, %218, %210, %208, %188, %141, %122, %109, %102, %88, %71, %45, %31, %13
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @convertible_data_type(%struct.hlsl_type*) #1

declare dso_local i64 @compare_hlsl_types(i32, %struct.hlsl_type*) #1

declare dso_local i64 @components_count_type(%struct.hlsl_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
