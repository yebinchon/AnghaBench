; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_getPrototypeOf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_Object_getPrototypeOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"invalid arguments\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Non-JS object\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Object_getPrototypeOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Object_getPrototypeOf(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %6
  %18 = load i32*, i32** %12, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_object_instance(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %17, %6
  %24 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %25, i32* %7, align 4
  br label %63

26:                                               ; preds = %17
  %27 = load i32*, i32** %12, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @debugstr_jsval(i32 %29)
  %31 = call i32 @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_object(i32 %34)
  %36 = call %struct.TYPE_3__* @to_jsdisp(i32 %35)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %14, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = call i32 @FIXME(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %41, i32* %7, align 4
  br label %63

42:                                               ; preds = %26
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @jsdisp_addref(i64 %53)
  %55 = call i32 @jsval_obj(i32 %54)
  br label %58

56:                                               ; preds = %45
  %57 = call i32 (...) @jsval_null()
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i32 [ %55, %50 ], [ %57, %56 ]
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %42
  %62 = load i32, i32* @S_OK, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %39, %23
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

declare dso_local %struct.TYPE_3__* @to_jsdisp(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsval_obj(i32) #1

declare dso_local i32 @jsdisp_addref(i64) #1

declare dso_local i32 @jsval_null(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
