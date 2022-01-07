; ModuleID = '/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_servo_obj_attach.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/teensy/extr_servo.c_servo_obj_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@CORE_NUM_DIGITAL = common dso_local global i64 0, align 8
@OUTPUT = common dso_local global i32 0, align 4
@servo_pin = common dso_local global i64* null, align 8
@servo_active_mask = common dso_local global i32 0, align 4
@SIM_SCGC6 = common dso_local global i32 0, align 4
@SIM_SCGC6_PDB = common dso_local global i32 0, align 4
@PDB0_MOD = common dso_local global i32 0, align 4
@PDB0_CNT = common dso_local global i64 0, align 8
@PDB0_IDLY = common dso_local global i64 0, align 8
@PDB_CONFIG = common dso_local global i32 0, align 4
@PDB0_SC = common dso_local global i32 0, align 4
@PDB_SC_SWTRIG = common dso_local global i32 0, align 4
@IRQ_PDB = common dso_local global i32 0, align 4
@mp_const_none = common dso_local global %struct.TYPE_8__* null, align 8
@MP_QSTR_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pin %d does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*, %struct.TYPE_8__*)* @servo_obj_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @servo_obj_attach(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %6, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = call i64 @mp_obj_get_int(%struct.TYPE_8__* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @CORE_NUM_DIGITAL, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %48

15:                                               ; preds = %2
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @OUTPUT, align 4
  %18 = call i32 @pinMode(i64 %16, i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load i64*, i64** @servo_pin, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  store i64 %19, i64* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 1, %28
  %30 = load i32, i32* @servo_active_mask, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @servo_active_mask, align 4
  %32 = load i32, i32* @SIM_SCGC6, align 4
  %33 = load i32, i32* @SIM_SCGC6_PDB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %15
  %37 = load i32, i32* @SIM_SCGC6_PDB, align 4
  %38 = load i32, i32* @SIM_SCGC6, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* @SIM_SCGC6, align 4
  store i32 65535, i32* @PDB0_MOD, align 4
  store i64 0, i64* @PDB0_CNT, align 8
  store i64 0, i64* @PDB0_IDLY, align 8
  %40 = load i32, i32* @PDB_CONFIG, align 4
  store i32 %40, i32* @PDB0_SC, align 4
  %41 = load i32, i32* @PDB_CONFIG, align 4
  %42 = load i32, i32* @PDB_SC_SWTRIG, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* @PDB0_SC, align 4
  br label %44

44:                                               ; preds = %36, %15
  %45 = load i32, i32* @IRQ_PDB, align 4
  %46 = call i32 @NVIC_ENABLE_IRQ(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @mp_const_none, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %3, align 8
  br label %53

48:                                               ; preds = %14
  %49 = load i32, i32* @MP_QSTR_ValueError, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @mp_obj_new_exception_msg_varg(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = call i32 @nlr_raise(i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %54
}

declare dso_local i64 @mp_obj_get_int(%struct.TYPE_8__*) #1

declare dso_local i32 @pinMode(i64, i32) #1

declare dso_local i32 @NVIC_ENABLE_IRQ(i32) #1

declare dso_local i32 @nlr_raise(i32) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
