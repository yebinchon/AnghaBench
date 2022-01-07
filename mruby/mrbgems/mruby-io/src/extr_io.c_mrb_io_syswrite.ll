; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_syswrite.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_syswrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_io = type { i32, i32, i32 }

@E_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"not opened for writing\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_io_syswrite(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrb_io*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.mrb_io* @io_get_open_fptr(i32* %10, i32 %11)
  store %struct.mrb_io* %12, %struct.mrb_io** %5, align 8
  %13 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %14 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @E_IO_ERROR, align 4
  %20 = call i32 @mrb_raise(i32* %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @mrb_get_args(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %26 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %31 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %35 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @RSTRING_PTR(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i64 @RSTRING_LEN(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 @write(i32 %38, i32 %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @mrb_sys_fail(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %37
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @mrb_fixnum_value(i32 %51)
  ret i32 %52
}

declare dso_local %struct.mrb_io* @io_get_open_fptr(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @RSTRING_PTR(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_sys_fail(i32*, i32) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
