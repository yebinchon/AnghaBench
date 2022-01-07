; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_memberid_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_memberid_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@S_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@OP_memberid = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_str = common dso_local global i32 0, align 4
@DEFAULT_UNREACHABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_8__*, i32)* @compile_memberid_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_memberid_expression(i32* %0, %struct.TYPE_8__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @S_OK, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %96 [
    i32 129, label %17
    i32 130, label %26
    i32 128, label %57
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = bitcast %struct.TYPE_8__* %18 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @emit_identifier_ref(i32* %20, i32 %23, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %96

26:                                               ; preds = %3
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = bitcast %struct.TYPE_8__* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %10, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @compile_expression(i32* %29, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @FAILED(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %98

40:                                               ; preds = %26
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @compile_expression(i32* %41, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @FAILED(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %98

52:                                               ; preds = %40
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @OP_memberid, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @push_instr_uint(i32* %53, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  br label %96

57:                                               ; preds = %3
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = bitcast %struct.TYPE_8__* %58 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %11, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @compile_expression(i32* %60, i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @FAILED(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %98

71:                                               ; preds = %57
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @compiler_alloc_string(i32* %72, i32 %75)
  store i32* %76, i32** %12, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %80, i32* %4, align 4
  br label %98

81:                                               ; preds = %71
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* @OP_str, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @push_instr_str(i32* %82, i32 %83, i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @FAILED(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %98

91:                                               ; preds = %81
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @OP_memberid, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @push_instr_uint(i32* %92, i32 %93, i32 %94)
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %3, %91, %52, %17
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %89, %79, %69, %50, %38
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @emit_identifier_ref(i32*, i32, i32) #1

declare dso_local i32 @compile_expression(i32*, i32, i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @push_instr_uint(i32*, i32, i32) #1

declare dso_local i32* @compiler_alloc_string(i32*, i32) #1

declare dso_local i32 @push_instr_str(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
