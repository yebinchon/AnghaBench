; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_src_param.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_dump_src_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }
%struct.wined3d_shader_src_param = type { i32, i32, i32 }
%struct.wined3d_shader_version = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"1-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"abs(\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_bias\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_bx2\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"_x2\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"_dz\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"_dw\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"_unknown_modifier(%#x)\00", align 1
@WINED3DSP_NOSWIZZLE = common dso_local global i32 0, align 4
@shader_dump_src_param.swizzle_chars = internal constant [5 x i8] c"xyzw\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c".%c\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c".%c%c%c%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, %struct.wined3d_shader_src_param*, %struct.wined3d_shader_version*)* @shader_dump_src_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_dump_src_param(%struct.wined3d_string_buffer* %0, %struct.wined3d_shader_src_param* %1, %struct.wined3d_shader_version* %2) #0 {
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca %struct.wined3d_shader_src_param*, align 8
  %6 = alloca %struct.wined3d_shader_version*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store %struct.wined3d_shader_src_param* %1, %struct.wined3d_shader_src_param** %5, align 8
  store %struct.wined3d_shader_version* %2, %struct.wined3d_shader_version** %6, align 8
  %13 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %5, align 8
  %14 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %5, align 8
  %17 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 134
  br i1 %20, label %33, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 138
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 130
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 128
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 140
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %24, %21, %3
  %34 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %35 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %50

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 137
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %41 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %49

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 132
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %47 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %39
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 141
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 140
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %50
  %57 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %58 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %61 = load %struct.wined3d_shader_src_param*, %struct.wined3d_shader_src_param** %5, align 8
  %62 = getelementptr inbounds %struct.wined3d_shader_src_param, %struct.wined3d_shader_src_param* %61, i32 0, i32 2
  %63 = load %struct.wined3d_shader_version*, %struct.wined3d_shader_version** %6, align 8
  %64 = call i32 @shader_dump_register(%struct.wined3d_string_buffer* %60, i32* %62, %struct.wined3d_shader_version* %63)
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %100 [
    i32 133, label %66
    i32 134, label %67
    i32 132, label %68
    i32 139, label %69
    i32 138, label %72
    i32 131, label %75
    i32 130, label %78
    i32 137, label %81
    i32 129, label %82
    i32 128, label %85
    i32 135, label %88
    i32 136, label %91
    i32 140, label %94
    i32 141, label %97
  ]

66:                                               ; preds = %59
  br label %104

67:                                               ; preds = %59
  br label %104

68:                                               ; preds = %59
  br label %104

69:                                               ; preds = %59
  %70 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %71 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %104

72:                                               ; preds = %59
  %73 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %74 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %104

75:                                               ; preds = %59
  %76 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %77 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %104

78:                                               ; preds = %59
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %80 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %104

81:                                               ; preds = %59
  br label %104

82:                                               ; preds = %59
  %83 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %84 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %104

85:                                               ; preds = %59
  %86 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %87 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %104

88:                                               ; preds = %59
  %89 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %90 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %104

91:                                               ; preds = %59
  %92 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %93 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  br label %104

94:                                               ; preds = %59
  %95 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %96 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %104

97:                                               ; preds = %59
  %98 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %99 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %104

100:                                              ; preds = %59
  %101 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %101, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %100, %97, %94, %91, %88, %85, %82, %81, %78, %75, %72, %69, %68, %67, %66
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @WINED3DSP_NOSWIZZLE, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %163

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = and i32 %109, 3
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 2
  %113 = and i32 %112, 3
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %8, align 4
  %115 = ashr i32 %114, 4
  %116 = and i32 %115, 3
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = ashr i32 %117, 6
  %119 = and i32 %118, 3
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %108
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [5 x i8], [5 x i8]* @shader_dump_src_param.swizzle_chars, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %137)
  br label %162

139:                                              ; preds = %127, %123, %108
  %140 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [5 x i8], [5 x i8]* @shader_dump_src_param.swizzle_chars, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [5 x i8], [5 x i8]* @shader_dump_src_param.swizzle_chars, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [5 x i8], [5 x i8]* @shader_dump_src_param.swizzle_chars, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [5 x i8], [5 x i8]* @shader_dump_src_param.swizzle_chars, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = call i32 (%struct.wined3d_string_buffer*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %145, i32 %150, i32 %155, i32 %160)
  br label %162

162:                                              ; preds = %139, %131
  br label %163

163:                                              ; preds = %162, %104
  ret void
}

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, ...) #1

declare dso_local i32 @shader_dump_register(%struct.wined3d_string_buffer*, i32*, %struct.wined3d_shader_version*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
