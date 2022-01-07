; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_mount.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_myfatfs.c_myfatfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.myvfs_vol = type { %struct.myvfs_vol*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@NUM_LOGICAL_DRIVES = common dso_local global i32 0, align 4
@volstr = common dso_local global i8** null, align 8
@VolToPart = common dso_local global %struct.TYPE_4__* null, align 8
@FR_OK = common dso_local global i32 0, align 4
@last_result = common dso_local global i32 0, align 4
@VFS_FS_FATFS = common dso_local global i32 0, align 4
@myfatfs_vol_fns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @myfatfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @myfatfs_mount(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.myvfs_vol*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %41, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @NUM_LOGICAL_DRIVES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i8**, i8*** @volstr, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8**, i8*** @volstr, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = call i64 @strncmp(i8* %19, i8* %24, i64 %30)
  %32 = icmp eq i64 0, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %18
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VolToPart, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %14

44:                                               ; preds = %14
  br label %45

45:                                               ; preds = %44, %2
  %46 = call %struct.myvfs_vol* @malloc(i32 32)
  store %struct.myvfs_vol* %46, %struct.myvfs_vol** %6, align 8
  %47 = icmp ne %struct.myvfs_vol* %46, null
  br i1 %47, label %48, label %73

48:                                               ; preds = %45
  %49 = load i8*, i8** %4, align 8
  %50 = call %struct.myvfs_vol* @strdup(i8* %49)
  %51 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %52 = getelementptr inbounds %struct.myvfs_vol, %struct.myvfs_vol* %51, i32 0, i32 0
  store %struct.myvfs_vol* %50, %struct.myvfs_vol** %52, align 8
  %53 = icmp ne %struct.myvfs_vol* %50, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %48
  %55 = load i32, i32* @FR_OK, align 4
  %56 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %57 = getelementptr inbounds %struct.myvfs_vol, %struct.myvfs_vol* %56, i32 0, i32 2
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @f_mount(i32* %57, i8* %58, i32 1)
  store i32 %59, i32* @last_result, align 4
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load i32, i32* @VFS_FS_FATFS, align 4
  %63 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %64 = getelementptr inbounds %struct.myvfs_vol, %struct.myvfs_vol* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %67 = getelementptr inbounds %struct.myvfs_vol, %struct.myvfs_vol* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32* @myfatfs_vol_fns, i32** %68, align 8
  %69 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %70 = bitcast %struct.myvfs_vol* %69 to i32*
  store i32* %70, i32** %3, align 8
  br label %90

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %45
  %74 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %75 = icmp ne %struct.myvfs_vol* %74, null
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %78 = getelementptr inbounds %struct.myvfs_vol, %struct.myvfs_vol* %77, i32 0, i32 0
  %79 = load %struct.myvfs_vol*, %struct.myvfs_vol** %78, align 8
  %80 = icmp ne %struct.myvfs_vol* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %83 = getelementptr inbounds %struct.myvfs_vol, %struct.myvfs_vol* %82, i32 0, i32 0
  %84 = load %struct.myvfs_vol*, %struct.myvfs_vol** %83, align 8
  %85 = call i32 @free(%struct.myvfs_vol* %84)
  br label %86

86:                                               ; preds = %81, %76
  %87 = load %struct.myvfs_vol*, %struct.myvfs_vol** %6, align 8
  %88 = call i32 @free(%struct.myvfs_vol* %87)
  br label %89

89:                                               ; preds = %86, %73
  store i32* null, i32** %3, align 8
  br label %90

90:                                               ; preds = %89, %61
  %91 = load i32*, i32** %3, align 8
  ret i32* %91
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local %struct.myvfs_vol* @malloc(i32) #1

declare dso_local %struct.myvfs_vol* @strdup(i8*) #1

declare dso_local i32 @f_mount(i32*, i8*, i32) #1

declare dso_local i32 @free(%struct.myvfs_vol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
