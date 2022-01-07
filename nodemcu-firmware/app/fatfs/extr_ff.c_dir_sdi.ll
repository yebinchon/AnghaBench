; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_dir_sdi.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_dir_sdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i64, i64 }

@FF_FS_EXFAT = common dso_local global i64 0, align 8
@FS_EXFAT = common dso_local global i64 0, align 8
@MAX_DIR_EX = common dso_local global i64 0, align 8
@MAX_DIR = common dso_local global i64 0, align 8
@SZDIRE = common dso_local global i32 0, align 4
@FR_INT_ERR = common dso_local global i32 0, align 4
@FS_FAT32 = common dso_local global i64 0, align 8
@FR_DISK_ERR = common dso_local global i32 0, align 4
@FR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @dir_sdi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_sdi(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i64, i64* @FF_FS_EXFAT, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FS_EXFAT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @MAX_DIR_EX, align 8
  br label %26

24:                                               ; preds = %16, %2
  %25 = load i64, i64* @MAX_DIR, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  %28 = trunc i64 %27 to i32
  %29 = icmp sge i32 %13, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SZDIRE, align 4
  %33 = srem i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %26
  %36 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %36, i32* %3, align 4
  br label %158

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %37
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @FS_FAT32, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %7, align 4
  %57 = load i64, i64* @FF_FS_EXFAT, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %53
  br label %64

64:                                               ; preds = %63, %47, %37
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @SZDIRE, align 4
  %70 = sdiv i32 %68, %69
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %76, i32* %3, align 4
  br label %158

77:                                               ; preds = %67
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  br label %126

84:                                               ; preds = %64
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = call i32 @SS(%struct.TYPE_7__* %89)
  %91 = mul nsw i32 %88, %90
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %116, %84
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @get_fat(%struct.TYPE_9__* %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @FR_DISK_ERR, align 4
  store i32 %104, i32* %3, align 4
  br label %158

105:                                              ; preds = %96
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108, %105
  %115 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %115, i32* %3, align 4
  br label %158

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %5, align 4
  %119 = sub nsw i32 %118, %117
  store i32 %119, i32* %5, align 4
  br label %92

120:                                              ; preds = %92
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %122 = load i32, i32* %7, align 4
  %123 = call i64 @clst2sect(%struct.TYPE_7__* %121, i32 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %120, %77
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %126
  %135 = load i32, i32* @FR_INT_ERR, align 4
  store i32 %135, i32* %3, align 4
  br label %158

136:                                              ; preds = %126
  %137 = load i32, i32* %5, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %139 = call i32 @SS(%struct.TYPE_7__* %138)
  %140 = sdiv i32 %137, %139
  %141 = sext i32 %140 to i64
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %151 = call i32 @SS(%struct.TYPE_7__* %150)
  %152 = srem i32 %149, %151
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %148, %153
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* @FR_OK, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %136, %134, %114, %103, %75, %35
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @SS(%struct.TYPE_7__*) #1

declare dso_local i32 @get_fat(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @clst2sect(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
