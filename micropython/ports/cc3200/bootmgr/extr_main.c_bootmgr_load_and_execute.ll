; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_bootmgr_load_and_execute.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_bootmgr_load_and_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@FS_MODE_OPEN_READ = common dso_local global i32 0, align 4
@APP_IMG_SRAM_OFFSET = common dso_local global i64 0, align 8
@SL_STOP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @bootmgr_load_and_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootmgr_load_and_execute(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @FS_MODE_OPEN_READ, align 4
  %7 = call i32 @sl_FsOpen(i32* %5, i32 %6, i32* null, i32* %4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %32, label %9

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @sl_FsGetInfo(i32* %10, i32 0, %struct.TYPE_3__* %3)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* @APP_IMG_SRAM_OFFSET, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @sl_FsRead(i32 %16, i32 0, i8* %18, i64 %20)
  %22 = icmp eq i64 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @sl_FsClose(i32 %24, i32 0, i32 0, i32 0)
  %26 = load i32, i32* @SL_STOP_TIMEOUT, align 4
  %27 = call i32 @sl_Stop(i32 %26)
  %28 = load i64, i64* @APP_IMG_SRAM_OFFSET, align 8
  %29 = call i32 @bootmgr_run_app(i64 %28)
  br label %30

30:                                               ; preds = %23, %13
  br label %31

31:                                               ; preds = %30, %9
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @sl_FsOpen(i32*, i32, i32*, i32*) #1

declare dso_local i32 @sl_FsGetInfo(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i64 @sl_FsRead(i32, i32, i8*, i64) #1

declare dso_local i32 @sl_FsClose(i32, i32, i32, i32) #1

declare dso_local i32 @sl_Stop(i32) #1

declare dso_local i32 @bootmgr_run_app(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
