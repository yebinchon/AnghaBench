; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_instrument.c_load_region.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dmusic/extr_instrument.c_load_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %p, %p, %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"RGNH chunk (region header): %u bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"WSMP chunk (wave sample): %u bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"WLNK chunk (wave link): %u bytes\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Unknown chunk %s (skipping): %u bytes\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*, i64)* @load_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_region(i32* %0, i32* %1, %struct.TYPE_5__* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i32* %14, %struct.TYPE_5__* %15, i64 %16)
  br label %18

18:                                               ; preds = %124, %4
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %125

21:                                               ; preds = %18
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @read_from_stream(i32* %22, %struct.TYPE_6__* %11, i32 8)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %127

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @subtract_bytes(i64 %30, i32 8)
  store i64 %31, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %103 [
    i32 130, label %34
    i32 128, label %50
    i32 129, label %87
  ]

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = call i32 @read_from_stream(i32* %38, %struct.TYPE_6__* %40, i32 8)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %127

47:                                               ; preds = %34
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @subtract_bytes(i64 %48, i32 8)
  store i64 %49, i64* %9, align 8
  br label %124

50:                                               ; preds = %29
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = call i32 @read_from_stream(i32* %54, %struct.TYPE_6__* %56, i32 8)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %127

63:                                               ; preds = %50
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @subtract_bytes(i64 %64, i32 8)
  store i64 %65, i64* %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 8
  %70 = zext i1 %69 to i32
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br i1 %69, label %74, label %73

73:                                               ; preds = %63
  br label %124

74:                                               ; preds = %63
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = call i32 @read_from_stream(i32* %75, %struct.TYPE_6__* %77, i32 8)
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @FAILED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %5, align 4
  br label %127

84:                                               ; preds = %74
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @subtract_bytes(i64 %85, i32 8)
  store i64 %86, i64* %9, align 8
  br label %124

87:                                               ; preds = %29
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @read_from_stream(i32* %91, %struct.TYPE_6__* %93, i32 8)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @FAILED(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %127

100:                                              ; preds = %87
  %101 = load i64, i64* %9, align 8
  %102 = call i64 @subtract_bytes(i64 %101, i32 8)
  store i64 %102, i64* %9, align 8
  br label %124

103:                                              ; preds = %29
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @debugstr_fourcc(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @advance_stream(i32* %110, i32 %112)
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i64 @FAILED(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %5, align 4
  br label %127

119:                                              ; preds = %103
  %120 = load i64, i64* %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @subtract_bytes(i64 %120, i32 %122)
  store i64 %123, i64* %9, align 8
  br label %124

124:                                              ; preds = %119, %100, %84, %73, %47
  br label %18

125:                                              ; preds = %18
  %126 = load i32, i32* @S_OK, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %117, %98, %82, %61, %45, %27
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @read_from_stream(i32*, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @subtract_bytes(i64, i32) #1

declare dso_local i32 @debugstr_fourcc(i32) #1

declare dso_local i32 @advance_stream(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
