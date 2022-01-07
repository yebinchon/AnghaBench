; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_vformat.c_native_initialize.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-test/extr_vformat.c_native_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i8*, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"io\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"unknown type\00", align 1
@native_data_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @native_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_initialize(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @mrb_get_args(i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %7, i32* %8)
  %11 = load i64, i64* %7, align 8
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %64 [
    i32 133, label %16
    i32 132, label %22
    i32 131, label %27
    i32 130, label %31
    i32 129, label %35
    i32 128, label %39
    i32 134, label %60
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = call i32* @RSTRING_PTR(i32 %17)
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  br label %68

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @mrb_fixnum(i32 %23)
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  br label %68

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @mrb_float(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 6
  store i32 %29, i32* %30, align 8
  br label %68

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @mrb_fixnum(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  store i64 %33, i64* %34, align 8
  br label %68

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mrb_symbol(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  br label %68

39:                                               ; preds = %2
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @RSTRING_LEN(i32 %41)
  %43 = add i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = call i64 @mrb_malloc(i32* %40, i32 %44)
  %46 = inttoptr i64 %45 to i8*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32* @RSTRING_PTR(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @RSTRING_LEN(i32 %52)
  %54 = call i32 @memcpy(i8* %49, i32* %51, i64 %53)
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @RSTRING_LEN(i32 %57)
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  br label %68

60:                                               ; preds = %2
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mrb_class_ptr(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  store i32 %62, i32* %63, align 8
  br label %68

64:                                               ; preds = %2
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %67 = call i32 @mrb_raise(i32* %65, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %60, %39, %35, %31, %27, %22, %16
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @mrb_malloc(i32* %69, i32 40)
  %71 = inttoptr i64 %70 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %6, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = bitcast %struct.TYPE_3__* %72 to i8*
  %74 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 40, i1 false)
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = call i32 @mrb_data_init(i32 %75, %struct.TYPE_3__* %76, i32* @native_data_type)
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i32*) #1

declare dso_local i32* @RSTRING_PTR(i32) #1

declare dso_local i64 @mrb_fixnum(i32) #1

declare dso_local i32 @mrb_float(i32) #1

declare dso_local i32 @mrb_symbol(i32) #1

declare dso_local i64 @mrb_malloc(i32*, i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @mrb_class_ptr(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mrb_data_init(i32, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
