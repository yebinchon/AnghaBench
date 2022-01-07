; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_delete_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_delete_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@OP_delete = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_str = common dso_local global i32 0, align 4
@OP_delete_ident = common dso_local global i32 0, align 4
@compile_delete_expression.fixmeW = internal constant [6 x float] [float 7.000000e+01, float 7.300000e+01, float 8.800000e+01, float 7.700000e+01, float 6.900000e+01, float 0.000000e+00], align 16
@.str = private unnamed_addr constant [49 x i8] c"invalid delete, unimplemented exception message\0A\00", align 1
@OP_throw_type = common dso_local global i32 0, align 4
@JS_E_INVALID_DELETE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*)* @compile_delete_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_delete_expression(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %105 [
    i32 130, label %15
    i32 128, label %51
    i32 129, label %95
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = bitcast %struct.TYPE_11__* %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %7, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @compile_expression(i32* %20, %struct.TYPE_11__* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @FAILED(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %15
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %125

31:                                               ; preds = %15
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @compile_expression(i32* %32, %struct.TYPE_11__* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @FAILED(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %125

43:                                               ; preds = %31
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* @OP_delete, align 4
  %46 = call i32 @push_instr(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %49, i32* %3, align 4
  br label %125

50:                                               ; preds = %43
  br label %123

51:                                               ; preds = %2
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = bitcast %struct.TYPE_11__* %54 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %55, %struct.TYPE_8__** %8, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = call i32 @compile_expression(i32* %56, %struct.TYPE_11__* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @FAILED(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %125

67:                                               ; preds = %51
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32* @compiler_alloc_string(i32* %68, i32 %71)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %76, i32* %3, align 4
  br label %125

77:                                               ; preds = %67
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @OP_str, align 4
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @push_instr_str(i32* %78, i32 %79, i32* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @FAILED(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %125

87:                                               ; preds = %77
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @OP_delete, align 4
  %90 = call i32 @push_instr(i32* %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %93, i32* %3, align 4
  br label %125

94:                                               ; preds = %87
  br label %123

95:                                               ; preds = %2
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @OP_delete_ident, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = bitcast %struct.TYPE_11__* %100 to %struct.TYPE_9__*
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @push_instr_bstr(i32* %96, i32 %97, i32 %103)
  store i32 %104, i32* %3, align 4
  br label %125

105:                                              ; preds = %2
  %106 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i32, i32* @TRUE, align 4
  %112 = call i32 @compile_expression(i32* %107, %struct.TYPE_11__* %110, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @FAILED(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %125

118:                                              ; preds = %105
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @OP_throw_type, align 4
  %121 = load i32, i32* @JS_E_INVALID_DELETE, align 4
  %122 = call i32 @push_instr_uint_str(i32* %119, i32 %120, i32 %121, float* getelementptr inbounds ([6 x float], [6 x float]* @compile_delete_expression.fixmeW, i64 0, i64 0))
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %94, %50
  %124 = load i32, i32* @S_OK, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %118, %116, %95, %92, %85, %75, %65, %48, %41, %29
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @compile_expression(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @push_instr(i32*, i32) #1

declare dso_local i32* @compiler_alloc_string(i32*, i32) #1

declare dso_local i32 @push_instr_str(i32*, i32, i32*) #1

declare dso_local i32 @push_instr_bstr(i32*, i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @push_instr_uint_str(i32*, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
