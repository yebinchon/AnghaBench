; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_amf.c_AMF_Decode.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_amf.c_AMF_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }

@FALSE = common dso_local global i32 0, align 4
@AMF_OBJECT_END = common dso_local global i64 0, align 8
@RTMP_LOGERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"DECODING ERROR, IGNORING BYTES UNTIL NEXT KNOWN PATTERN!\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AMF_Decode(%struct.TYPE_4__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %69, %38, %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %70

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @AMF_DecodeInt24(i8* %27)
  %29 = load i64, i64* @AMF_OBJECT_END, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 3
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %11, align 4
  br label %70

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @RTMP_LOGERROR, align 4
  %40 = call i32 @RTMP_Log(i32 %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  br label %20

45:                                               ; preds = %35
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @AMFProp_Decode(i32* %12, i8* %46, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %11, align 4
  br label %70

54:                                               ; preds = %45
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @TRUE, align 4
  store i32 %61, i32* %11, align 4
  br label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %7, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = call i32 @AMF_AddProp(%struct.TYPE_4__* %67, i32* %12)
  br label %69

69:                                               ; preds = %62
  br label %20

70:                                               ; preds = %60, %52, %31, %20
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 -1, i32* %5, align 4
  br label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @AMF_DecodeInt24(i8*) #1

declare dso_local i32 @RTMP_Log(i32, i8*) #1

declare dso_local i32 @AMFProp_Decode(i32*, i8*, i32, i32) #1

declare dso_local i32 @AMF_AddProp(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
