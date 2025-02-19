; ModuleID = '/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_read_at_phys.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_read_at_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@DbgKdReadPhysicalMemoryApi = common dso_local global i32 0, align 4
@KD_MAX_PAYLOAD = common dso_local global i32 0, align 4
@KD_PACKET_TYPE_STATE_MANIPULATE = common dso_local global i32 0, align 4
@KD_E_OK = common dso_local global i32 0, align 4
@KD_PACKET_TYPE_ACKNOWLEDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @windbg_read_at_phys(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.TYPE_8__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %4
  store i32 0, i32* %5, align 4
  br label %102

28:                                               ; preds = %22
  %29 = load i32, i32* @DbgKdReadPhysicalMemoryApi, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store i32 %29, i32* %30, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @KD_MAX_PAYLOAD, align 4
  %40 = call i32 @R_MIN(i32 %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @KD_PACKET_TYPE_STATE_MANIPULATE, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = bitcast %struct.TYPE_8__* %10 to i32*
  %54 = call i32 @kd_send_data_packet(i32 %47, i32 %48, i32 %52, i32* %53, i32 40, i32* null, i32 0)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @KD_E_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %102

59:                                               ; preds = %28
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = load i32, i32* @KD_PACKET_TYPE_ACKNOWLEDGE, align 4
  %62 = call i32 @windbg_wait_packet(%struct.TYPE_9__* %60, i32 %61, i32** null)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @KD_E_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %102

67:                                               ; preds = %59
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = load i32, i32* @KD_PACKET_TYPE_STATE_MANIPULATE, align 4
  %70 = call i32 @windbg_wait_packet(%struct.TYPE_9__* %68, i32 %69, i32** %12)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @KD_E_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %5, align 4
  br label %102

75:                                               ; preds = %67
  %76 = load i32*, i32** %12, align 8
  %77 = call %struct.TYPE_8__* @PKT_REQ(i32* %76)
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %11, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @free(i32* %83)
  store i32 0, i32* %5, align 4
  br label %102

85:                                               ; preds = %75
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memcpy(i32* %86, i32 %89, i32 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %13, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @free(i32* %99)
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %85, %82, %74, %66, %58, %27
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @R_MIN(i32, i32) #2

declare dso_local i32 @kd_send_data_packet(i32, i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @windbg_wait_packet(%struct.TYPE_9__*, i32, i32**) #2

declare dso_local %struct.TYPE_8__* @PKT_REQ(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
