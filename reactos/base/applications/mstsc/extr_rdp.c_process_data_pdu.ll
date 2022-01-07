; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_data_pdu.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_data_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.stream }
%struct.stream = type { i32*, i32*, i32, i32*, i32* }

@g_mppc_dict = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@RDP_MPPC_COMPRESSED = common dso_local global i32 0, align 4
@RDP_MPPC_DICT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"error decompressed packet size exceeds max\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error while decompressing packet\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Received Control PDU\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Received Sync PDU\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Received Logon PDU\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Automatic reconnect using cookie, failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"data PDU %d\0A\00", align 1
@False = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stream*, i64*)* @process_data_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_data_pdu(%struct.stream* %0, i64* %1) #0 {
  %3 = alloca %struct.stream*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.stream*, align 8
  store %struct.stream* %0, %struct.stream** %3, align 8
  store i64* %1, i64** %4, align 8
  store %struct.stream* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mppc_dict, i32 0, i32 1), %struct.stream** %11, align 8
  %12 = load %struct.stream*, %struct.stream** %3, align 8
  %13 = call i32 @in_uint8s(%struct.stream* %12, i32 6)
  %14 = load %struct.stream*, %struct.stream** %3, align 8
  %15 = load i64, i64* %8, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @in_uint16_le(%struct.stream* %14, i32 %16)
  %18 = load %struct.stream*, %struct.stream** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @in_uint8(%struct.stream* %18, i32 %19)
  %21 = load %struct.stream*, %struct.stream** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @in_uint8(%struct.stream* %21, i32 %22)
  %24 = load %struct.stream*, %struct.stream** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @in_uint16_le(%struct.stream* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 18
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @RDP_MPPC_COMPRESSED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %92

33:                                               ; preds = %2
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @RDP_MPPC_DICT_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load %struct.stream*, %struct.stream** %3, align 8
  %41 = getelementptr inbounds %struct.stream, %struct.stream* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @mppc_expand(i32* %42, i32 %43, i32 %44, i64* %9, i64* %10)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %39
  %50 = load %struct.stream*, %struct.stream** %11, align 8
  %51 = getelementptr inbounds %struct.stream, %struct.stream* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i64 @xrealloc(i32* %52, i64 %53)
  %55 = inttoptr i64 %54 to i32*
  %56 = load %struct.stream*, %struct.stream** %11, align 8
  %57 = getelementptr inbounds %struct.stream, %struct.stream* %56, i32 0, i32 1
  store i32* %55, i32** %57, align 8
  %58 = load %struct.stream*, %struct.stream** %11, align 8
  %59 = getelementptr inbounds %struct.stream, %struct.stream* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_mppc_dict, i32 0, i32 0), align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %61, %62
  %64 = inttoptr i64 %63 to i8*
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @memcpy(i32* %60, i8* %64, i64 %65)
  %67 = load i64, i64* %10, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.stream*, %struct.stream** %11, align 8
  %70 = getelementptr inbounds %struct.stream, %struct.stream* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.stream*, %struct.stream** %11, align 8
  %72 = getelementptr inbounds %struct.stream, %struct.stream* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.stream*, %struct.stream** %11, align 8
  %75 = getelementptr inbounds %struct.stream, %struct.stream* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load %struct.stream*, %struct.stream** %11, align 8
  %80 = getelementptr inbounds %struct.stream, %struct.stream* %79, i32 0, i32 3
  store i32* %78, i32** %80, align 8
  %81 = load %struct.stream*, %struct.stream** %11, align 8
  %82 = getelementptr inbounds %struct.stream, %struct.stream* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.stream*, %struct.stream** %11, align 8
  %85 = getelementptr inbounds %struct.stream, %struct.stream* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.stream*, %struct.stream** %11, align 8
  %87 = getelementptr inbounds %struct.stream, %struct.stream* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.stream*, %struct.stream** %11, align 8
  %90 = getelementptr inbounds %struct.stream, %struct.stream* %89, i32 0, i32 4
  store i32* %88, i32** %90, align 8
  %91 = load %struct.stream*, %struct.stream** %11, align 8
  store %struct.stream* %91, %struct.stream** %3, align 8
  br label %92

92:                                               ; preds = %49, %2
  %93 = load i32, i32* %5, align 4
  switch i32 %93, label %116 [
    i32 128, label %94
    i32 133, label %97
    i32 129, label %99
    i32 130, label %101
    i32 134, label %104
    i32 131, label %106
    i32 132, label %110
    i32 135, label %114
  ]

94:                                               ; preds = %92
  %95 = load %struct.stream*, %struct.stream** %3, align 8
  %96 = call i32 @process_update_pdu(%struct.stream* %95)
  br label %119

97:                                               ; preds = %92
  %98 = call i32 @DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %119

99:                                               ; preds = %92
  %100 = call i32 @DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %119

101:                                              ; preds = %92
  %102 = load %struct.stream*, %struct.stream** %3, align 8
  %103 = call i32 @process_pointer_pdu(%struct.stream* %102)
  br label %119

104:                                              ; preds = %92
  %105 = call i32 (...) @ui_bell()
  br label %119

106:                                              ; preds = %92
  %107 = call i32 @DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.stream*, %struct.stream** %3, align 8
  %109 = call i32 @process_pdu_logon(%struct.stream* %108)
  br label %119

110:                                              ; preds = %92
  %111 = load %struct.stream*, %struct.stream** %3, align 8
  %112 = load i64*, i64** %4, align 8
  %113 = call i32 @process_disconnect_pdu(%struct.stream* %111, i64* %112)
  br label %119

114:                                              ; preds = %92
  %115 = call i32 @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %119

116:                                              ; preds = %92
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @unimpl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %116, %114, %110, %106, %104, %101, %99, %97, %94
  %120 = load i32, i32* @False, align 4
  ret i32 %120
}

declare dso_local i32 @in_uint8s(%struct.stream*, i32) #1

declare dso_local i32 @in_uint16_le(%struct.stream*, i32) #1

declare dso_local i32 @in_uint8(%struct.stream*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @mppc_expand(i32*, i32, i32, i64*, i64*) #1

declare dso_local i64 @xrealloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @process_update_pdu(%struct.stream*) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @process_pointer_pdu(%struct.stream*) #1

declare dso_local i32 @ui_bell(...) #1

declare dso_local i32 @process_pdu_logon(%struct.stream*) #1

declare dso_local i32 @process_disconnect_pdu(%struct.stream*, i64*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
