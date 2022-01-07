; ModuleID = '/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_bkpt.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/windbg/extr_windbg.c_windbg_bkpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@DbgKdWriteBreakPointApi = common dso_local global i32 0, align 4
@DbgKdRestoreBreakPointApi = common dso_local global i32 0, align 4
@KD_PACKET_TYPE_STATE_MANIPULATE = common dso_local global i32 0, align 4
@KD_E_OK = common dso_local global i32 0, align 4
@KD_PACKET_TYPE_ACKNOWLEDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @windbg_bkpt(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 28, i1 false)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19, %5
  store i32 0, i32* %6, align 4
  br label %112

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @DbgKdWriteBreakPointApi, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @DbgKdRestoreBreakPointApi, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %55

50:                                               ; preds = %37
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @KD_PACKET_TYPE_STATE_MANIPULATE, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = bitcast %struct.TYPE_10__* %12 to i32*
  %65 = call i32 @kd_send_data_packet(i32 %58, i32 %59, i32 %63, i32* %64, i32 28, i32* null, i32 0)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @KD_E_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %112

70:                                               ; preds = %55
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = load i32, i32* @KD_PACKET_TYPE_ACKNOWLEDGE, align 4
  %73 = call i32 @windbg_wait_packet(%struct.TYPE_11__* %71, i32 %72, i32** null)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @KD_E_OK, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %112

78:                                               ; preds = %70
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %80 = load i32, i32* @KD_PACKET_TYPE_STATE_MANIPULATE, align 4
  %81 = call i32 @windbg_wait_packet(%struct.TYPE_11__* %79, i32 %80, i32** %13)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @KD_E_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %112

86:                                               ; preds = %78
  %87 = load i32*, i32** %13, align 8
  %88 = call %struct.TYPE_10__* @PKT_REQ(i32* %87)
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %15, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @free(i32* %94)
  store i32 0, i32* %6, align 4
  br label %112

96:                                               ; preds = %86
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %14, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @free(i32* %109)
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %96, %93, %85, %77, %69, %29
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kd_send_data_packet(i32, i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @windbg_wait_packet(%struct.TYPE_11__*, i32, i32**) #2

declare dso_local %struct.TYPE_10__* @PKT_REQ(i32*) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
