; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_ctrl.c_ENGINE_ctrl_cmd_string.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_ctrl.c_ENGINE_ctrl_cmd_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@ENGINE_F_ENGINE_CTRL_CMD_STRING = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@ENGINE_CTRL_GET_CMD_FROM_NAME = common dso_local global i32 0, align 4
@ENGINE_R_INVALID_CMD_NAME = common dso_local global i32 0, align 4
@ENGINE_R_CMD_NOT_EXECUTABLE = common dso_local global i32 0, align 4
@ENGINE_CTRL_GET_CMD_FLAGS = common dso_local global i32 0, align 4
@ENGINE_R_INTERNAL_LIST_ERROR = common dso_local global i32 0, align 4
@ENGINE_CMD_FLAG_NO_INPUT = common dso_local global i32 0, align 4
@ENGINE_R_COMMAND_TAKES_NO_INPUT = common dso_local global i32 0, align 4
@ENGINE_R_COMMAND_TAKES_INPUT = common dso_local global i32 0, align 4
@ENGINE_CMD_FLAG_STRING = common dso_local global i32 0, align 4
@ENGINE_CMD_FLAG_NUMERIC = common dso_local global i32 0, align 4
@ENGINE_R_ARGUMENT_IS_NOT_A_NUMBER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ENGINE_ctrl_cmd_string(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = icmp eq %struct.TYPE_5__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %21 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %22 = call i32 @ENGINEerr(i32 %20, i32 %21)
  store i32 0, i32* %5, align 4
  br label %136

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* @ENGINE_CTRL_GET_CMD_FROM_NAME, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @ENGINE_ctrl(%struct.TYPE_5__* %29, i32 %30, i64 0, i8* %31, i32* null)
  store i32 %32, i32* %10, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %5, align 4
  br label %136

39:                                               ; preds = %34
  %40 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %41 = load i32, i32* @ENGINE_R_INVALID_CMD_NAME, align 4
  %42 = call i32 @ENGINEerr(i32 %40, i32 %41)
  store i32 0, i32* %5, align 4
  br label %136

43:                                               ; preds = %28
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @ENGINE_cmd_is_executable(%struct.TYPE_5__* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %50 = load i32, i32* @ENGINE_R_CMD_NOT_EXECUTABLE, align 4
  %51 = call i32 @ENGINEerr(i32 %49, i32 %50)
  store i32 0, i32* %5, align 4
  br label %136

52:                                               ; preds = %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = load i32, i32* @ENGINE_CTRL_GET_CMD_FLAGS, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 @ENGINE_ctrl(%struct.TYPE_5__* %53, i32 %54, i64 %56, i8* null, i32* null)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %62 = load i32, i32* @ENGINE_R_INTERNAL_LIST_ERROR, align 4
  %63 = call i32 @ENGINEerr(i32 %61, i32 %62)
  store i32 0, i32* %5, align 4
  br label %136

64:                                               ; preds = %52
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @ENGINE_CMD_FLAG_NO_INPUT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load i8*, i8** %8, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %74 = load i32, i32* @ENGINE_R_COMMAND_TAKES_NO_INPUT, align 4
  %75 = call i32 @ENGINEerr(i32 %73, i32 %74)
  store i32 0, i32* %5, align 4
  br label %136

76:                                               ; preds = %69
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @ENGINE_ctrl(%struct.TYPE_5__* %77, i32 %78, i64 0, i8* %79, i32* null)
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %136

83:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %136

84:                                               ; preds = %64
  %85 = load i8*, i8** %8, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %89 = load i32, i32* @ENGINE_R_COMMAND_TAKES_INPUT, align 4
  %90 = call i32 @ENGINEerr(i32 %88, i32 %89)
  store i32 0, i32* %5, align 4
  br label %136

91:                                               ; preds = %84
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @ENGINE_CMD_FLAG_STRING, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @ENGINE_ctrl(%struct.TYPE_5__* %97, i32 %98, i64 0, i8* %99, i32* null)
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 1, i32* %5, align 4
  br label %136

103:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %136

104:                                              ; preds = %91
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @ENGINE_CMD_FLAG_NUMERIC, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %111 = load i32, i32* @ENGINE_R_INTERNAL_LIST_ERROR, align 4
  %112 = call i32 @ENGINEerr(i32 %110, i32 %111)
  store i32 0, i32* %5, align 4
  br label %136

113:                                              ; preds = %104
  %114 = load i8*, i8** %8, align 8
  %115 = call i64 @strtol(i8* %114, i8** %13, i32 10)
  store i64 %115, i64* %12, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = load i8*, i8** %13, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119, %113
  %125 = load i32, i32* @ENGINE_F_ENGINE_CTRL_CMD_STRING, align 4
  %126 = load i32, i32* @ENGINE_R_ARGUMENT_IS_NOT_A_NUMBER, align 4
  %127 = call i32 @ENGINEerr(i32 %125, i32 %126)
  store i32 0, i32* %5, align 4
  br label %136

128:                                              ; preds = %119
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %130 = load i32, i32* %10, align 4
  %131 = load i64, i64* %12, align 8
  %132 = call i32 @ENGINE_ctrl(%struct.TYPE_5__* %129, i32 %130, i64 %131, i8* null, i32* null)
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i32 1, i32* %5, align 4
  br label %136

135:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %134, %124, %109, %103, %102, %87, %83, %82, %72, %60, %48, %39, %37, %19
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @ENGINE_ctrl(%struct.TYPE_5__*, i32, i64, i8*, i32*) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @ENGINE_cmd_is_executable(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
