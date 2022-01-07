; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArrayConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_vbarray.c_VBArrayConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VT_ARRAY = common dso_local global i32 0, align 4
@VT_VARIANT = common dso_local global i32 0, align 4
@JS_E_VBARRAY_EXPECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unimplemented flags: %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @VBArrayConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VBArrayConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %100 [
    i32 128, label %18
    i32 129, label %47
  ]

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = icmp ult i32 %19, 1
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @is_variant(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @get_variant(i32 %30)
  %32 = call i32 @V_VT(i32 %31)
  %33 = load i32, i32* @VT_ARRAY, align 4
  %34 = load i32, i32* @VT_VARIANT, align 4
  %35 = or i32 %33, %34
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %27, %21, %18
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @JS_E_VBARRAY_EXPECTED, align 4
  %40 = call i32 @throw_type_error(i32* %38, i32 %39, i32* null)
  store i32 %40, i32* %7, align 4
  br label %106

41:                                               ; preds = %27
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @jsval_copy(i32 %44, i32* %45)
  store i32 %46, i32* %7, align 4
  br label %106

47:                                               ; preds = %6
  %48 = load i32, i32* %11, align 4
  %49 = icmp ult i32 %48, 1
  br i1 %49, label %66, label %50

50:                                               ; preds = %47
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @is_variant(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load i32*, i32** %12, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @get_variant(i32 %59)
  %61 = call i32 @V_VT(i32 %60)
  %62 = load i32, i32* @VT_ARRAY, align 4
  %63 = load i32, i32* @VT_VARIANT, align 4
  %64 = or i32 %62, %63
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56, %50, %47
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @JS_E_VBARRAY_EXPECTED, align 4
  %69 = call i32 @throw_type_error(i32* %67, i32 %68, i32* null)
  store i32 %69, i32* %7, align 4
  br label %106

70:                                               ; preds = %56
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @alloc_vbarray(i32* %71, i32* null, %struct.TYPE_3__** %14)
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @FAILED(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %7, align 4
  br label %106

78:                                               ; preds = %70
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @get_variant(i32 %81)
  %83 = call i32 @V_ARRAY(i32 %82)
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = call i32 @SafeArrayCopy(i32 %83, i32* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @FAILED(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = call i32 @jsdisp_release(i32* %92)
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %7, align 4
  br label %106

95:                                               ; preds = %78
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = call i32 @jsval_obj(i32* %97)
  %99 = load i32*, i32** %13, align 8
  store i32 %98, i32* %99, align 4
  br label %104

100:                                              ; preds = %6
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %103, i32* %7, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @S_OK, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %104, %100, %90, %76, %66, %41, %37
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @is_variant(i32) #1

declare dso_local i32 @V_VT(i32) #1

declare dso_local i32 @get_variant(i32) #1

declare dso_local i32 @throw_type_error(i32*, i32, i32*) #1

declare dso_local i32 @jsval_copy(i32, i32*) #1

declare dso_local i32 @alloc_vbarray(i32*, i32*, %struct.TYPE_3__**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @SafeArrayCopy(i32, i32*) #1

declare dso_local i32 @V_ARRAY(i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
