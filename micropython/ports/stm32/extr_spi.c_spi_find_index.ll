; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/extr_spi.c_spi_find_index.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/extr_spi.c_spi_find_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@mp_type_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SPI(%s) doesn't exist\00", align 1
@spi_obj = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"SPI(%d) doesn't exist\00", align 1
@MICROPY_HW_SPI1_NAME = common dso_local global i32 0, align 4
@MICROPY_HW_SPI2_NAME = common dso_local global i32 0, align 4
@MICROPY_HW_SPI3_NAME = common dso_local global i32 0, align 4
@MICROPY_HW_SPI4_NAME = common dso_local global i32 0, align 4
@MICROPY_HW_SPI5_NAME = common dso_local global i32 0, align 4
@MICROPY_HW_SPI6_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_find_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @mp_obj_is_str(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i8* @mp_obj_str_get_str(i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i32*, i8*, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @nlr_raise(i32 %13)
  br label %40

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @mp_obj_get_int(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spi_obj, align 8
  %23 = call i32 @MP_ARRAY_SIZE(%struct.TYPE_3__* %22)
  %24 = icmp sle i32 %21, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spi_obj, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %40

36:                                               ; preds = %25, %20, %15
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32*, i8*, ...) @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = call i32 @nlr_raise(i32 %38)
  br label %40

40:                                               ; preds = %34, %36, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @mp_obj_is_str(i32) #1

declare dso_local i8* @mp_obj_str_get_str(i32) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, ...) #1

declare dso_local i32 @mp_obj_get_int(i32) #1

declare dso_local i32 @MP_ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
