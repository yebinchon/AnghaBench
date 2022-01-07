; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_serial_mouse_mousesystems.c_serial_mouse_task.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_serial_mouse_mousesystems.c_serial_mouse_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32 }

@serial_mouse_task.buffer = internal global [5 x i32] zeroinitializer, align 16
@serial_mouse_task.buffer_cur = internal global i32 0, align 4
@debug_mouse = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"serial_mouse: byte: %04X\0A\00", align 1
@MOUSE_BTN1 = common dso_local global i32 0, align 4
@MOUSE_BTN3 = common dso_local global i32 0, align 4
@MOUSE_BTN2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @serial_mouse_task() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 64, i1 false)
  %4 = call i32 (...) @serial_recv2()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %83

8:                                                ; preds = %0
  %9 = load i64, i64* @debug_mouse, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @xprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = ashr i32 %18, 3
  %20 = icmp ne i32 %19, 16
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %83

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @serial_mouse_task.buffer_cur, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @serial_mouse_task.buffer_cur, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %83

31:                                               ; preds = %22
  store i32 0, i32* @serial_mouse_task.buffer_cur, align 4
  %32 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 0), align 16
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @MOUSE_BTN1, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 0), align 16
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @MOUSE_BTN3, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 0), align 16
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* @MOUSE_BTN2, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 1), align 4
  %60 = call i8* @MAX(i32 %59, i32 -127)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 2), align 8
  %63 = sub nsw i32 0, %62
  %64 = call i8* @MAX(i32 %63, i32 -127)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = call i32 @print_usb_data(%struct.TYPE_4__* %2)
  %67 = call i32 @host_mouse_send(%struct.TYPE_4__* %2)
  %68 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 3), align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 4), align 16
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70, %58
  %74 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 3), align 4
  %75 = call i8* @MAX(i32 %74, i32 -127)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @serial_mouse_task.buffer, i64 0, i64 4), align 16
  %78 = sub nsw i32 0, %77
  %79 = call i8* @MAX(i32 %78, i32 -127)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i8* %79, i8** %80, align 8
  %81 = call i32 @print_usb_data(%struct.TYPE_4__* %2)
  %82 = call i32 @host_mouse_send(%struct.TYPE_4__* %2)
  br label %83

83:                                               ; preds = %7, %21, %30, %73, %70
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @serial_recv2(...) #2

declare dso_local i32 @xprintf(i8*, i32) #2

declare dso_local i8* @MAX(i32, i32) #2

declare dso_local i32 @print_usb_data(%struct.TYPE_4__*) #2

declare dso_local i32 @host_mouse_send(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
