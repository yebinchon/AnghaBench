; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objtuple.c_mp_obj_tuple_print.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objtuple.c_mp_obj_tuple_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@MICROPY_PY_UJSON = common dso_local global i64 0, align 8
@PRINT_JSON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@PRINT_REPR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c")\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_obj_tuple_print(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %7, align 8
  %11 = load i64, i64* @MICROPY_PY_UJSON, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PRINT_JSON, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @mp_print_str(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %24

20:                                               ; preds = %13, %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @mp_print_str(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* @PRINT_REPR, align 8
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %20, %17
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %47, %24
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @mp_print_str(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @mp_obj_print_helper(i32* %38, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %25

50:                                               ; preds = %25
  %51 = load i64, i64* @MICROPY_PY_UJSON, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PRINT_JSON, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @mp_print_str(i32* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %71

60:                                               ; preds = %53, %50
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @mp_print_str(i32* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @mp_print_str(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %57
  ret void
}

declare dso_local %struct.TYPE_3__* @MP_OBJ_TO_PTR(i32) #1

declare dso_local i32 @mp_print_str(i32*, i8*) #1

declare dso_local i32 @mp_obj_print_helper(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
