; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadSoundProfiles.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/mmsys/extr_sounds.c_LoadSoundProfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"AppEvents\\Schemes\00", align 1
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadSoundProfiles(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %9 = call i32 @_T(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @KEY_READ, align 4
  %11 = call i64 @RegOpenKeyEx(i32 %8, i32 %9, i32 0, i32 %10, i32* %6)
  %12 = load i64, i64* @ERROR_SUCCESS, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @EnumerateSoundProfiles(i32 %17, i32 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ImportSoundProfiles(i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @RegCloseKey(i32 %29)
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @RegOpenKeyEx(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @EnumerateSoundProfiles(i32, i32, i32) #1

declare dso_local i32 @ImportSoundProfiles(i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
