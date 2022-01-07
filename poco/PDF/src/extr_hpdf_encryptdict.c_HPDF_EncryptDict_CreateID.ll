; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encryptdict.c_HPDF_EncryptDict_CreateID.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encryptdict.c_HPDF_EncryptDict_CreateID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@HPDF_INFO_AUTHOR = common dso_local global i32 0, align 4
@HPDF_INFO_CREATOR = common dso_local global i32 0, align 4
@HPDF_INFO_PRODUCER = common dso_local global i32 0, align 4
@HPDF_INFO_TITLE = common dso_local global i32 0, align 4
@HPDF_INFO_SUBJECT = common dso_local global i32 0, align 4
@HPDF_INFO_KEYWORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HPDF_EncryptDict_CreateID(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = call i32 @HPDF_TIME(i32* null)
  store i32 %17, i32* %9, align 4
  %18 = call i32 @HPDF_MD5Init(i32* %7)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = call i32 @HPDF_UNUSED(%struct.TYPE_12__* %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = call i32 @HPDF_UNUSED(%struct.TYPE_12__* %21)
  %23 = call i32 @HPDF_MD5Update(i32* %7, i32* %9, i32 4)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %104

26:                                               ; preds = %3
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = load i32, i32* @HPDF_INFO_AUTHOR, align 4
  %29 = call i8* @HPDF_Info_GetInfoAttr(%struct.TYPE_12__* %27, i32 %28)
  store i8* %29, i8** %10, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @HPDF_StrLen(i8* %30, i32 -1)
  store i32 %31, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @HPDF_MD5Update(i32* %7, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = load i32, i32* @HPDF_INFO_CREATOR, align 4
  %41 = call i8* @HPDF_Info_GetInfoAttr(%struct.TYPE_12__* %39, i32 %40)
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @HPDF_StrLen(i8* %42, i32 -1)
  store i32 %43, i32* %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i8*, i8** %10, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @HPDF_MD5Update(i32* %7, i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = load i32, i32* @HPDF_INFO_PRODUCER, align 4
  %53 = call i8* @HPDF_Info_GetInfoAttr(%struct.TYPE_12__* %51, i32 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @HPDF_StrLen(i8* %54, i32 -1)
  store i32 %55, i32* %11, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @HPDF_MD5Update(i32* %7, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = load i32, i32* @HPDF_INFO_TITLE, align 4
  %65 = call i8* @HPDF_Info_GetInfoAttr(%struct.TYPE_12__* %63, i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @HPDF_StrLen(i8* %66, i32 -1)
  store i32 %67, i32* %11, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i8*, i8** %10, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @HPDF_MD5Update(i32* %7, i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = load i32, i32* @HPDF_INFO_SUBJECT, align 4
  %77 = call i8* @HPDF_Info_GetInfoAttr(%struct.TYPE_12__* %75, i32 %76)
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @HPDF_StrLen(i8* %78, i32 -1)
  store i32 %79, i32* %11, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i8*, i8** %10, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @HPDF_MD5Update(i32* %7, i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %74
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = load i32, i32* @HPDF_INFO_KEYWORDS, align 4
  %89 = call i8* @HPDF_Info_GetInfoAttr(%struct.TYPE_12__* %87, i32 %88)
  store i8* %89, i8** %10, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @HPDF_StrLen(i8* %90, i32 -1)
  store i32 %91, i32* %11, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i8*, i8** %10, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @HPDF_MD5Update(i32* %7, i32* %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %86
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = call i32 @HPDF_MD5Update(i32* %7, i32* %102, i32 4)
  br label %104

104:                                              ; preds = %98, %3
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @HPDF_MD5Final(i32 %107, i32* %7)
  ret void
}

declare dso_local i32 @HPDF_TIME(i32*) #1

declare dso_local i32 @HPDF_MD5Init(i32*) #1

declare dso_local i32 @HPDF_UNUSED(%struct.TYPE_12__*) #1

declare dso_local i32 @HPDF_MD5Update(i32*, i32*, i32) #1

declare dso_local i8* @HPDF_Info_GetInfoAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @HPDF_StrLen(i8*, i32) #1

declare dso_local i32 @HPDF_MD5Final(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
