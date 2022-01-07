; ModuleID = '/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/common/extr_env_ext4.c_env_relocate_spec.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/boot/uboot-oxnas/src/common/extr_env_ext4.c_env_relocate_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_ENV_SIZE = common dso_local global i32 0, align 4
@EXT4_ENV_DEVICE = common dso_local global i32 0, align 4
@EXT4_ENV_PART = common dso_local global i32 0, align 4
@EXT4_ENV_INTERFACE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Failed to find %s%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register %s%d:%d\0A\00", align 1
@EXT4_ENV_FILE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"\0A** Unable to read \22%s\22 from %s%d:%d **\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_relocate_spec() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @CONFIG_ENV_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  store i32* null, i32** %3, align 8
  %12 = load i32, i32* @EXT4_ENV_DEVICE, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @EXT4_ENV_PART, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** @EXT4_ENV_INTERFACE, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32* @get_dev(i8* %14, i32 %15)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %0
  %20 = load i8*, i8** @EXT4_ENV_INTERFACE, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = call i32 @set_default_env(i32* null)
  store i32 1, i32* %7, align 4
  br label %53

24:                                               ; preds = %0
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ext4_register_device(i32* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** @EXT4_ENV_INTERFACE, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32, i32 %33)
  %35 = call i32 @set_default_env(i32* null)
  store i32 1, i32* %7, align 4
  br label %53

36:                                               ; preds = %24
  %37 = load i8*, i8** @EXT4_ENV_FILE, align 8
  %38 = bitcast i8* %11 to i32*
  %39 = load i32, i32* @CONFIG_ENV_SIZE, align 4
  %40 = call i32 @ext4_read_file(i8* %37, i32* %38, i32 0, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = call i32 (...) @ext4fs_close()
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i8*, i8** @EXT4_ENV_FILE, align 8
  %46 = load i8*, i8** @EXT4_ENV_INTERFACE, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46, i32 %47, i32 %48)
  %50 = call i32 @set_default_env(i32* null)
  store i32 1, i32* %7, align 4
  br label %53

51:                                               ; preds = %36
  %52 = call i32 @env_import(i8* %11, i32 1)
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %44, %30, %19
  %54 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %7, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
    i32 1, label %56
  ]

56:                                               ; preds = %53, %53
  ret void

57:                                               ; preds = %53
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @get_dev(i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @set_default_env(i32*) #2

declare dso_local i32 @ext4_register_device(i32*, i32) #2

declare dso_local i32 @ext4_read_file(i8*, i32*, i32, i32) #2

declare dso_local i32 @ext4fs_close(...) #2

declare dso_local i32 @env_import(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
