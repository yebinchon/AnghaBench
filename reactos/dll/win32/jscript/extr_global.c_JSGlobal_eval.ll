; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_eval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { i32 }

@EXEC_EVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"parsing %s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"parse (%s) failed: %08x\0A\00", align 1
@EXEC_GLOBAL = common dso_local global i32 0, align 4
@DISPATCH_JSCRIPT_CALLEREXECSSOURCE = common dso_local global i32 0, align 4
@EXEC_RETURN_TO_INTERP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JSGlobal_eval(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %14, align 8
  %22 = load i32, i32* @EXEC_EVAL, align 4
  store i32 %22, i32* %15, align 4
  %23 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %6
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 (...) @jsval_undefined()
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @S_OK, align 4
  store i32 %33, i32* %7, align 4
  br label %149

34:                                               ; preds = %6
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @is_string(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %13, align 8
  %48 = call i32 @jsval_copy(i32 %46, i32* %47)
  store i32 %48, i32* %7, align 4
  br label %149

49:                                               ; preds = %40
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %7, align 4
  br label %149

51:                                               ; preds = %34
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @get_string(i32 %54)
  %56 = call i32* @jsstr_flatten(i32 %55)
  store i32* %56, i32** %17, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %60, i32* %7, align 4
  br label %149

61:                                               ; preds = %51
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @debugstr_jsval(i32 %64)
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = load i32*, i32** %17, align 8
  %69 = load i32, i32* @TRUE, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = call i32 @compile_script(%struct.TYPE_11__* %67, i32* %68, i32* null, i32* null, i32 %69, i32 %70, %struct.TYPE_13__** %16)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = call i64 @FAILED(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %61
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @debugstr_jsval(i32 %78)
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @throw_syntax_error(%struct.TYPE_11__* %82, i32 %83, i32* null)
  store i32 %84, i32* %7, align 4
  br label %149

85:                                               ; preds = %61
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @EXEC_GLOBAL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88, %85
  %96 = load i32, i32* @EXEC_GLOBAL, align 4
  %97 = load i32, i32* %15, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @DISPATCH_JSCRIPT_CALLEREXECSSOURCE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @EXEC_RETURN_TO_INTERP, align 4
  %106 = load i32, i32* %15, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %104, %99
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = load i32, i32* %15, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %115 = icmp ne %struct.TYPE_12__* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  br label %121

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32* [ %119, %116 ], [ null, %120 ]
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %124 = icmp ne %struct.TYPE_12__* %123, null
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  br label %130

129:                                              ; preds = %121
  br label %130

130:                                              ; preds = %129, %125
  %131 = phi i32* [ %128, %125 ], [ null, %129 ]
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %133 = icmp ne %struct.TYPE_12__* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  br label %142

138:                                              ; preds = %130
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  br label %142

142:                                              ; preds = %138, %134
  %143 = phi i32 [ %137, %134 ], [ %141, %138 ]
  %144 = load i32*, i32** %13, align 8
  %145 = call i32 @exec_source(%struct.TYPE_11__* %109, i32 %110, %struct.TYPE_13__* %111, i32* %113, i32* %122, i32* %131, i32* null, i32 %143, i32 0, i32* null, i32* %144)
  store i32 %145, i32* %18, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = call i32 @release_bytecode(%struct.TYPE_13__* %146)
  %148 = load i32, i32* %18, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %142, %75, %59, %49, %43, %32
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i32 @is_string(i32) #1

declare dso_local i32 @jsval_copy(i32, i32*) #1

declare dso_local i32* @jsstr_flatten(i32) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local i32 @compile_script(%struct.TYPE_11__*, i32*, i32*, i32*, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32, i32) #1

declare dso_local i32 @throw_syntax_error(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @exec_source(%struct.TYPE_11__*, i32, %struct.TYPE_13__*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @release_bytecode(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
