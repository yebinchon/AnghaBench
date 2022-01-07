; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_sysread.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_sysread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_io = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"i|S\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"negative expanding string size\00", align 1
@E_IO_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"not opened for reading\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@E_EOF_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"sysread failed: End of File\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sysread failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_io_sysread(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mrb_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @mrb_nil_value()
  store i32 %10, i32* %7, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @mrb_get_args(i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %8, i32* %7)
  %13 = load i64, i64* %8, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %18 = call i32 @mrb_raise(i32* %16, i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %27

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %4, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @mrb_str_new(i32* %23, i32* null, i64 %24)
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @mrb_nil_p(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @mrb_str_new(i32* %32, i32* null, i64 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @RSTRING_LEN(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @mrb_str_resize(i32* %42, i32 %43, i32 %45)
  store i32 %46, i32* %7, align 4
  br label %52

47:                                               ; preds = %35
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @RSTRING(i32 %49)
  %51 = call i32 @mrb_str_modify(i32* %48, i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @io_get_open_fptr(i32* %53, i32 %54)
  %56 = inttoptr i64 %55 to %struct.mrb_io*
  store %struct.mrb_io* %56, %struct.mrb_io** %6, align 8
  %57 = load %struct.mrb_io*, %struct.mrb_io** %6, align 8
  %58 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @E_IO_ERROR, align 4
  %64 = call i32 @mrb_raise(i32* %62, i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %52
  %66 = load %struct.mrb_io*, %struct.mrb_io** %6, align 8
  %67 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @RSTRING_PTR(i32 %69)
  %71 = load i64, i64* %8, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @read(i32 %68, i32 %70, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  switch i32 %74, label %89 [
    i32 0, label %75
    i32 -1, label %86
  ]

75:                                               ; preds = %65
  %76 = load i64, i64* %8, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @mrb_str_new_cstr(i32* %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %80, i32* %7, align 4
  br label %85

81:                                               ; preds = %75
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* @E_EOF_ERROR, align 4
  %84 = call i32 @mrb_raise(i32* %82, i32 %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %85

85:                                               ; preds = %81, %78
  br label %100

86:                                               ; preds = %65
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @mrb_sys_fail(i32* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %100

89:                                               ; preds = %65
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @RSTRING_LEN(i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @mrb_str_resize(i32* %95, i32 %96, i32 %97)
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %94, %89
  br label %100

100:                                              ; preds = %99, %86, %85
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %22
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i64*, i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_new(i32*, i32*, i64) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

declare dso_local i32 @mrb_str_modify(i32*, i32) #1

declare dso_local i32 @RSTRING(i32) #1

declare dso_local i64 @io_get_open_fptr(i32*, i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
