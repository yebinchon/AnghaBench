; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_device.c_grub_device_open.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/kern/extr_device.c_grub_device_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"root\00", align 1
@GRUB_ERR_BAD_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"no device is set\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @grub_device_open(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = call i8* @grub_env_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, i32* @GRUB_ERR_BAD_DEVICE, align 4
  %16 = call i32 @grub_error(i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %36

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %1
  %19 = call %struct.TYPE_5__* @grub_malloc(i32 16)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %36

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @grub_disk_open(i8* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %36

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %2, align 8
  br label %45

36:                                               ; preds = %28, %22, %14
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @grub_disk_close(i64 %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = call i32 @grub_free(%struct.TYPE_5__* %43)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %45

45:                                               ; preds = %42, %29
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %46
}

declare dso_local i8* @grub_env_get(i8*) #1

declare dso_local i32 @grub_error(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @grub_malloc(i32) #1

declare dso_local i64 @grub_disk_open(i8*) #1

declare dso_local i32 @grub_disk_close(i64) #1

declare dso_local i32 @grub_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
