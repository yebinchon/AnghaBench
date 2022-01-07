; ModuleID = '/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitimage.c_microbit_image_blit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/nrf/boards/microbit/modules/extr_microbitimage.c_microbit_image_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@microbit_image_type = common dso_local global i32 0, align 4
@mp_type_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"expecting an image\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"must specify both offsets\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"size cannot be negative\00", align 1
@mp_const_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @microbit_image_blit(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = call i32 @check_mutability(%struct.TYPE_4__* %17)
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32* @mp_obj_get_type(i64 %22)
  %24 = icmp ne i32* %23, @microbit_image_type
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = call i32 @mp_raise_msg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %2
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 7
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @mp_raise_msg(i32* @mp_type_TypeError, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @mp_obj_get_int(i64 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @mp_obj_get_int(i64 %39)
  store i64 %40, i64* %8, align 8
  %41 = load i64*, i64** %4, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 4
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @mp_obj_get_int(i64 %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 5
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @mp_obj_get_int(i64 %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %32
  %52 = load i64, i64* %10, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %32
  %55 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %69

60:                                               ; preds = %56
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 6
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @mp_obj_get_int(i64 %63)
  store i64 %64, i64* %11, align 8
  %65 = load i64*, i64** %4, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 7
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @mp_obj_get_int(i64 %67)
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %60, %59
  %70 = load i64, i64* %6, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_4__*
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @image_blit(%struct.TYPE_4__* %71, i32* %73, i64 %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79)
  %81 = load i64, i64* @mp_const_none, align 8
  ret i64 %81
}

declare dso_local i32 @check_mutability(%struct.TYPE_4__*) #1

declare dso_local i32* @mp_obj_get_type(i64) #1

declare dso_local i32 @mp_raise_msg(i32*, i8*) #1

declare dso_local i64 @mp_obj_get_int(i64) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i32 @image_blit(%struct.TYPE_4__*, i32*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
