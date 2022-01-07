; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_check_readable.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_check_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_io = type { i32 }

@E_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"not opened for reading\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrb_io_check_readable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrb_io*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.mrb_io* @io_get_open_fptr(i32* %6, i32 %7)
  store %struct.mrb_io* %8, %struct.mrb_io** %5, align 8
  %9 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %10 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @E_IO_ERROR, align 4
  %16 = call i32 @mrb_raise(i32* %14, i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %2
  %18 = call i32 (...) @mrb_nil_value()
  ret i32 %18
}

declare dso_local %struct.mrb_io* @io_get_open_fptr(i32*, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_nil_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
