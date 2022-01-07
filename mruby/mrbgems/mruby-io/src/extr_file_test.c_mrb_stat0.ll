; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file_test.c_mrb_stat0.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_file_test.c_mrb_stat0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.mrb_io = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@mrb_io_type = common dso_local global i32 0, align 4
@E_IO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"closed stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.stat*, i32)* @mrb_stat0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_stat0(i32* %0, i32 %1, %struct.stat* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mrb_io*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.stat* %2, %struct.stat** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @mrb_class_get(i32* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = call i64 @mrb_obj_is_kind_of(i32* %13, i32 %14, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @mrb_data_get_ptr(i32* %20, i32 %21, i32* @mrb_io_type)
  %23 = inttoptr i64 %22 to %struct.mrb_io*
  store %struct.mrb_io* %23, %struct.mrb_io** %10, align 8
  %24 = load %struct.mrb_io*, %struct.mrb_io** %10, align 8
  %25 = icmp ne %struct.mrb_io* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.mrb_io*, %struct.mrb_io** %10, align 8
  %28 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.mrb_io*, %struct.mrb_io** %10, align 8
  %33 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.stat*, %struct.stat** %8, align 8
  %36 = call i32 @fstat(i64 %34, %struct.stat* %35)
  store i32 %36, i32* %5, align 4
  br label %60

37:                                               ; preds = %26, %19
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @E_IO_ERROR, align 4
  %40 = call i32 @mrb_raise(i32* %38, i32 %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %60

41:                                               ; preds = %4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @RSTRING_CSTR(i32* %42, i32 %43)
  %45 = call i8* @mrb_locale_from_utf8(i32 %44, i32 -1)
  store i8* %45, i8** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i8*, i8** %11, align 8
  %50 = load %struct.stat*, %struct.stat** %8, align 8
  %51 = call i32 @LSTAT(i8* %49, %struct.stat* %50)
  store i32 %51, i32* %12, align 4
  br label %56

52:                                               ; preds = %41
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.stat*, %struct.stat** %8, align 8
  %55 = call i32 @stat(i8* %53, %struct.stat* %54)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @mrb_locale_free(i8* %57)
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %56, %37, %31
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i64 @mrb_obj_is_kind_of(i32*, i32, i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i64 @mrb_data_get_ptr(i32*, i32, i32*) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i8* @mrb_locale_from_utf8(i32, i32) #1

declare dso_local i32 @RSTRING_CSTR(i32*, i32) #1

declare dso_local i32 @LSTAT(i8*, %struct.stat*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @mrb_locale_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
