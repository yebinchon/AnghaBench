; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_init_file.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_init_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ntfs_file = type { i32, %struct.TYPE_5__, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@BLK_SHR = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i32 0, align 4
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MFT 0x%X is not in use\00", align 1
@AT_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no $DATA in MFT 0x%X\00", align 1
@AF_ALST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grub_ntfs_file*, i32)* @init_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_file(%struct.grub_ntfs_file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.grub_ntfs_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i8*, align 8
  store %struct.grub_ntfs_file* %0, %struct.grub_ntfs_file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %9 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %11 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BLK_SHR, align 4
  %16 = shl i32 %14, %15
  %17 = call i32* @grub_malloc(i32 %16)
  %18 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %19 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %21 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @grub_errno, align 4
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %28 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %27, i32 0, i32 5
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %31 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %35 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %34, i32 0, i32 4
  %36 = call i64 @read_mft(%struct.TYPE_4__* %29, i32* %32, i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @grub_errno, align 4
  store i32 %39, i32* %3, align 4
  br label %104

40:                                               ; preds = %26
  %41 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %42 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = call zeroext i16 @u16at(i32* %43, i32 22)
  store i16 %44, i16* %6, align 2
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @grub_error(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %3, align 4
  br label %104

53:                                               ; preds = %40
  %54 = load i16, i16* %6, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 2
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %98

58:                                               ; preds = %53
  %59 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %60 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %59, i32 0, i32 1
  %61 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %62 = load i32, i32* @AT_DATA, align 4
  %63 = call i8* @locate_attr(%struct.TYPE_5__* %60, %struct.grub_ntfs_file* %61, i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @grub_error(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %3, align 4
  br label %104

70:                                               ; preds = %58
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 8
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %7, align 8
  %77 = call i32 @u32at(i8* %76, i32 16)
  %78 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %79 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  br label %85

80:                                               ; preds = %70
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 @u64at(i8* %81, i32 48)
  %83 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %84 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %80, %75
  %86 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %87 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AF_ALST, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %95 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %85
  br label %103

98:                                               ; preds = %53
  %99 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %100 = getelementptr inbounds %struct.grub_ntfs_file, %struct.grub_ntfs_file* %99, i32 0, i32 1
  %101 = load %struct.grub_ntfs_file*, %struct.grub_ntfs_file** %4, align 8
  %102 = call i32 @init_attr(%struct.TYPE_5__* %100, %struct.grub_ntfs_file* %101)
  br label %103

103:                                              ; preds = %98, %97
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %66, %49, %38, %24
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32* @grub_malloc(i32) #1

declare dso_local i64 @read_mft(%struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local zeroext i16 @u16at(i32*, i32) #1

declare dso_local i32 @grub_error(i32, i8*, i32) #1

declare dso_local i8* @locate_attr(%struct.TYPE_5__*, %struct.grub_ntfs_file*, i32) #1

declare dso_local i32 @u32at(i8*, i32) #1

declare dso_local i32 @u64at(i8*, i32) #1

declare dso_local i32 @init_attr(%struct.TYPE_5__*, %struct.grub_ntfs_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
