; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_bootmgr_image_loader.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/bootmgr/extr_main.c_bootmgr_image_loader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@IMG_UPDATE1 = common dso_local global i64 0, align 8
@IMG_UPDATE2 = common dso_local global i64 0, align 8
@IMG_FACTORY = common dso_local global i64 0, align 8
@IMG_ACT_FACTORY = common dso_local global i32 0, align 4
@IMG_STATUS_CHECK = common dso_local global i64 0, align 8
@IMG_STATUS_READY = common dso_local global i64 0, align 8
@IMG_BOOT_INFO = common dso_local global i64 0, align 8
@FS_MODE_OPEN_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @bootmgr_image_loader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bootmgr_image_loader(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %14 [
    i32 129, label %8
    i32 128, label %11
  ]

8:                                                ; preds = %1
  %9 = load i64, i64* @IMG_UPDATE1, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  br label %17

11:                                               ; preds = %1
  %12 = load i64, i64* @IMG_UPDATE2, align 8
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %4, align 8
  br label %17

14:                                               ; preds = %1
  %15 = load i64, i64* @IMG_FACTORY, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %14, %11, %8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IMG_ACT_FACTORY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %61

23:                                               ; preds = %17
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IMG_STATUS_CHECK, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @bootmgr_verify(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @sl_FsDel(i8* %34, i32 0)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @IMG_ACT_FACTORY, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %33, %29
  %45 = load i64, i64* @IMG_STATUS_READY, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* @IMG_BOOT_INFO, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load i32, i32* @FS_MODE_OPEN_WRITE, align 4
  %51 = call i32 @sl_FsOpen(i8* %49, i32 %50, i32* null, i32* %3)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %56 = bitcast %struct.TYPE_4__* %55 to i8*
  %57 = call i32 @sl_FsWrite(i32 %54, i32 0, i8* %56, i32 24)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @sl_FsClose(i32 %58, i32 0, i32 0, i32 0)
  br label %60

60:                                               ; preds = %53, %44
  br label %61

61:                                               ; preds = %60, %23, %17
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %63 = call i32 @wait_for_safe_boot(%struct.TYPE_4__* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %73 [
    i32 129, label %67
    i32 128, label %70
  ]

67:                                               ; preds = %61
  %68 = load i64, i64* @IMG_UPDATE1, align 8
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** %4, align 8
  br label %76

70:                                               ; preds = %61
  %71 = load i64, i64* @IMG_UPDATE2, align 8
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %4, align 8
  br label %76

73:                                               ; preds = %61
  %74 = load i64, i64* @IMG_FACTORY, align 8
  %75 = inttoptr i64 %74 to i8*
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %73, %70, %67
  %77 = load i8*, i8** %4, align 8
  %78 = call i32 @bootmgr_load_and_execute(i8* %77)
  ret void
}

declare dso_local i32 @bootmgr_verify(i8*) #1

declare dso_local i32 @sl_FsDel(i8*, i32) #1

declare dso_local i32 @sl_FsOpen(i8*, i32, i32*, i32*) #1

declare dso_local i32 @sl_FsWrite(i32, i32, i8*, i32) #1

declare dso_local i32 @sl_FsClose(i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_safe_boot(%struct.TYPE_4__*) #1

declare dso_local i32 @bootmgr_load_and_execute(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
