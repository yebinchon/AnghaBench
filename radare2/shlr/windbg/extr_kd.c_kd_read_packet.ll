; ModuleID = '/home/carl/AnghaBench/radare2/shlr/windbg/extr_kd.c_kd_read_packet.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/windbg/extr_kd.c_kd_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32 }

@KD_E_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid leader %08x\0A\00", align 1
@KD_E_MALFORMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Checksum mismatch!\0A\00", align 1
@KD_PACKET_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Missing trailer 0xAA\0A\00", align 1
@KD_PACKET_TYPE_ACKNOWLEDGE = common dso_local global i32 0, align 4
@KD_E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kd_read_packet(i8* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %9, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast %struct.TYPE_5__* %6 to i32*
  %12 = call i64 @iob_read(i8* %10, i32* %11, i32 32)
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @KD_E_IOERR, align 4
  store i32 %15, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = call i32 @kd_packet_is_valid(%struct.TYPE_5__* %6)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i32, i32* @KD_E_MALFORMED, align 4
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = add i64 32, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32* @malloc(i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @KD_E_IOERR, align 4
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @memcpy(i32* %36, %struct.TYPE_5__* %6, i32 32)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 32
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @iob_read(i8* %42, i32* %44, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 32
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @kd_data_checksum(i32* %52, i32 %54)
  %56 = icmp ne i64 %50, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load i32, i32* @KD_E_MALFORMED, align 4
  store i32 %61, i32* %3, align 4
  br label %91

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @KD_PACKET_DATA, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = call i64 @iob_read(i8* %68, i32* %8, i32 1)
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 170
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @free(i32* %74)
  %76 = load i32, i32* @KD_E_MALFORMED, align 4
  store i32 %76, i32* %3, align 4
  br label %91

77:                                               ; preds = %67
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* @KD_PACKET_TYPE_ACKNOWLEDGE, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = bitcast i32* %80 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, -2049
  %85 = call i32 @kd_send_ctrl_packet(i8* %78, i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %77, %62
  %87 = load i32*, i32** %7, align 8
  %88 = bitcast i32* %87 to %struct.TYPE_5__*
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %89, align 8
  %90 = load i32, i32* @KD_E_OK, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %86, %72, %57, %33, %19, %14
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @iob_read(i8*, i32*, i32) #1

declare dso_local i32 @kd_packet_is_valid(%struct.TYPE_5__*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @kd_data_checksum(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @kd_send_ctrl_packet(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
