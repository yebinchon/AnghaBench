; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_convert_block_nals_to_annexb.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_convert_block_nals_to_annexb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32 }
%struct.darray = type { i32 }

@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid nal block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_h264_encoder*, %struct.darray*, i32, i32)* @convert_block_nals_to_annexb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_block_nals_to_annexb(%struct.vt_h264_encoder* %0, %struct.darray* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vt_h264_encoder*, align 8
  %6 = alloca %struct.darray*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vt_h264_encoder* %0, %struct.vt_h264_encoder** %5, align 8
  store %struct.darray* %1, %struct.darray** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = bitcast i64** %10 to i8**
  %15 = call i32 @CMBlockBufferGetDataPointer(i32 %13, i32 0, i32* null, i64* %9, i8** %14)
  %16 = load i64, i64* %9, align 8
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %62, %4
  %18 = load i64, i64* %11, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i64*, i64** %10, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  br label %47

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i64*, i64** %10, align 8
  %32 = bitcast i64* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @CFSwapInt16BigToHost(i32 %34)
  store i64 %35, i64* %12, align 8
  br label %46

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i64*, i64** %10, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @CFSwapInt32BigToHost(i64 %42)
  store i64 %43, i64* %12, align 8
  br label %45

44:                                               ; preds = %36
  br label %75

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %11, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i64*, i64** %10, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64* %55, i64** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load i32, i32* @LOG_ERROR, align 4
  %61 = call i32 @VT_BLOG(i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %75

62:                                               ; preds = %47
  %63 = load %struct.darray*, %struct.darray** %6, align 8
  %64 = call i32 @packet_put_startcode(%struct.darray* %63, i32 3)
  %65 = load %struct.darray*, %struct.darray** %6, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @packet_put(%struct.darray* %65, i64* %66, i64 %67)
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 %72
  store i64* %74, i64** %10, align 8
  br label %17

75:                                               ; preds = %44, %59, %17
  ret void
}

declare dso_local i32 @CMBlockBufferGetDataPointer(i32, i32, i32*, i64*, i8**) #1

declare dso_local i64 @CFSwapInt16BigToHost(i32) #1

declare dso_local i64 @CFSwapInt32BigToHost(i64) #1

declare dso_local i32 @VT_BLOG(i32, i8*) #1

declare dso_local i32 @packet_put_startcode(%struct.darray*, i32) #1

declare dso_local i32 @packet_put(%struct.darray*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
