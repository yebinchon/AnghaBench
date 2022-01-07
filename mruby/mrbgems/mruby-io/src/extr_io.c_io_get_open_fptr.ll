; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_io_get_open_fptr.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_io_get_open_fptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrb_io = type { i64 }

@mrb_io_type = common dso_local global i32 0, align 4
@E_IO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"uninitialized stream.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"closed stream.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mrb_io* (i32*, i32)* @io_get_open_fptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mrb_io* @io_get_open_fptr(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrb_io*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @mrb_data_get_ptr(i32* %6, i32 %7, i32* @mrb_io_type)
  %9 = inttoptr i64 %8 to %struct.mrb_io*
  store %struct.mrb_io* %9, %struct.mrb_io** %5, align 8
  %10 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %11 = icmp eq %struct.mrb_io* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @E_IO_ERROR, align 4
  %15 = call i32 @mrb_raise(i32* %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  %18 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* @E_IO_ERROR, align 4
  %24 = call i32 @mrb_raise(i32* %22, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.mrb_io*, %struct.mrb_io** %5, align 8
  ret %struct.mrb_io* %26
}

declare dso_local i64 @mrb_data_get_ptr(i32*, i32, i32*) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
