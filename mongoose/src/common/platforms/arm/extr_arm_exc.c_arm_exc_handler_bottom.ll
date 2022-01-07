; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/arm/extr_arm_exc.c_arm_exc_handler_bottom.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/arm/extr_arm_exc.c_arm_exc_handler_bottom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gdb_reg_file = type { i32, i64, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.arm_exc_frame = type { i32, i32 }

@s_rf = common dso_local global %struct.arm_gdb_reg_file* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"ThreadMode\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NMI\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"HardFault\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"MemManage\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"BusFault\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"UsageFault\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SVCall\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ReservedDebug\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"PendSV\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"SysTick\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"IRQ%u\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"\0A\0A--- Exception %u (%s) ---\0A\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx  R%d:  0x%08lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"  R8:  0x%08lx  R9:  0x%08lx  R10: 0x%08lx  R11: 0x%08lx\0A\00", align 1
@.str.15 = private unnamed_addr constant [58 x i8] c"  R12: 0x%08lx  SP:  0x%08lx   LR: 0x%08lx  PC:  0x%08lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"  PSR: 0x%08lx MSP:  0x%08lx  PSP: 0x%08lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"Rebooting\0A\00", align 1
@MPU = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_exc_handler_bottom(i32 %0, %struct.arm_exc_frame* %1, %struct.arm_gdb_reg_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_exc_frame*, align 8
  %6 = alloca %struct.arm_gdb_reg_file*, align 8
  %7 = alloca [8 x i8], align 1
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.arm_exc_frame* %1, %struct.arm_exc_frame** %5, align 8
  store %struct.arm_gdb_reg_file* %2, %struct.arm_gdb_reg_file** %6, align 8
  %9 = call i32 (...) @portDISABLE_INTERRUPTS()
  %10 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  store %struct.arm_gdb_reg_file* %10, %struct.arm_gdb_reg_file** @s_rf, align 8
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %23 [
    i32 0, label %12
    i32 1, label %13
    i32 7, label %13
    i32 8, label %13
    i32 9, label %13
    i32 10, label %13
    i32 13, label %13
    i32 2, label %14
    i32 3, label %15
    i32 4, label %16
    i32 5, label %17
    i32 6, label %18
    i32 11, label %19
    i32 12, label %20
    i32 14, label %21
    i32 15, label %22
  ]

12:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %29

13:                                               ; preds = %3, %3, %3, %3, %3, %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %29

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %29

15:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %29

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %29

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %29

18:                                               ; preds = %3
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %29

19:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %29

20:                                               ; preds = %3
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %29

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %29

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %29

23:                                               ; preds = %3
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %25 = load i32, i32* %4, align 4
  %26 = sub nsw i32 %25, 16
  %27 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  store i8* %28, i8** %8, align 8
  br label %29

29:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12
  %30 = load i32, i32* %4, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 (i8*, ...) @mgos_cd_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %30, i8* %31)
  %33 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %34 = icmp ne %struct.arm_gdb_reg_file* %33, null
  br i1 %34, label %35, label %124

35:                                               ; preds = %29
  %36 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %37 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %36, i32 0, i32 8
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %42 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %41, i32 0, i32 8
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %47 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %46, i32 0, i32 8
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %52 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %51, i32 0, i32 8
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, ...) @mgos_cd_printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 %40, i32 1, i32 %45, i32 2, i32 %50, i32 3, i32 %55)
  %57 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %58 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %57, i32 0, i32 8
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %63 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %68 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %67, i32 0, i32 8
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %73 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %72, i32 0, i32 8
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @mgos_cd_printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i32 4, i32 %61, i32 5, i32 %66, i32 6, i32 %71, i32 7, i32 %76)
  %78 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %79 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %78, i32 0, i32 8
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %84 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %89 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %88, i32 0, i32 8
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 10
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %94 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %93, i32 0, i32 8
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 11
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @mgos_cd_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i32 %82, i32 %87, i32 %92, i32 %97)
  %99 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %100 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %99, i32 0, i32 8
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 12
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %105 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %108 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %111 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @mgos_cd_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.15, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i32 %112)
  %114 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %115 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %118 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.arm_gdb_reg_file*, %struct.arm_gdb_reg_file** %6, align 8
  %121 = getelementptr inbounds %struct.arm_gdb_reg_file, %struct.arm_gdb_reg_file* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, ...) @mgos_cd_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i32 %116, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %35, %29
  %125 = call i32 (i8*, ...) @mgos_cd_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %126 = call i32 (...) @mgos_dev_system_restart()
  %127 = load %struct.arm_exc_frame*, %struct.arm_exc_frame** %5, align 8
  ret void
}

declare dso_local i32 @portDISABLE_INTERRUPTS(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mgos_cd_printf(i8*, ...) #1

declare dso_local i32 @mgos_dev_system_restart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
