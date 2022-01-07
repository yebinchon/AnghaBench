; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/system/extr_serial_link.c_serial_link_update.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/serial_link/system/extr_serial_link.c_serial_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }

@serial_link_connected = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i64 0, align 8
@last_matrix = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@last_update = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial_link_update() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = call i64 (...) @read_serial_link_connected()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 1, i32* @serial_link_connected, align 4
  br label %12

12:                                               ; preds = %11, %0
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @MATRIX_ROWS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @matrix_get_row(i64 %18)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %19, i64* %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @last_matrix, i32 0, i32 0), align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %2, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %17
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %13

40:                                               ; preds = %13
  %41 = call i64 (...) @chVTGetSystemTimeX()
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @last_update, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %5, align 8
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %5, align 8
  %49 = call i64 @US2ST(i32 5000)
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %77

51:                                               ; preds = %47, %40
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* @last_update, align 8
  %53 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_5__* @last_matrix to i8*), i8* align 8 %53, i64 8, i1 false)
  %54 = call %struct.TYPE_5__* (...) @begin_write_keyboard_matrix()
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %55

55:                                               ; preds = %70, %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @MATRIX_ROWS, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  br label %70

70:                                               ; preds = %59
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %55

73:                                               ; preds = %55
  %74 = call i32 (...) @end_write_keyboard_matrix()
  %75 = call i32* (...) @begin_write_serial_link_connected()
  store i32 1, i32* %75, align 4
  %76 = call i32 (...) @end_write_serial_link_connected()
  br label %77

77:                                               ; preds = %73, %47
  %78 = call %struct.TYPE_5__* @read_keyboard_matrix(i32 0)
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %8, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = call i32 @matrix_set_remote(i64* %84, i32 0)
  br label %86

86:                                               ; preds = %81, %77
  ret void
}

declare dso_local i64 @read_serial_link_connected(...) #1

declare dso_local i64 @matrix_get_row(i64) #1

declare dso_local i64 @chVTGetSystemTimeX(...) #1

declare dso_local i64 @US2ST(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_5__* @begin_write_keyboard_matrix(...) #1

declare dso_local i32 @end_write_keyboard_matrix(...) #1

declare dso_local i32* @begin_write_serial_link_connected(...) #1

declare dso_local i32 @end_write_serial_link_connected(...) #1

declare dso_local %struct.TYPE_5__* @read_keyboard_matrix(i32) #1

declare dso_local i32 @matrix_set_remote(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
