; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_compare_sig.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_compare_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader_signature = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader_signature*, %struct.wined3d_shader_signature*)* @compare_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_sig(%struct.wined3d_shader_signature* %0, %struct.wined3d_shader_signature* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_shader_signature*, align 8
  %5 = alloca %struct.wined3d_shader_signature*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_signature_element*, align 8
  %9 = alloca %struct.wined3d_shader_signature_element*, align 8
  store %struct.wined3d_shader_signature* %0, %struct.wined3d_shader_signature** %4, align 8
  store %struct.wined3d_shader_signature* %1, %struct.wined3d_shader_signature** %5, align 8
  %10 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %5, align 8
  %22 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 -1, i32 1
  store i32 %26, i32* %3, align 4
  br label %181

27:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %177, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %180

34:                                               ; preds = %28
  %35 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %4, align 8
  %36 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %35, i32 0, i32 1
  %37 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %37, i64 %39
  store %struct.wined3d_shader_signature_element* %40, %struct.wined3d_shader_signature_element** %8, align 8
  %41 = load %struct.wined3d_shader_signature*, %struct.wined3d_shader_signature** %5, align 8
  %42 = getelementptr inbounds %struct.wined3d_shader_signature, %struct.wined3d_shader_signature* %41, i32 0, i32 1
  %43 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %43, i64 %45
  store %struct.wined3d_shader_signature_element* %46, %struct.wined3d_shader_signature_element** %9, align 8
  %47 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %48 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %51, %34
  %57 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %58 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %61 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %66 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %69 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 -1, i32 1
  store i32 %73, i32* %3, align 4
  br label %181

74:                                               ; preds = %56
  br label %177

75:                                               ; preds = %51
  %76 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %80 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @strcmp(i64 %78, i64 %81)
  store i32 %82, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %181

86:                                               ; preds = %75
  %87 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %91 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %86
  %95 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %96 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %99 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 -1, i32 1
  store i32 %103, i32* %3, align 4
  br label %181

104:                                              ; preds = %86
  %105 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %106 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %109 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %114 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %117 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 -1, i32 1
  store i32 %121, i32* %3, align 4
  br label %181

122:                                              ; preds = %104
  %123 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %124 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %127 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %125, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %132 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %135 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %133, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 -1, i32 1
  store i32 %139, i32* %3, align 4
  br label %181

140:                                              ; preds = %122
  %141 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %142 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %145 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %140
  %149 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %150 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %153 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp slt i64 %151, %154
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 -1, i32 1
  store i32 %157, i32* %3, align 4
  br label %181

158:                                              ; preds = %140
  %159 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %160 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %163 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %168 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %9, align 8
  %171 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp slt i64 %169, %172
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 -1, i32 1
  store i32 %175, i32* %3, align 4
  br label %181

176:                                              ; preds = %158
  br label %177

177:                                              ; preds = %176, %74
  %178 = load i32, i32* %6, align 4
  %179 = add i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %28

180:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %166, %148, %130, %112, %94, %84, %64, %17
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @strcmp(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
