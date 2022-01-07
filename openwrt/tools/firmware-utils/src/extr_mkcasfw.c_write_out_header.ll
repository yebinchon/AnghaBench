; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_write_out_header.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkcasfw.c_write_out_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%union.file_hdr = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@errno = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"fseek failed on output file\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@board = common dso_local global %struct.TYPE_16__* null, align 8
@header = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@kernel_image = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@CAS_MAGIC1 = common dso_local global i32 0, align 4
@CAS_MAGIC2 = common dso_local global i32 0, align 4
@CAS_MAGIC3 = common dso_local global i32 0, align 4
@fs_image = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_out_header(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %union.file_hdr, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 0, i64* @errno, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @SEEK_SET, align 4
  %8 = call i64 @fseek(i32* %6, i32 0, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @ERRS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ERR_FATAL, align 4
  store i32 %12, i32* %2, align 4
  br label %94

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** @board, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %92 [
    i32 129, label %17
    i32 128, label %53
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @header, i32 0, i32 1, i32 0), align 4
  %19 = call i8* @HOST_TO_LE32(i32 %18)
  %20 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @header, i32 0, i32 1, i32 1), align 4
  %23 = call i8* @HOST_TO_LE32(i32 %22)
  %24 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = call i8* @HOST_TO_LE32(i32 64)
  %27 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kernel_image, i32 0, i32 0), align 4
  %30 = call i8* @HOST_TO_LE32(i32 %29)
  %31 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kernel_image, i32 0, i32 1), align 4
  %34 = call i8* @HOST_TO_LE32(i32 %33)
  %35 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @CAS_MAGIC1, align 4
  %38 = call i8* @HOST_TO_LE32(i32 %37)
  %39 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @CAS_MAGIC2, align 4
  %42 = call i8* @HOST_TO_LE32(i32 %41)
  %43 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @CAS_MAGIC3, align 4
  %46 = call i8* @HOST_TO_LE32(i32 %45)
  %47 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = bitcast %union.file_hdr* %4 to %struct.TYPE_10__*
  %51 = bitcast %struct.TYPE_10__* %50 to i32*
  %52 = call i32 @write_out_data(i32* %49, i32* %51, i32 64, i32* null)
  store i32 %52, i32* %5, align 4
  br label %92

53:                                               ; preds = %13
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @header, i32 0, i32 0, i32 0), align 4
  %55 = call i8* @HOST_TO_LE32(i32 %54)
  %56 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @header, i32 0, i32 0, i32 1), align 4
  %59 = call i8* @HOST_TO_LE32(i32 %58)
  %60 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = call i8* @HOST_TO_LE32(i32 64)
  %63 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kernel_image, i32 0, i32 0), align 4
  %66 = call i8* @HOST_TO_LE32(i32 %65)
  %67 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kernel_image, i32 0, i32 1), align 4
  %70 = call i8* @HOST_TO_LE32(i32 %69)
  %71 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @kernel_image, i32 0, i32 0), align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 64, %74
  %76 = trunc i64 %75 to i32
  %77 = call i8* @HOST_TO_LE32(i32 %76)
  %78 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fs_image, i32 0, i32 0), align 4
  %81 = call i8* @HOST_TO_LE32(i32 %80)
  %82 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @fs_image, i32 0, i32 1), align 4
  %85 = call i8* @HOST_TO_LE32(i32 %84)
  %86 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i32*, i32** %3, align 8
  %89 = bitcast %union.file_hdr* %4 to %struct.TYPE_12__*
  %90 = bitcast %struct.TYPE_12__* %89 to i32*
  %91 = call i32 @write_out_data(i32* %88, i32* %90, i32 64, i32* null)
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %13, %53, %17
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %10
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ERRS(i8*) #1

declare dso_local i8* @HOST_TO_LE32(i32) #1

declare dso_local i32 @write_out_data(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
