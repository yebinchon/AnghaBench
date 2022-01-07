; ModuleID = '/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_write_at_phys.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_write_at_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@KD_MAX_PAYLOAD = common dso_local global i64 0, align 8
@DbgKdWritePhysicalMemoryApi = common dso_local global i32 0, align 4
@KD_PACKET_TYPE_STATE_MANIPULATE = common dso_local global i32 0, align 4
@KD_E_OK = common dso_local global i32 0, align 4
@KD_PACKET_TYPE_ACKNOWLEDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @windbg_write_at_phys(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17, %4
  store i32 0, i32* %5, align 4
  br label %98

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = load i64, i64* @KD_MAX_PAYLOAD, align 8
  %31 = sub i64 %30, 32
  %32 = call i32 @R_MIN(i32 %29, i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = call i32 @memset(%struct.TYPE_9__* %11, i32 0, i32 32)
  %34 = load i32, i32* @DbgKdWritePhysicalMemoryApi, align 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %13, align 4
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @KD_PACKET_TYPE_STATE_MANIPULATE, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = bitcast %struct.TYPE_9__* %11 to i32*
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @kd_send_data_packet(i32 %50, i32 %51, i32 %55, i32* %56, i32 32, i32* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @KD_E_OK, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %98

64:                                               ; preds = %28
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = load i32, i32* @KD_PACKET_TYPE_ACKNOWLEDGE, align 4
  %67 = call i32 @windbg_wait_packet(%struct.TYPE_10__* %65, i32 %66, i32** null)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @KD_E_OK, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %98

72:                                               ; preds = %64
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = load i32, i32* @KD_PACKET_TYPE_STATE_MANIPULATE, align 4
  %75 = call i32 @windbg_wait_packet(%struct.TYPE_10__* %73, i32 %74, i32** %10)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @KD_E_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %98

80:                                               ; preds = %72
  %81 = load i32*, i32** %10, align 8
  %82 = call %struct.TYPE_9__* @PKT_REQ(i32* %81)
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %14, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @free(i32* %88)
  store i32 0, i32* %5, align 4
  br label %98

90:                                               ; preds = %80
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @free(i32* %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %90, %87, %79, %71, %63, %27
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @R_MIN(i32, i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @kd_send_data_packet(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @windbg_wait_packet(%struct.TYPE_10__*, i32, i32**) #1

declare dso_local %struct.TYPE_9__* @PKT_REQ(i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
