; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_toString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@Object_toString.formatW = internal constant [12 x i8] c"[object %s]\00", align 1
@Object_toString.arrayW = internal constant [6 x i8] c"Array\00", align 1
@Object_toString.booleanW = internal constant [8 x i8] c"Boolean\00", align 1
@Object_toString.dateW = internal constant [5 x i8] c"Date\00", align 1
@Object_toString.errorW = internal constant [6 x i8] c"Error\00", align 1
@Object_toString.functionW = internal constant [9 x i8] c"Function\00", align 1
@Object_toString.mathW = internal constant [5 x i8] c"Math\00", align 1
@Object_toString.numberW = internal constant [7 x i8] c"Number\00", align 1
@Object_toString.objectW = internal constant [7 x i8] c"Object\00", align 1
@Object_toString.regexpW = internal constant [7 x i8] c"RegExp\00", align 1
@Object_toString.stringW = internal constant [7 x i8] c"String\00", align 1
@Object_toString.names = internal global [16 x i8*] [i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Object_toString.arrayW, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @Object_toString.booleanW, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Object_toString.dateW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.objectW, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @Object_toString.errorW, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @Object_toString.functionW, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Object_toString.mathW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.numberW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.objectW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.regexpW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.stringW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.objectW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.objectW, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.objectW, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JSCLASS_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"jdisp->builtin_info->class = %d\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Object_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Object_toString(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_5__* @get_jsdisp(i32* %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %14, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @Object_toString.objectW, i64 0, i64 0), i8** %15, align 8
  br label %59

24:                                               ; preds = %6
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds [16 x i8*], [16 x i8*]* @Object_toString.names, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [16 x i8*], [16 x i8*]* @Object_toString.names, i64 0, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %15, align 8
  br label %58

41:                                               ; preds = %24
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @JSCLASS_NONE, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @E_FAIL, align 4
  store i32 %57, i32* %7, align 4
  br label %80

58:                                               ; preds = %33
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i8*, i8** %15, align 8
  %64 = call i64 @lstrlenW(i8* %63)
  %65 = add nsw i64 9, %64
  %66 = call i32* @jsstr_alloc_buf(i64 %65, i8** %17)
  store i32* %66, i32** %16, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %70, i32* %7, align 4
  br label %80

71:                                               ; preds = %62
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @swprintf(i8* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @Object_toString.formatW, i64 0, i64 0), i8* %73)
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @jsval_string(i32* %75)
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %59
  %79 = load i32, i32* @S_OK, align 4
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %78, %69, %41
  %81 = load i32, i32* %7, align 4
  ret i32 %81
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_5__* @get_jsdisp(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32* @jsstr_alloc_buf(i64, i8**) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @swprintf(i8*, i8*, i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
