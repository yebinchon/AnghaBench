; ModuleID = '/home/carl/AnghaBench/nanomsg/src/core/extr_symbol.c_nn_symbol.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/core/extr_symbol.c_nn_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_symbol_properties = type { i32, i8* }

@SYM_VALUE_NAMES_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@sym_value_names = common dso_local global %struct.nn_symbol_properties* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nn_symbol(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nn_symbol_properties*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SYM_VALUE_NAMES_LEN, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %31

15:                                               ; preds = %9
  %16 = load %struct.nn_symbol_properties*, %struct.nn_symbol_properties** @sym_value_names, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nn_symbol_properties, %struct.nn_symbol_properties* %16, i64 %18
  store %struct.nn_symbol_properties* %19, %struct.nn_symbol_properties** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.nn_symbol_properties*, %struct.nn_symbol_properties** %6, align 8
  %24 = getelementptr inbounds %struct.nn_symbol_properties, %struct.nn_symbol_properties* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.nn_symbol_properties*, %struct.nn_symbol_properties** %6, align 8
  %29 = getelementptr inbounds %struct.nn_symbol_properties, %struct.nn_symbol_properties* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %27, %13
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
