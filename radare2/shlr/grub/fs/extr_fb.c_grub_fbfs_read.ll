; ModuleID = '/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fb.c_grub_fbfs_read.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/grub/fs/extr_fb.c_grub_fbfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.grub_fb_data*, i32, i64, %struct.TYPE_7__* }
%struct.grub_fb_data = type { i64, i64, %struct.fbm_file* }
%struct.fbm_file = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i32)* @grub_fbfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grub_fbfs_read(%struct.TYPE_8__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fbm_file*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.grub_fb_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %9, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load %struct.grub_fb_data*, %struct.grub_fb_data** %32, align 8
  store %struct.grub_fb_data* %33, %struct.grub_fb_data** %13, align 8
  %34 = load %struct.grub_fb_data*, %struct.grub_fb_data** %13, align 8
  %35 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %34, i32 0, i32 2
  %36 = load %struct.fbm_file*, %struct.fbm_file** %35, align 8
  store %struct.fbm_file* %36, %struct.fbm_file** %8, align 8
  %37 = load %struct.fbm_file*, %struct.fbm_file** %8, align 8
  %38 = getelementptr inbounds %struct.fbm_file, %struct.fbm_file* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.grub_fb_data*, %struct.grub_fb_data** %13, align 8
  %41 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %3
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = load %struct.fbm_file*, %struct.fbm_file** %8, align 8
  %47 = getelementptr inbounds %struct.fbm_file, %struct.fbm_file* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.grub_fb_data*, %struct.grub_fb_data** %13, align 8
  %50 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @grub_disk_read_ex(%struct.TYPE_9__* %45, i64 %52, i64 %55, i32 %56, i8* %57, i32 %60)
  store i64 %61, i64* %14, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %14, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %44
  br label %69

67:                                               ; preds = %44
  %68 = load i32, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ -1, %66 ], [ %68, %67 ]
  store i32 %70, i32* %4, align 4
  br label %132

71:                                               ; preds = %3
  %72 = load %struct.fbm_file*, %struct.fbm_file** %8, align 8
  %73 = getelementptr inbounds %struct.fbm_file, %struct.fbm_file* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = sdiv i32 %78, 510
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %74, %80
  %82 = load %struct.grub_fb_data*, %struct.grub_fb_data** %13, align 8
  %83 = getelementptr inbounds %struct.grub_fb_data, %struct.grub_fb_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = srem i32 %90, 510
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %124, %71
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %98, %99
  %101 = icmp sgt i32 %100, 510
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 510, %103
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @grub_disk_read(%struct.TYPE_9__* %106, i32 %107, i32 %108, i32 %109, i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 -1, i32* %11, align 4
  br label %128

114:                                              ; preds = %105
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = load i8*, i8** %6, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i32, i32* %15, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8, i8* %121, i64 %122
  store i8* %123, i8** %6, align 8
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %93

128:                                              ; preds = %113, %93
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %69
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @grub_disk_read_ex(%struct.TYPE_9__*, i64, i64, i32, i8*, i32) #1

declare dso_local i64 @grub_disk_read(%struct.TYPE_9__*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
