; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_espconn_ssl_read_param_from_flash.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/mbedtls/app/extr_espconn_mbedtls.c_espconn_ssl_read_param_from_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }

@ESPCONN_SECURE_MAX_SIZE = common dso_local global i64 0, align 8
@ssl_option = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, %struct.TYPE_16__*)* @espconn_ssl_read_param_from_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @espconn_ssl_read_param_from_flash(i8* %0, i64 %1, i64 %2, %struct.TYPE_16__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* @ESPCONN_SECURE_MAX_SIZE, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %54

20:                                               ; preds = %13
  store i32 59, i32* %10, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %44 [
    i32 130, label %24
    i32 128, label %34
  ]

24:                                               ; preds = %20
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %32 [
    i32 132, label %28
    i32 131, label %30
    i32 129, label %30
  ]

28:                                               ; preds = %24
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ssl_option, i32 0, i32 1, i32 1, i32 0), align 4
  store i32 %29, i32* %10, align 4
  br label %33

30:                                               ; preds = %24, %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ssl_option, i32 0, i32 1, i32 0, i32 0), align 4
  store i32 %31, i32* %10, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %54

33:                                               ; preds = %30, %28
  br label %45

34:                                               ; preds = %20
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %42 [
    i32 132, label %38
    i32 131, label %40
    i32 129, label %40
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ssl_option, i32 0, i32 0, i32 1, i32 0), align 4
  store i32 %39, i32* %10, align 4
  br label %43

40:                                               ; preds = %34, %34
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ssl_option, i32 0, i32 0, i32 0, i32 0), align 4
  store i32 %41, i32* %10, align 4
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %54

43:                                               ; preds = %40, %38
  br label %45

44:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %54

45:                                               ; preds = %43, %33
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %46, 4096
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @spi_flash_read(i64 %50, i8* %51, i64 %52)
  store i32 1, i32* %5, align 4
  br label %54

54:                                               ; preds = %45, %44, %42, %32, %19
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @spi_flash_read(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
