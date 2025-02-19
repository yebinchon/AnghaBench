; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_amf.c_AMF_EncodeArray.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/librtmp/extr_amf.c_AMF_EncodeArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AMF_STRICT_ARRAY = common dso_local global i32 0, align 4
@RTMP_LOGERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"AMF_Encode - failed to encode property in index %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @AMF_EncodeArray(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 4
  %12 = load i8*, i8** %7, align 8
  %13 = icmp uge i8* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %56

15:                                               ; preds = %3
  %16 = load i32, i32* @AMF_STRICT_ARRAY, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  store i8 %17, i8* %18, align 1
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @AMF_EncodeInt32(i8* %20, i8* %21, i32 %24)
  store i8* %25, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %51, %15
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @AMFProp_Encode(i32* %38, i8* %39, i8* %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @RTMP_LOGERROR, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @RTMP_Log(i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %54

48:                                               ; preds = %32
  %49 = load i8*, i8** %9, align 8
  store i8* %49, i8** %6, align 8
  br label %50

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %26

54:                                               ; preds = %44, %26
  %55 = load i8*, i8** %6, align 8
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %54, %14
  %57 = load i8*, i8** %4, align 8
  ret i8* %57
}

declare dso_local i8* @AMF_EncodeInt32(i8*, i8*, i32) #1

declare dso_local i8* @AMFProp_Encode(i32*, i8*, i8*) #1

declare dso_local i32 @RTMP_Log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
