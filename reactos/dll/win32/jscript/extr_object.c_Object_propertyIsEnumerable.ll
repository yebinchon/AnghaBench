; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_propertyIsEnumerable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_propertyIsEnumerable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"argc %d not supported\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Host object this\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_8__*, i32, i32, i32*, i32*)* @Object_propertyIsEnumerable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Object_propertyIsEnumerable(i32* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* @E_NOTIMPL, align 8
  store i64 %24, i64* %7, align 8
  br label %82

25:                                               ; preds = %6
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %27 = call i32 @is_jsdisp(%struct.TYPE_8__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i64, i64* @E_FAIL, align 8
  store i64 %31, i64* %7, align 8
  br label %82

32:                                               ; preds = %25
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @to_flat_string(i32* %33, i32 %36, i32** %16, i32** %15)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = call i64 @FAILED(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i64, i64* %17, align 8
  store i64 %42, i64* %7, align 8
  br label %82

43:                                               ; preds = %32
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i64 @jsdisp_get_own_property(i32 %47, i32* %48, i32 %49, %struct.TYPE_9__* %14)
  store i64 %50, i64* %17, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = call i32 @jsstr_release(i32* %51)
  %53 = load i64, i64* %17, align 8
  %54 = call i64 @FAILED(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = load i64, i64* %17, align 8
  %58 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i64, i64* %17, align 8
  store i64 %61, i64* %7, align 8
  br label %82

62:                                               ; preds = %56, %43
  %63 = load i32*, i32** %13, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i64, i64* %17, align 8
  %67 = load i64, i64* @S_OK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i1 [ false, %65 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @jsval_bool(i32 %77)
  %79 = load i32*, i32** %13, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %62
  %81 = load i64, i64* @S_OK, align 8
  store i64 %81, i64* %7, align 8
  br label %82

82:                                               ; preds = %80, %60, %41, %29, %21
  %83 = load i64, i64* %7, align 8
  ret i64 %83
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @is_jsdisp(%struct.TYPE_8__*) #1

declare dso_local i64 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @jsdisp_get_own_property(i32, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @jsval_bool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
