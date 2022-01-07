; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_find_ps_builtin_semantics.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_find_ps_builtin_semantics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_writer = type { i32*, i32* }
%struct.bwriter_shader = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"dcl_color%u not supported in sm 1 shaders\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Only WRITEMASK_ALL is supported on color in sm 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"v%u is v%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"dcl_texcoord%u not supported in this shader version\0A\00", align 1
@BWRITERSP_WRITEMASK_0 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_1 = common dso_local global i32 0, align 4
@BWRITERSP_WRITEMASK_2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"Partial writemasks not supported on texture coordinates in sm 1 and 2\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"v%u is t%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Varying type %u is not supported in shader model 1.x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bc_writer*, %struct.bwriter_shader*, i32)* @find_ps_builtin_semantics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ps_builtin_semantics(%struct.bc_writer* %0, %struct.bwriter_shader* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bc_writer*, align 8
  %6 = alloca %struct.bwriter_shader*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bc_writer* %0, %struct.bc_writer** %5, align 8
  store %struct.bwriter_shader* %1, %struct.bwriter_shader** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %14 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 -1, i32* %16, align 4
  %17 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %18 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %31, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %26 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %21

34:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %161, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %38 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %164

41:                                               ; preds = %35
  %42 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %43 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %161

52:                                               ; preds = %41
  %53 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %54 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  %61 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %62 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %70 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %11, align 4
  %77 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %78 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  switch i32 %85, label %156 [
    i32 129, label %86
    i32 128, label %111
  ]

86:                                               ; preds = %52
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %92, i32* %4, align 4
  br label %166

93:                                               ; preds = %86
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %99, i32* %4, align 4
  br label %166

100:                                              ; preds = %93
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %106 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  br label %160

111:                                              ; preds = %52
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %118, i32* %4, align 4
  br label %166

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* @BWRITERSP_WRITEMASK_0, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %143

123:                                              ; preds = %119
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @BWRITERSP_WRITEMASK_0, align 4
  %126 = load i32, i32* @BWRITERSP_WRITEMASK_1, align 4
  %127 = or i32 %125, %126
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @BWRITERSP_WRITEMASK_0, align 4
  %132 = load i32, i32* @BWRITERSP_WRITEMASK_1, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @BWRITERSP_WRITEMASK_2, align 4
  %135 = or i32 %133, %134
  %136 = icmp ne i32 %130, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  br label %145

143:                                              ; preds = %137, %129, %123, %119
  %144 = load i32, i32* @BWRITERSP_WRITEMASK_ALL, align 4
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.bc_writer*, %struct.bc_writer** %5, align 8
  %151 = getelementptr inbounds %struct.bc_writer, %struct.bc_writer* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  br label %160

156:                                              ; preds = %52
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %159, i32* %4, align 4
  br label %166

160:                                              ; preds = %145, %100
  br label %161

161:                                              ; preds = %160, %51
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %35

164:                                              ; preds = %35
  %165 = load i32, i32* @S_OK, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %156, %115, %97, %89
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
