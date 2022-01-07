; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_load_default_obj.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_mbedtls_load_default_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i64 }

@FLASH_SECTOR_SIZE = common dso_local global i64 0, align 8
@ESPCONN_INVALID_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"-----BEGIN\00", align 1
@ESPCONN_FORMAT_INIT = common dso_local global i32 0, align 4
@ESPCONN_FORMAT_PEM = common dso_local global i32 0, align 4
@ESPCONN_FORMAT_DER = common dso_local global i32 0, align 4
@ESPCONN_PK = common dso_local global i32 0, align 4
@def_private_key = common dso_local global %struct.TYPE_5__* null, align 8
@def_certificate = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_load_default_obj(i64 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @FLASH_SECTOR_SIZE, align 8
  %19 = mul nsw i64 %17, %18
  %20 = call i32 @spi_flash_read(i64 %19, i64* %10, i32 4)
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @ESPCONN_INVALID_TYPE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = call %struct.TYPE_5__* @mbedtls_parame_new(i32 0)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %9, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %16
  br label %72

30:                                               ; preds = %4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %31 = load i32, i32* @ESPCONN_FORMAT_INIT, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @os_strstr(i8* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  %34 = inttoptr i64 %33 to i8*
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @ESPCONN_FORMAT_PEM, align 4
  store i32 %37, i32* %13, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @ESPCONN_FORMAT_DER, align 4
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @ESPCONN_FORMAT_PEM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.TYPE_5__* @mbedtls_parame_new(i32 %48)
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %9, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @os_memcpy(i8* %55, i8* %56, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @ESPCONN_FORMAT_PEM, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %52
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %62, %52
  br label %71

71:                                               ; preds = %70, %47
  br label %72

72:                                               ; preds = %71, %29
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = icmp ne %struct.TYPE_5__* %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  store i32 1, i32* %11, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ESPCONN_PK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** @def_private_key, align 8
  br label %89

87:                                               ; preds = %75
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** @def_certificate, align 8
  br label %89

89:                                               ; preds = %87, %85
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i32, i32* %11, align 4
  ret i32 %91
}

declare dso_local i32 @spi_flash_read(i64, i64*, i32) #1

declare dso_local %struct.TYPE_5__* @mbedtls_parame_new(i32) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
