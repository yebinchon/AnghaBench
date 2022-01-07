; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_create_array_constr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_create_array_constr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@create_array_constr.ArrayW = internal constant [6 x i8] c"Array\00", align 1
@ArrayConstr_value = common dso_local global i32 0, align 4
@ArrayConstr_info = common dso_local global i32 0, align 4
@PROPF_CONSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_array_constr(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @alloc_array(i32* %10, i32* %11, %struct.TYPE_3__** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ArrayConstr_value, align 4
  %21 = load i32, i32* @PROPF_CONSTR, align 4
  %22 = or i32 %21, 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32**, i32*** %7, align 8
  %26 = call i32 @create_builtin_constructor(i32* %19, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @create_array_constr.ArrayW, i64 0, i64 0), i32* @ArrayConstr_info, i32 %22, i32* %24, i32** %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @jsdisp_release(i32* %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %18, %16
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @alloc_array(i32*, i32*, %struct.TYPE_3__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @create_builtin_constructor(i32*, i32, i8*, i32*, i32, i32*, i32**) #1

declare dso_local i32 @jsdisp_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
