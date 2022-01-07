; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@IMG_ACT_FACTORY = common dso_local global i32 0, align 4
@IMG_STATUS_READY = common dso_local global i32 0, align 4
@IMG_BOOT_INFO = common dso_local global i64 0, align 8
@FS_MODE_OPEN_READ = common dso_local global i32 0, align 4
@_FS_FILE_OPEN_FLAG_COMMIT = common dso_local global i32 0, align 4
@_FS_FILE_PUBLIC_WRITE = common dso_local global i32 0, align 4
@_FS_FILE_PUBLIC_READ = common dso_local global i32 0, align 4
@PRCM_FIRST_BOOT_BIT = common dso_local global i32 0, align 4
@SL_STOP_TIMEOUT = common dso_local global i32 0, align 4
@MICROPY_SYS_LED_PORT = common dso_local global i32 0, align 4
@MICROPY_SYS_LED_PORT_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %7 = load i32, i32* @IMG_ACT_FACTORY, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %9 = load i32, i32* @IMG_STATUS_READY, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %11 = load i32, i32* @IMG_ACT_FACTORY, align 4
  store i32 %11, i32* %10, align 4
  store i32 0, i32* %3, align 4
  %12 = call i32 (...) @bootmgr_board_init()
  %13 = call i32 @sl_Start(i32 0, i32 0, i32 0)
  %14 = load i64, i64* @IMG_BOOT_INFO, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load i32, i32* @FS_MODE_OPEN_READ, align 4
  %17 = call i32 @sl_FsOpen(i8* %15, i32 %16, i32* null, i32* %4)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4
  %21 = bitcast %struct.TYPE_3__* %2 to i8*
  %22 = call i32 @sl_FsRead(i32 %20, i32 0, i8* %21, i32 12)
  %23 = sext i32 %22 to i64
  %24 = icmp eq i64 12, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @sl_FsClose(i32 %27, i32 0, i32 0, i32 0)
  br label %29

29:                                               ; preds = %26, %0
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @_FS_FILE_OPEN_FLAG_COMMIT, align 4
  %34 = load i32, i32* @_FS_FILE_PUBLIC_WRITE, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @_FS_FILE_PUBLIC_READ, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* @IMG_BOOT_INFO, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @FS_MODE_OPEN_CREATE(i32 24, i32 %40)
  %42 = call i32 @sl_FsOpen(i8* %39, i32 %41, i32* null, i32* %4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %4, align 4
  %46 = bitcast %struct.TYPE_3__* %2 to i8*
  %47 = call i32 @sl_FsWrite(i32 %45, i32 0, i8* %46, i32 12)
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 12, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @sl_FsClose(i32 %52, i32 0, i32 0, i32 0)
  br label %54

54:                                               ; preds = %51, %32
  %55 = load i32, i32* @PRCM_FIRST_BOOT_BIT, align 4
  %56 = call i32 @PRCMSetSpecialBit(i32 %55)
  br label %57

57:                                               ; preds = %54, %29
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 @bootmgr_image_loader(%struct.TYPE_3__* %2)
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* @SL_STOP_TIMEOUT, align 4
  %64 = call i32 @sl_Stop(i32 %63)
  br label %65

65:                                               ; preds = %62, %65
  %66 = load i32, i32* @MICROPY_SYS_LED_PORT, align 4
  %67 = load i32, i32* @MICROPY_SYS_LED_PORT_PIN, align 4
  %68 = load i32, i32* @MICROPY_SYS_LED_PORT_PIN, align 4
  %69 = call i32 @MAP_GPIOPinWrite(i32 %66, i32 %67, i32 %68)
  call void asm sideeffect " dsb \0A isb \0A wfi \0A", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %65
}

declare dso_local i32 @bootmgr_board_init(...) #1

declare dso_local i32 @sl_Start(i32, i32, i32) #1

declare dso_local i32 @sl_FsOpen(i8*, i32, i32*, i32*) #1

declare dso_local i32 @sl_FsRead(i32, i32, i8*, i32) #1

declare dso_local i32 @sl_FsClose(i32, i32, i32, i32) #1

declare dso_local i32 @FS_MODE_OPEN_CREATE(i32, i32) #1

declare dso_local i32 @sl_FsWrite(i32, i32, i8*, i32) #1

declare dso_local i32 @PRCMSetSpecialBit(i32) #1

declare dso_local i32 @bootmgr_image_loader(%struct.TYPE_3__*) #1

declare dso_local i32 @sl_Stop(i32) #1

declare dso_local i32 @MAP_GPIOPinWrite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 2357, i32 2391, i32 2424}
