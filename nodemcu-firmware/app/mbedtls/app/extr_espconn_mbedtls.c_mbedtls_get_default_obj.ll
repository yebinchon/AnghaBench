; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_get_default_obj.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_get_default_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8* }

@.str = private unnamed_addr constant [11 x i8] c"-----BEGIN\00", align 1
@ESPCONN_PK = common dso_local global i64 0, align 8
@def_private_key = common dso_local global %struct.TYPE_4__* null, align 8
@def_certificate = common dso_local global %struct.TYPE_4__* null, align 8
@FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@DATA_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i64, i64*)* @mbedtls_get_default_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mbedtls_get_default_obj(i64* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* null, i8** %8, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ESPCONN_PK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @def_private_key, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @def_certificate, align 8
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 4
  %29 = call i64 @os_zalloc(i64 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %23
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FLASH_SECTOR_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i64*
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @spi_flash_read(i32 %38, i64* %40, i64 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @os_strstr(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %45 = inttoptr i64 %44 to i8*
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %10, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = sub nsw i64 %51, 1
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %47, %33
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i64, i64* %10, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  br label %66

58:                                               ; preds = %18
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %8, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %58, %55
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i64*, i64** %4, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i8*, i8** %8, align 8
  ret i8* %72
}

declare dso_local i64 @os_zalloc(i64) #1

declare dso_local i32 @spi_flash_read(i32, i64*, i64) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
