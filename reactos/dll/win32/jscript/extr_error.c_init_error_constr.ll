; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_init_error_constr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_error.c_init_error_constr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@init_error_constr.ErrorW = internal constant [6 x i8] c"Error\00", align 1
@init_error_constr.EvalErrorW = internal constant [10 x i8] c"EvalError\00", align 1
@init_error_constr.RangeErrorW = internal constant [11 x i8] c"RangeError\00", align 1
@init_error_constr.ReferenceErrorW = internal constant [15 x i8] c"ReferenceError\00", align 1
@init_error_constr.RegExpErrorW = internal constant [12 x i8] c"RegExpError\00", align 1
@init_error_constr.SyntaxErrorW = internal constant [12 x i8] c"SyntaxError\00", align 1
@init_error_constr.TypeErrorW = internal constant [10 x i8] c"TypeError\00", align 1
@init_error_constr.URIErrorW = internal constant [9 x i8] c"URIError\00", align 1
@init_error_constr.names = internal global [8 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @init_error_constr.ErrorW, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @init_error_constr.EvalErrorW, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @init_error_constr.RangeErrorW, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @init_error_constr.ReferenceErrorW, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @init_error_constr.RegExpErrorW, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @init_error_constr.SyntaxErrorW, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @init_error_constr.TypeErrorW, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @init_error_constr.URIErrorW, i32 0, i32 0)], align 16
@init_error_constr.constr_val = internal global [8 x i32] [i32 135, i32 134, i32 133, i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@nameW = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@PROPF_CONSTR = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_error_constr(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [8 x i32**], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = getelementptr inbounds [8 x i32**], [8 x i32**]* %6, i64 0, i64 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  store i32** %13, i32*** %11, align 8
  %14 = getelementptr inbounds i32**, i32*** %11, i64 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  store i32** %16, i32*** %14, align 8
  %17 = getelementptr inbounds i32**, i32*** %14, i64 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 5
  store i32** %19, i32*** %17, align 8
  %20 = getelementptr inbounds i32**, i32*** %17, i64 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  store i32** %22, i32*** %20, align 8
  %23 = getelementptr inbounds i32**, i32*** %20, i64 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  store i32** %25, i32*** %23, align 8
  %26 = getelementptr inbounds i32**, i32*** %23, i64 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  store i32** %28, i32*** %26, align 8
  %29 = getelementptr inbounds i32**, i32*** %26, i64 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i32** %31, i32*** %29, align 8
  %32 = getelementptr inbounds i32**, i32*** %29, i64 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32** %34, i32*** %32, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %107, %2
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @init_error_constr.names, i64 0, i64 0))
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %110

39:                                               ; preds = %35
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32* [ %44, %43 ], [ null, %45 ]
  %48 = call i32 @alloc_error(%struct.TYPE_5__* %40, i32* %47, i32* null, i32** %7)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @FAILED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  br label %112

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i8*], [8 x i8*]* @init_error_constr.names, i64 0, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32* @jsstr_alloc(i8* %58)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @jsdisp_release(i32* %63)
  %65 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %65, i32* %3, align 4
  br label %112

66:                                               ; preds = %54
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @nameW, align 4
  %69 = load i32, i32* @PROPF_WRITABLE, align 4
  %70 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %71 = or i32 %69, %70
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @jsval_string(i32* %72)
  %74 = call i32 @jsdisp_define_data_property(i32* %67, i32 %68, i32 %71, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @jsstr_release(i32* %75)
  %77 = load i32, i32* %10, align 4
  %78 = call i64 @SUCCEEDED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %66
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* @init_error_constr.constr_val, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i8*], [8 x i8*]* @init_error_constr.names, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @PROPF_CONSTR, align 4
  %91 = or i32 %90, 1
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [8 x i32**], [8 x i32**]* %6, i64 0, i64 %94
  %96 = load i32**, i32*** %95, align 8
  %97 = call i32 @create_builtin_constructor(%struct.TYPE_5__* %81, i32 %85, i8* %89, i32* null, i32 %91, i32* %92, i32** %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %80, %66
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @jsdisp_release(i32* %99)
  %101 = load i32, i32* %10, align 4
  %102 = call i64 @FAILED(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %112

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %35

110:                                              ; preds = %35
  %111 = load i32, i32* @S_OK, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %110, %104, %62, %52
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @alloc_error(%struct.TYPE_5__*, i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32* @jsstr_alloc(i8*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsdisp_define_data_property(i32*, i32, i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @create_builtin_constructor(%struct.TYPE_5__*, i32, i8*, i32*, i32, i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
