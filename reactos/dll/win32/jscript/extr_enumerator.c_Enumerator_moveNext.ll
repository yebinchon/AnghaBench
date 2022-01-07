; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_Enumerator_moveNext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_enumerator.c_Enumerator_moveNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_ENUMERATOR_EXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @Enumerator_moveNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Enumerator_moveNext(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* @S_OK, align 4
  store i32 %16, i32* %15, align 4
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.TYPE_4__* @enumerator_this(i32* %18)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @JS_E_ENUMERATOR_EXPECTED, align 4
  %24 = call i32 @throw_type_error(i32* %22, i32 %23, i32* null)
  store i32 %24, i32* %7, align 4
  br label %47

25:                                               ; preds = %6
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %32 = call i32 @enumvar_get_next_item(%struct.TYPE_4__* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %7, align 4
  br label %47

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 (...) @jsval_undefined()
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %36, %21
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local %struct.TYPE_4__* @enumerator_this(i32*) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @enumvar_get_next_item(%struct.TYPE_4__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_undefined(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
