; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_find_builtin_varyings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_vs_find_builtin_varyings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i64, i64*, i64*, i64, i64, i64, i64 }
%struct.bwriter_shader = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [48 x i8] c"dcl_position%u not supported in sm 1/2 shaders\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"o%u is oPos\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"dcl_color%u not supported in sm 1/2 shaders\0A\00", align 1
@BWRITERSP_WRITEMASK_ALL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"Only WRITEMASK_ALL is supported on color in sm 1/2\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"o%u is oD%u\0A\00", align 1
@BWRITERSP_WRITEMASK_0 = common dso_local global i64 0, align 8
@BWRITERSP_WRITEMASK_1 = common dso_local global i64 0, align 8
@BWRITERSP_WRITEMASK_2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [71 x i8] c"Partial writemasks not supported on texture coordinates in sm 1 and 2\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"o%u is oT%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"dcl_psize%u not supported in sm 1/2 shaders\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"o%u writemask 0x%08x is oPts\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"dcl_fog%u not supported in sm 1 shaders\0A\00", align 1
@BWRITERSP_WRITEMASK_3 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"Unsupported fog writemask\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"o%u writemask 0x%08x is oFog\0A\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"Varying type %u is not supported in shader model 1.x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_writer*, %struct.bwriter_shader*)* @vs_find_builtin_varyings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_find_builtin_varyings(%struct.bc_writer* %0, %struct.bwriter_shader* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bc_writer*, align 8
  %5 = alloca %struct.bwriter_shader*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.bc_writer* %0, %struct.bc_writer** %4, align 8
  store %struct.bwriter_shader* %1, %struct.bwriter_shader** %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %194, %2
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %14 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %197

17:                                               ; preds = %11
  %18 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %19 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %194

27:                                               ; preds = %17
  %28 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %29 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %36 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %43 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %9, align 8
  %49 = load %struct.bwriter_shader*, %struct.bwriter_shader** %5, align 8
  %50 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %7, align 8
  switch i64 %56, label %189 [
    i64 131, label %57
    i64 130, label %57
    i64 133, label %70
    i64 128, label %94
    i64 129, label %136
    i64 132, label %153
  ]

57:                                               ; preds = %27, %27
  %58 = load i64, i64* %8, align 8
  %59 = icmp ugt i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  %62 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %61)
  %63 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %63, i32* %3, align 4
  br label %199

64:                                               ; preds = %57
  %65 = load i64, i64* %10, align 8
  %66 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %69 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %193

70:                                               ; preds = %27
  %71 = load i64, i64* %8, align 8
  %72 = icmp ugt i64 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i64, i64* %8, align 8
  %75 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %76, i32* %3, align 4
  br label %199

77:                                               ; preds = %70
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @BWRITERSP_WRITEMASK_ALL, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %83, i32* %3, align 4
  br label %199

84:                                               ; preds = %77
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i64 %85, i64 %86)
  %88 = load i64, i64* %10, align 8
  %89 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %90 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %88, i64* %93, align 8
  br label %193

94:                                               ; preds = %27
  %95 = load i64, i64* %8, align 8
  %96 = icmp uge i64 %95, 8
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %100, i32* %3, align 4
  br label %199

101:                                              ; preds = %94
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* @BWRITERSP_WRITEMASK_0, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @BWRITERSP_WRITEMASK_0, align 8
  %108 = load i64, i64* @BWRITERSP_WRITEMASK_1, align 8
  %109 = or i64 %107, %108
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @BWRITERSP_WRITEMASK_0, align 8
  %114 = load i64, i64* @BWRITERSP_WRITEMASK_1, align 8
  %115 = or i64 %113, %114
  %116 = load i64, i64* @BWRITERSP_WRITEMASK_2, align 8
  %117 = or i64 %115, %116
  %118 = icmp ne i64 %112, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %111
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* @BWRITERSP_WRITEMASK_ALL, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %125, i32* %3, align 4
  br label %199

126:                                              ; preds = %119, %111, %105, %101
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %8, align 8
  %129 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64 %127, i64 %128)
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %132 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %131, i32 0, i32 2
  %133 = load i64*, i64** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %130, i64* %135, align 8
  br label %193

136:                                              ; preds = %27
  %137 = load i64, i64* %8, align 8
  %138 = icmp ugt i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i64, i64* %8, align 8
  %141 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %140)
  %142 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %142, i32* %3, align 4
  br label %199

143:                                              ; preds = %136
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %9, align 8
  %146 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i64 %144, i64 %145)
  %147 = load i64, i64* %10, align 8
  %148 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %149 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %152 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %151, i32 0, i32 4
  store i64 %150, i64* %152, align 8
  br label %193

153:                                              ; preds = %27
  %154 = load i64, i64* %8, align 8
  %155 = icmp ugt i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  %157 = load i64, i64* %8, align 8
  %158 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i64 %157)
  %159 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %159, i32* %3, align 4
  br label %199

160:                                              ; preds = %153
  %161 = load i64, i64* %9, align 8
  %162 = load i64, i64* @BWRITERSP_WRITEMASK_0, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %160
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* @BWRITERSP_WRITEMASK_1, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %164
  %169 = load i64, i64* %9, align 8
  %170 = load i64, i64* @BWRITERSP_WRITEMASK_2, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i64, i64* %9, align 8
  %174 = load i64, i64* @BWRITERSP_WRITEMASK_3, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %178 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %178, i32* %3, align 4
  br label %199

179:                                              ; preds = %172, %168, %164, %160
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* %9, align 8
  %182 = call i32 (i8*, i64, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i64 %180, i64 %181)
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %185 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %184, i32 0, i32 5
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load %struct.bc_writer*, %struct.bc_writer** %4, align 8
  %188 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %187, i32 0, i32 6
  store i64 %186, i64* %188, align 8
  br label %193

189:                                              ; preds = %27
  %190 = load i64, i64* %7, align 8
  %191 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i64 %190)
  %192 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %192, i32* %3, align 4
  br label %199

193:                                              ; preds = %179, %143, %126, %84, %64
  br label %194

194:                                              ; preds = %193, %26
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %6, align 8
  br label %11

197:                                              ; preds = %11
  %198 = load i32, i32* @S_OK, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %197, %189, %176, %156, %139, %123, %97, %81, %73, %60
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @TRACE(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
