; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fb.c_grub_fbfs_mount.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fb.c_grub_fbfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grub_fb_data = type { i8*, i32, i32 }
%struct.fb_mbr = type { i64, i32, i32, i32 }
%struct.fb_data = type { i32, i32, i64, i64, i32 }

@FB_AR_MAGIC_LONG = common dso_local global i64 0, align 8
@FB_MAGIC_LONG = common dso_local global i64 0, align 8
@FB_VER_MAJOR = common dso_local global i64 0, align 8
@FB_VER_MINOR = common dso_local global i64 0, align 8
@GRUB_ERR_BAD_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"not a fb filesystem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.grub_fb_data* (i32)* @grub_fbfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.grub_fb_data* @grub_fbfs_mount(i32 %0) #0 {
  %2 = alloca %struct.grub_fb_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_mbr*, align 8
  %5 = alloca %struct.fb_data*, align 8
  %6 = alloca [512 x i8], align 16
  %7 = alloca %struct.grub_fb_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %20 = call i64 @grub_disk_read(i32 %18, i32 0, i32 0, i32 512, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %140

23:                                               ; preds = %1
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %25 = bitcast i8* %24 to %struct.fb_mbr*
  store %struct.fb_mbr* %25, %struct.fb_mbr** %4, align 8
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %27 = bitcast i8* %26 to %struct.fb_data*
  store %struct.fb_data* %27, %struct.fb_data** %5, align 8
  %28 = bitcast [512 x i8]* %6 to i64*
  store i64* %28, i64** %17, align 8
  %29 = load i64*, i64** %17, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FB_AR_MAGIC_LONG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %69

34:                                               ; preds = %23
  %35 = load %struct.fb_mbr*, %struct.fb_mbr** %4, align 8
  %36 = getelementptr inbounds %struct.fb_mbr, %struct.fb_mbr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FB_MAGIC_LONG, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load %struct.fb_mbr*, %struct.fb_mbr** %4, align 8
  %42 = getelementptr inbounds %struct.fb_mbr, %struct.fb_mbr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 43605
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %34
  br label %140

46:                                               ; preds = %40
  %47 = load %struct.fb_mbr*, %struct.fb_mbr** %4, align 8
  %48 = getelementptr inbounds %struct.fb_mbr, %struct.fb_mbr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load %struct.fb_mbr*, %struct.fb_mbr** %4, align 8
  %51 = getelementptr inbounds %struct.fb_mbr, %struct.fb_mbr* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %55, %56
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %59 = call i64 @grub_disk_read(i32 %53, i32 %57, i32 0, i32 512, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  br label %140

62:                                               ; preds = %46
  %63 = load %struct.fb_data*, %struct.fb_data** %5, align 8
  %64 = getelementptr inbounds %struct.fb_data, %struct.fb_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %9, align 4
  %66 = load %struct.fb_data*, %struct.fb_data** %5, align 8
  %67 = getelementptr inbounds %struct.fb_data, %struct.fb_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %62, %33
  %70 = load %struct.fb_data*, %struct.fb_data** %5, align 8
  %71 = getelementptr inbounds %struct.fb_data, %struct.fb_data* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FB_VER_MAJOR, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.fb_data*, %struct.fb_data** %5, align 8
  %77 = getelementptr inbounds %struct.fb_data, %struct.fb_data* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @FB_VER_MINOR, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %69
  br label %140

82:                                               ; preds = %75
  %83 = load %struct.fb_data*, %struct.fb_data** %5, align 8
  %84 = getelementptr inbounds %struct.fb_data, %struct.fb_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 %86, 9
  %88 = sext i32 %87 to i64
  %89 = add i64 16, %88
  %90 = trunc i64 %89 to i32
  %91 = call %struct.grub_fb_data* @grub_malloc(i32 %90)
  store %struct.grub_fb_data* %91, %struct.grub_fb_data** %7, align 8
  %92 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %93 = icmp ne %struct.grub_fb_data* %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %82
  br label %140

95:                                               ; preds = %82
  %96 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %97 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %14, align 8
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %12, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 %106, 9
  %108 = load i8*, i8** %14, align 8
  %109 = call i64 @grub_disk_read(i32 %99, i32 %105, i32 0, i32 %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %95
  %112 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %113 = call i32 @grub_free(%struct.grub_fb_data* %112)
  br label %140

114:                                              ; preds = %95
  %115 = load i8*, i8** %14, align 8
  store i8* %115, i8** %16, align 8
  store i8* %115, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %129, %114
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sub nsw i32 %118, 1
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 510
  store i8* %123, i8** %15, align 8
  %124 = load i8*, i8** %16, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 512
  store i8* %125, i8** %16, align 8
  %126 = load i8*, i8** %15, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = call i32 @grub_memcpy(i8* %126, i8* %127, i32 510)
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %13, align 4
  br label %116

132:                                              ; preds = %116
  %133 = load i32, i32* %12, align 4
  %134 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %135 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  %138 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load %struct.grub_fb_data*, %struct.grub_fb_data** %7, align 8
  store %struct.grub_fb_data* %139, %struct.grub_fb_data** %2, align 8
  br label %143

140:                                              ; preds = %111, %94, %81, %61, %45, %22
  %141 = load i32, i32* @GRUB_ERR_BAD_FS, align 4
  %142 = call i32 @grub_error(i32 %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.grub_fb_data* null, %struct.grub_fb_data** %2, align 8
  br label %143

143:                                              ; preds = %140, %132
  %144 = load %struct.grub_fb_data*, %struct.grub_fb_data** %2, align 8
  ret %struct.grub_fb_data* %144
}

declare dso_local i64 @grub_disk_read(i32, i32, i32, i32, i8*) #1

declare dso_local %struct.grub_fb_data* @grub_malloc(i32) #1

declare dso_local i32 @grub_free(%struct.grub_fb_data*) #1

declare dso_local i32 @grub_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @grub_error(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
