; ModuleID = '/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_do_sys_block_zram.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/proc.plugin/extr_sys_block_zram.c_do_sys_block_zram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_sys_block_zram.ff = internal global i32* null, align 8
@do_sys_block_zram.devices = internal global i32* null, align 8
@do_sys_block_zram.initialized = internal global i32 0, align 4
@do_sys_block_zram.device_count = internal global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/devices\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" \09:\00", align 1
@PROCFILE_FLAG_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot read /proc/devices\00", align 1
@DICTIONARY_FLAG_SINGLE_THREADED = common dso_local global i32 0, align 4
@collect_first_zram_metrics = common dso_local global i32 0, align 4
@collect_zram_metrics = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_sys_block_zram(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %8 = load i32, i32* @do_sys_block_zram.initialized, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %2
  store i32 1, i32* @do_sys_block_zram.initialized, align 4
  %15 = load i32, i32* @PROCFILE_FLAG_DEFAULT, align 4
  %16 = call i32* @procfile_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  store i32* %16, i32** @do_sys_block_zram.ff, align 8
  %17 = load i32*, i32** @do_sys_block_zram.ff, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %69

21:                                               ; preds = %14
  %22 = load i32*, i32** @do_sys_block_zram.ff, align 8
  %23 = call i32* @procfile_readall(i32* %22)
  store i32* %23, i32** @do_sys_block_zram.ff, align 8
  %24 = load i32*, i32** @do_sys_block_zram.ff, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %69

27:                                               ; preds = %21
  %28 = load i32*, i32** @do_sys_block_zram.ff, align 8
  %29 = call i32 @try_get_zram_major_number(i32* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32*, i32** @do_sys_block_zram.ff, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** @do_sys_block_zram.ff, align 8
  %37 = call i32 @procfile_close(i32* %36)
  br label %38

38:                                               ; preds = %35, %32
  store i32 1, i32* %3, align 4
  br label %69

39:                                               ; preds = %27
  %40 = load i32*, i32** @do_sys_block_zram.ff, align 8
  %41 = call i32 @procfile_close(i32* %40)
  %42 = load i32, i32* @DICTIONARY_FLAG_SINGLE_THREADED, align 4
  %43 = call i32* @dictionary_create(i32 %42)
  store i32* %43, i32** @do_sys_block_zram.devices, align 8
  %44 = load i32*, i32** @do_sys_block_zram.devices, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @init_devices(i32* %44, i32 %45, i32 %46)
  store i32 %47, i32* @do_sys_block_zram.device_count, align 4
  %48 = load i32, i32* @do_sys_block_zram.device_count, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %69

51:                                               ; preds = %39
  %52 = load i32*, i32** @do_sys_block_zram.devices, align 8
  %53 = load i32, i32* @collect_first_zram_metrics, align 4
  %54 = load i32*, i32** @do_sys_block_zram.devices, align 8
  %55 = call i32 @dictionary_get_all_name_value(i32* %52, i32 %53, i32* %54)
  br label %68

56:                                               ; preds = %2
  %57 = load i32, i32* @do_sys_block_zram.device_count, align 4
  %58 = icmp slt i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %69

63:                                               ; preds = %56
  %64 = load i32*, i32** @do_sys_block_zram.devices, align 8
  %65 = load i32, i32* @collect_zram_metrics, align 4
  %66 = load i32*, i32** @do_sys_block_zram.devices, align 8
  %67 = call i32 @dictionary_get_all_name_value(i32* %64, i32 %65, i32* %66)
  br label %68

68:                                               ; preds = %63, %51
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %62, %50, %38, %26, %19
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @procfile_open(i8*, i8*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @procfile_readall(i32*) #1

declare dso_local i32 @try_get_zram_major_number(i32*) #1

declare dso_local i32 @procfile_close(i32*) #1

declare dso_local i32* @dictionary_create(i32) #1

declare dso_local i32 @init_devices(i32*, i32, i32) #1

declare dso_local i32 @dictionary_get_all_name_value(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
