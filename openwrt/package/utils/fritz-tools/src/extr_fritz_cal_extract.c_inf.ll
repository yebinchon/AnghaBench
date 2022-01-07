; ModuleID = '/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_cal_extract.c_inf.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/utils/fritz-tools/src/extr_fritz_cal_extract.c_inf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i64, i8*, i8*, i8*, i8* }

@CHUNK = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@Z_OK = common dso_local global i32 0, align 4
@Z_ERRNO = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64)* @inf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inf(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @CHUNK, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32, i32* @CHUNK, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %24 = load i8*, i8** @Z_NULL, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** @Z_NULL, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** @Z_NULL, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i8* %28, i8** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** @Z_NULL, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %31, i8** %32, align 8
  %33 = call i32 @inflateInit(%struct.TYPE_5__* %12)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @Z_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %139

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %120, %39
  %41 = load i32, i32* @CHUNK, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @fread(i8* %20, i32 1, i32 %41, i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @ferror(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = call i32 @inflateEnd(%struct.TYPE_5__* %12)
  %50 = load i32, i32* @Z_ERRNO, align 4
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %139

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %122

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %20, i8** %57, align 8
  br label %58

58:                                               ; preds = %110, %56
  %59 = load i32, i32* @CHUNK, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i8* %23, i8** %62, align 8
  %63 = load i32, i32* @Z_NO_FLUSH, align 4
  %64 = call i32 @inflate(%struct.TYPE_5__* %12, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @Z_STREAM_ERROR, align 4
  %67 = icmp ne i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %75 [
    i32 128, label %71
    i32 130, label %72
    i32 129, label %72
  ]

71:                                               ; preds = %58
  store i32 130, i32* %10, align 4
  br label %72

72:                                               ; preds = %58, %58, %71
  %73 = call i32 @inflateEnd(%struct.TYPE_5__* %12)
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %139

75:                                               ; preds = %58
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @CHUNK, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = trunc i64 %81 to i32
  %83 = call i64 @special_min(i64 %76, i32 %82)
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %83, %84
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i8, i8* %23, i64 %86
  %88 = load i64, i64* %11, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @fwrite(i8* %87, i64 %88, i32 1, i32* %89)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %96, label %92

92:                                               ; preds = %75
  %93 = load i32*, i32** %7, align 8
  %94 = call i64 @ferror(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %75
  %97 = call i32 @inflateEnd(%struct.TYPE_5__* %12)
  %98 = load i32, i32* @Z_ERRNO, align 4
  store i32 %98, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %139

99:                                               ; preds = %92
  store i64 0, i64* %9, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %101, %100
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i64, i64* %8, align 8
  %109 = icmp ugt i64 %108, 0
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi i1 [ false, %103 ], [ %109, %107 ]
  br i1 %111, label %58, label %112

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @Z_STREAM_END, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i64, i64* %8, align 8
  %119 = icmp ugt i64 %118, 0
  br label %120

120:                                              ; preds = %117, %113
  %121 = phi i1 [ false, %113 ], [ %119, %117 ]
  br i1 %121, label %40, label %122

122:                                              ; preds = %120, %55
  %123 = call i32 @inflateEnd(%struct.TYPE_5__* %12)
  %124 = load i64, i64* %8, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @Z_OK, align 4
  br label %137

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @Z_STREAM_END, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @Z_OK, align 4
  br label %135

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 130, %134 ]
  br label %137

137:                                              ; preds = %135, %126
  %138 = phi i32 [ %127, %126 ], [ %136, %135 ]
  store i32 %138, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %139

139:                                              ; preds = %137, %96, %72, %48, %37
  %140 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @inflateInit(%struct.TYPE_5__*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #2

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @special_min(i64, i32) #2

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
