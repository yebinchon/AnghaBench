; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_program_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_gs_program_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_program = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.gs_program*, %struct.gs_program**, %struct.gs_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.gs_device = type { %struct.gs_program*, %struct.TYPE_3__*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [16 x i8] c"glCreateProgram\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"glAttachShader (vertex)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"glAttachShader (pixel)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"glLinkProgram\00", align 1
@GL_LINK_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"glGetProgramiv\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"glDetachShader (vertex)\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"glDetachShader (pixel)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gs_program* @gs_program_create(%struct.gs_device* %0) #0 {
  %2 = alloca %struct.gs_program*, align 8
  %3 = alloca %struct.gs_device*, align 8
  %4 = alloca %struct.gs_program*, align 8
  %5 = alloca i32, align 4
  store %struct.gs_device* %0, %struct.gs_device** %3, align 8
  %6 = call %struct.gs_program* @bzalloc(i32 48)
  store %struct.gs_program* %6, %struct.gs_program** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %8 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %9 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %8, i32 0, i32 5
  store %struct.gs_device* %7, %struct.gs_device** %9, align 8
  %10 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %11 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %14 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %13, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %16 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %19 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %18, i32 0, i32 2
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %19, align 8
  %20 = call i32 (...) @glCreateProgram()
  %21 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %22 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = call i32 @gl_success(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %156

26:                                               ; preds = %1
  %27 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %28 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %31 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @glAttachShader(i32 %29, i32 %34)
  %36 = call i32 @gl_success(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %26
  br label %156

39:                                               ; preds = %26
  %40 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %41 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %44 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @glAttachShader(i32 %42, i32 %47)
  %49 = call i32 @gl_success(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %145

52:                                               ; preds = %39
  %53 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %54 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @glLinkProgram(i32 %55)
  %57 = call i32 @gl_success(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %134

60:                                               ; preds = %52
  %61 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %62 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @GL_LINK_STATUS, align 4
  %65 = call i32 @glGetProgramiv(i32 %63, i32 %64, i32* %5)
  %66 = call i32 @gl_success(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %134

69:                                               ; preds = %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @GL_FALSE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %75 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @print_link_errors(i32 %76)
  br label %134

78:                                               ; preds = %69
  %79 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %80 = call i32 @assign_program_attribs(%struct.gs_program* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  br label %134

83:                                               ; preds = %78
  %84 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %85 = call i32 @assign_program_params(%struct.gs_program* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %134

88:                                               ; preds = %83
  %89 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %90 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %93 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @glDetachShader(i32 %91, i32 %96)
  %98 = call i32 @gl_success(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %100 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %103 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %102, i32 0, i32 2
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @glDetachShader(i32 %101, i32 %106)
  %108 = call i32 @gl_success(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %109 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %110 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %109, i32 0, i32 0
  %111 = load %struct.gs_program*, %struct.gs_program** %110, align 8
  %112 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %113 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %112, i32 0, i32 3
  store %struct.gs_program* %111, %struct.gs_program** %113, align 8
  %114 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %115 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %114, i32 0, i32 0
  %116 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %117 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %116, i32 0, i32 4
  store %struct.gs_program** %115, %struct.gs_program*** %117, align 8
  %118 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %119 = load %struct.gs_device*, %struct.gs_device** %3, align 8
  %120 = getelementptr inbounds %struct.gs_device, %struct.gs_device* %119, i32 0, i32 0
  store %struct.gs_program* %118, %struct.gs_program** %120, align 8
  %121 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %122 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %121, i32 0, i32 3
  %123 = load %struct.gs_program*, %struct.gs_program** %122, align 8
  %124 = icmp ne %struct.gs_program* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %88
  %126 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %127 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %126, i32 0, i32 3
  %128 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %129 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %128, i32 0, i32 3
  %130 = load %struct.gs_program*, %struct.gs_program** %129, align 8
  %131 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %130, i32 0, i32 4
  store %struct.gs_program** %127, %struct.gs_program*** %131, align 8
  br label %132

132:                                              ; preds = %125, %88
  %133 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  store %struct.gs_program* %133, %struct.gs_program** %2, align 8
  br label %159

134:                                              ; preds = %87, %82, %73, %68, %59
  %135 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %136 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %139 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @glDetachShader(i32 %137, i32 %142)
  %144 = call i32 @gl_success(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %145

145:                                              ; preds = %134, %51
  %146 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %147 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %150 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %149, i32 0, i32 0
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @glDetachShader(i32 %148, i32 %153)
  %155 = call i32 @gl_success(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %156

156:                                              ; preds = %145, %38, %25
  %157 = load %struct.gs_program*, %struct.gs_program** %4, align 8
  %158 = call i32 @gs_program_destroy(%struct.gs_program* %157)
  store %struct.gs_program* null, %struct.gs_program** %2, align 8
  br label %159

159:                                              ; preds = %156, %132
  %160 = load %struct.gs_program*, %struct.gs_program** %2, align 8
  ret %struct.gs_program* %160
}

declare dso_local %struct.gs_program* @bzalloc(i32) #1

declare dso_local i32 @glCreateProgram(...) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @glAttachShader(i32, i32) #1

declare dso_local i32 @glLinkProgram(i32) #1

declare dso_local i32 @glGetProgramiv(i32, i32, i32*) #1

declare dso_local i32 @print_link_errors(i32) #1

declare dso_local i32 @assign_program_attribs(%struct.gs_program*) #1

declare dso_local i32 @assign_program_params(%struct.gs_program*) #1

declare dso_local i32 @glDetachShader(i32, i32) #1

declare dso_local i32 @gs_program_destroy(%struct.gs_program*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
