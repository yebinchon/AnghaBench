; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_verifyHeader.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_verifyHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lsapi_packet_header = type { i64, i64, i8, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@LSAPI_VERSION_B0 = common dso_local global i64 0, align 8
@LSAPI_VERSION_B1 = common dso_local global i64 0, align 8
@LSAPI_ENDIAN = common dso_local global i32 0, align 4
@LSAPI_ENDIAN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lsapi_packet_header*, i8)* @verifyHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verifyHeader(%struct.lsapi_packet_header* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lsapi_packet_header*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.lsapi_packet_header* %0, %struct.lsapi_packet_header** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load i64, i64* @LSAPI_VERSION_B0, align 8
  %8 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %9 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %26, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* @LSAPI_VERSION_B1, align 8
  %14 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %15 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %22 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 8
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %12, %2
  store i32 -1, i32* %3, align 4
  br label %87

27:                                               ; preds = %18
  %28 = load i32, i32* @LSAPI_ENDIAN, align 4
  %29 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %30 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LSAPI_ENDIAN_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %28, %33
  br i1 %34, label %35, label %82

35:                                               ; preds = %27
  %36 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %37 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  store i8 %41, i8* %6, align 1
  %42 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %43 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  %47 = load i8, i8* %46, align 1
  %48 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %49 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  store i8 %47, i8* %52, align 1
  %53 = load i8, i8* %6, align 1
  %54 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %55 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  store i8 %53, i8* %58, align 1
  %59 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %60 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %6, align 1
  %65 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %66 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = load i8, i8* %69, align 1
  %71 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %72 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8 %70, i8* %75, align 1
  %76 = load i8, i8* %6, align 1
  %77 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %78 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8 %76, i8* %81, align 1
  br label %82

82:                                               ; preds = %35, %27
  %83 = load %struct.lsapi_packet_header*, %struct.lsapi_packet_header** %4, align 8
  %84 = getelementptr inbounds %struct.lsapi_packet_header, %struct.lsapi_packet_header* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
