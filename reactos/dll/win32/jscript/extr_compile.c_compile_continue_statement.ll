; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_continue_statement.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_continue_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }

@.str = private unnamed_addr constant [17 x i8] c"Label not found\0A\00", align 1
@JS_E_LABEL_NOT_FOUND = common dso_local global i32 0, align 4
@STAT_LABEL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Label is not a loop\0A\00", align 1
@JS_E_INVALID_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"continue outside loop\0A\00", align 1
@OP_jmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*)* @compile_continue_statement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_continue_statement(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %88

14:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  br label %18

18:                                               ; preds = %46, %14
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %18
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %6, align 8
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = icmp ne %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @wcscmp(i32 %38, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %50

45:                                               ; preds = %33, %28
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %9, align 8
  br label %18

50:                                               ; preds = %44, %18
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = icmp ne %struct.TYPE_14__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @JS_E_LABEL_NOT_FOUND, align 4
  store i32 %55, i32* %3, align 4
  br label %129

56:                                               ; preds = %50
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %8, align 8
  br label %62

62:                                               ; preds = %69, %56
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @STAT_LABEL, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %71 = bitcast %struct.TYPE_13__* %70 to %struct.TYPE_15__*
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %8, align 8
  br label %62

74:                                               ; preds = %62
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @is_loop_statement(i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = call i32 @WARN(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @JS_E_INVALID_CONTINUE, align 4
  store i32 %82, i32* %3, align 4
  br label %129

83:                                               ; preds = %74
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = icmp ne %struct.TYPE_14__* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  br label %113

88:                                               ; preds = %2
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %6, align 8
  br label %92

92:                                               ; preds = %102, %88
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = icmp ne %struct.TYPE_14__* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %106

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %104, align 8
  store %struct.TYPE_14__* %105, %struct.TYPE_14__** %6, align 8
  br label %92

106:                                              ; preds = %100, %92
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = icmp ne %struct.TYPE_14__* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = call i32 @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @JS_E_INVALID_CONTINUE, align 4
  store i32 %111, i32* %3, align 4
  br label %129

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %83
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %116 = call i32 @pop_to_stat(%struct.TYPE_16__* %114, %struct.TYPE_14__* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @FAILED(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %129

122:                                              ; preds = %113
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = load i32, i32* @OP_jmp, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @push_instr_uint(%struct.TYPE_16__* %123, i32 %124, i64 %127)
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %120, %109, %80, %53
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @wcscmp(i32, i64) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @is_loop_statement(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pop_to_stat(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @push_instr_uint(%struct.TYPE_16__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
