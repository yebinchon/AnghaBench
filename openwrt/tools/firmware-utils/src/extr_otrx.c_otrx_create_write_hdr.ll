; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_otrx.c_otrx_create_write_hdr.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_otrx.c_otrx_create_write_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trx_header = type { i32, i8*, i32, i8* }

@TRX_MAGIC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Couldn't write TRX header to %s\0A\00", align 1
@trx_path = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@TRX_FLAGS_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.trx_header*)* @otrx_create_write_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @otrx_create_write_hdr(i32* %0, %struct.trx_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.trx_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1024 x i32], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.trx_header* %1, %struct.trx_header** %5, align 8
  %10 = load i32, i32* @TRX_MAGIC, align 4
  %11 = call i8* @cpu_to_le32(i32 %10)
  %12 = load %struct.trx_header*, %struct.trx_header** %5, align 8
  %13 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %12, i32 0, i32 3
  store i8* %11, i8** %13, align 8
  %14 = load %struct.trx_header*, %struct.trx_header** %5, align 8
  %15 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @SEEK_SET, align 4
  %18 = call i32 @fseek(i32* %16, i64 0, i32 %17)
  %19 = load %struct.trx_header*, %struct.trx_header** %5, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @fwrite(%struct.trx_header* %19, i32 1, i32 32, i32* %20)
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 32
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** @trx_path, align 8
  %27 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %77

30:                                               ; preds = %2
  %31 = load %struct.trx_header*, %struct.trx_header** %5, align 8
  %32 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @le32_to_cpu(i32 %33)
  store i64 %34, i64* %7, align 8
  store i32 -1, i32* %9, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* @TRX_FLAGS_OFFSET, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @fseek(i32* %35, i64 %36, i32 %37)
  %39 = load i64, i64* @TRX_FLAGS_OFFSET, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %49, %30
  %43 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @otrx_min(i32 4096, i64 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @fread(i32* %43, i32 1, i32 %45, i32* %46)
  store i64 %47, i64* %6, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds [1024 x i32], [1024 x i32]* %8, i64 0, i64 0
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @otrx_crc32(i32 %50, i32* %51, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %7, align 8
  br label %42

57:                                               ; preds = %42
  %58 = load i32, i32* %9, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.trx_header*, %struct.trx_header** %5, align 8
  %61 = getelementptr inbounds %struct.trx_header, %struct.trx_header* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* @SEEK_SET, align 4
  %64 = call i32 @fseek(i32* %62, i64 0, i32 %63)
  %65 = load %struct.trx_header*, %struct.trx_header** %5, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = call i64 @fwrite(%struct.trx_header* %65, i32 1, i32 32, i32* %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 32
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** @trx_path, align 8
  %73 = call i32 @fprintf(i32 %71, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %77

76:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %70, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @fwrite(%struct.trx_header*, i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @otrx_min(i32, i64) #1

declare dso_local i32 @otrx_crc32(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
