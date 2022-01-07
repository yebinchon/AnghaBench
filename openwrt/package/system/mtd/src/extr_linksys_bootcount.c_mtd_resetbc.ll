; ModuleID = '/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_linksys_bootcount.c_mtd_resetbc.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/system/mtd/src/extr_linksys_bootcount.c_mtd_resetbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info_user = type { i32, i32, i32, i64 }
%struct.bootcounter = type { i8*, i32, i8* }
%struct.erase_info_user = type { i32, i32, i32, i64 }

@page = common dso_local global i64 0, align 8
@MEMGETINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unable to obtain mtd_info for given partition name.\00", align 1
@BC_OFFSET_INCREMENT_MIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Offset increment set to %i for writesize of %i\00", align 1
@BOOTCOUNT_MAGIC = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Unexpected magic %08x at offset %08x; aborting.\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Boot-count log full with %i entries; erasing (expected occasionally).\00", align 1
@MEMERASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"Failed to erase boot-count log MTD; ioctl() MEMERASE returned %i\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Failed to write boot-count log entry; pwrite() returned %i\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Boot count sucessfully reset to zero.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtd_resetbc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtd_info_user, align 8
  %4 = alloca %struct.bootcounter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.erase_info_user, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i64, i64* @page, align 8
  %14 = inttoptr i64 %13 to %struct.bootcounter*
  store %struct.bootcounter* %14, %struct.bootcounter** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 (...) @DLOG_OPEN()
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @mtd_check_open(i8* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MEMGETINFO, align 4
  %20 = call i64 @ioctl(i32 %18, i32 %19, %struct.mtd_info_user* %3)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @DLOG_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %138

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BC_OFFSET_INCREMENT_MIN, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @BC_OFFSET_INCREMENT_MIN, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %3, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DLOG_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %33)
  br label %38

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %29
  %39 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %3, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = udiv i32 %40, %41
  store i32 %42, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %82, %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = mul i32 %50, %51
  %53 = call i32 @pread(i32 %48, %struct.bootcounter* %49, i32 24, i32 %52)
  %54 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %55 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** @BOOTCOUNT_MAGIC, align 8
  %58 = icmp ne i8* %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %47
  %60 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %61 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, inttoptr (i64 4294967295 to i8*)
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %66 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul i32 %68, %69
  %71 = call i32 (i8*, ...) @DLOG_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %67, i32 %70)
  store i32 -2, i32* %11, align 4
  br label %138

72:                                               ; preds = %59, %47
  %73 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %74 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, inttoptr (i64 4294967295 to i8*)
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %85

78:                                               ; preds = %72
  %79 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %80 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %43

85:                                               ; preds = %77, %43
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  br label %138

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load i32, i32* %5, align 4
  %95 = call i32 (i8*, ...) @DLOG_NOTICE(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %12, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = getelementptr inbounds %struct.mtd_info_user, %struct.mtd_info_user* %3, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.erase_info_user, %struct.erase_info_user* %12, i32 0, i32 2
  store i32 %98, i32* %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @MEMERASE, align 4
  %102 = bitcast %struct.erase_info_user* %12 to %struct.mtd_info_user*
  %103 = call i64 @ioctl(i32 %100, i32 %101, %struct.mtd_info_user* %102)
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %93
  %108 = load i32, i32* %10, align 4
  %109 = call i32 (i8*, ...) @DLOG_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  store i32 -3, i32* %11, align 4
  br label %138

110:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %89
  %112 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @memset(%struct.bootcounter* %112, i32 255, i32 %113)
  %115 = load i8*, i8** @BOOTCOUNT_MAGIC, align 8
  %116 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %117 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %119 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  %120 = load i8*, i8** @BOOTCOUNT_MAGIC, align 8
  %121 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %122 = getelementptr inbounds %struct.bootcounter, %struct.bootcounter* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.bootcounter*, %struct.bootcounter** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %6, align 4
  %128 = mul i32 %126, %127
  %129 = call i32 @pwrite(i32 %123, %struct.bootcounter* %124, i32 %125, i32 %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %111
  %133 = load i32, i32* @errno, align 4
  %134 = call i32 (i8*, ...) @DLOG_ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  store i32 -4, i32* %11, align 4
  br label %138

135:                                              ; preds = %111
  %136 = call i32 (...) @sync()
  %137 = call i32 (i8*, ...) @DLOG_NOTICE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %135, %132, %107, %88, %64, %22
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @close(i32 %139)
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

declare dso_local i32 @DLOG_OPEN(...) #1

declare dso_local i32 @mtd_check_open(i8*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mtd_info_user*) #1

declare dso_local i32 @DLOG_ERR(i8*, ...) #1

declare dso_local i32 @DLOG_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @pread(i32, %struct.bootcounter*, i32, i32) #1

declare dso_local i32 @DLOG_NOTICE(i8*, ...) #1

declare dso_local i32 @memset(%struct.bootcounter*, i32, i32) #1

declare dso_local i32 @pwrite(i32, %struct.bootcounter*, i32, i32) #1

declare dso_local i32 @sync(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
