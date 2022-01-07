; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_read_attr.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_ntfs.c_read_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_ntfs_attr = type { i8*, i8*, i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@AF_ALST = common dso_local global i32 0, align 4
@BLK_SHR = common dso_local global i32 0, align 4
@grub_errno = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"attribute not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.grub_ntfs_attr*, i8*, i64, i32, i32, void (i64, i32, i32, i8*)*, i8*, i32)* @read_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_attr(%struct.grub_ntfs_attr* %0, i8* %1, i64 %2, i32 %3, i32 %4, void (i64, i32, i32, i8*)* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.grub_ntfs_attr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca void (i64, i32, i32, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.grub_ntfs_attr* %0, %struct.grub_ntfs_attr** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store void (i64, i32, i32, i8*)* %5, void (i64, i32, i32, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %23 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %24 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %17, align 8
  %26 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %27 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %30 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %32 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %18, align 1
  %35 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %36 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AF_ALST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %8
  %42 = load i64, i64* %11, align 8
  %43 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %44 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BLK_SHR, align 4
  %51 = shl i32 %49, %50
  %52 = call i64 @grub_divmod64(i64 %42, i32 %51, i32 0)
  store i64 %52, i64* %22, align 8
  %53 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %54 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %57 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @u16at(i8* %58, i32 4)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %55, i64 %60
  store i8* %61, i8** %21, align 8
  br label %62

62:                                               ; preds = %82, %41
  %63 = load i8*, i8** %21, align 8
  %64 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %65 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ult i8* %63, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i8*, i8** %21, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i8, i8* %18, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %91

76:                                               ; preds = %68
  %77 = load i8*, i8** %21, align 8
  %78 = call i64 @u32at(i8* %77, i32 8)
  %79 = load i64, i64* %22, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %91

82:                                               ; preds = %76
  %83 = load i8*, i8** %21, align 8
  %84 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %85 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %21, align 8
  %87 = call i32 @u16at(i8* %86, i32 4)
  %88 = load i8*, i8** %21, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %21, align 8
  br label %62

91:                                               ; preds = %81, %75, %62
  br label %92

92:                                               ; preds = %91, %8
  %93 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %94 = load i8, i8* %18, align 1
  %95 = call i8* @find_attr(%struct.grub_ntfs_attr* %93, i8 zeroext %94)
  store i8* %95, i8** %19, align 8
  %96 = load i8*, i8** %19, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %100 = load i8*, i8** %19, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load void (i64, i32, i32, i8*)*, void (i64, i32, i32, i8*)** %14, align 8
  %106 = load i8*, i8** %15, align 8
  %107 = load i32, i32* %16, align 4
  %108 = call i64 @read_data(%struct.grub_ntfs_attr* %99, i8* %100, i8* %101, i64 %102, i32 %103, i32 %104, void (i64, i32, i32, i8*)* %105, i8* %106, i32 %107)
  store i64 %108, i64* %20, align 8
  br label %119

109:                                              ; preds = %92
  %110 = load i64, i64* @grub_errno, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load i64, i64* @grub_errno, align 8
  br label %117

114:                                              ; preds = %109
  %115 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %116 = call i64 @grub_error(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %112
  %118 = phi i64 [ %113, %112 ], [ %116, %114 ]
  store i64 %118, i64* %20, align 8
  br label %119

119:                                              ; preds = %117, %98
  %120 = load i8*, i8** %17, align 8
  %121 = load %struct.grub_ntfs_attr*, %struct.grub_ntfs_attr** %9, align 8
  %122 = getelementptr inbounds %struct.grub_ntfs_attr, %struct.grub_ntfs_attr* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load i64, i64* %20, align 8
  ret i64 %123
}

declare dso_local i64 @grub_divmod64(i64, i32, i32) #1

declare dso_local i32 @u16at(i8*, i32) #1

declare dso_local i64 @u32at(i8*, i32) #1

declare dso_local i8* @find_attr(%struct.grub_ntfs_attr*, i8 zeroext) #1

declare dso_local i64 @read_data(%struct.grub_ntfs_attr*, i8*, i8*, i64, i32, i32, void (i64, i32, i32, i8*)*, i8*, i32) #1

declare dso_local i64 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
