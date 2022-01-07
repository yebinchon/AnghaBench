; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_ADPCM_FormatDetails.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/imaadp32.acm/extr_imaadp32.c_ADPCM_FormatDetails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@ACMERR_NOTPOSSIBLE = common dso_local global i32 0, align 4
@PCM_Formats = common dso_local global %struct.TYPE_8__* null, align 8
@ADPCM_Formats = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unsupported tag %08x\0A\00", align 1
@MMSYSERR_INVALPARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported query %08x\0A\00", align 1
@MMSYSERR_NOTSUPPORTED = common dso_local global i32 0, align 4
@ACMDRIVERDETAILS_SUPPORTF_CODEC = common dso_local global i32 0, align 4
@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @ADPCM_FormatDetails to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ADPCM_FormatDetails(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %156 [
    i32 131, label %7
    i32 130, label %16
  ]

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = call i32 @ADPCM_GetFormatIndex(%struct.TYPE_9__* %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %14, i32* %3, align 4
  br label %169

15:                                               ; preds = %7
  br label %160

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %149 [
    i32 128, label %27
    i32 129, label %101
  ]

27:                                               ; preds = %16
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PCM_Formats, align 8
  %32 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %31)
  %33 = icmp uge i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %35, i32* %3, align 4
  br label %169

36:                                               ; preds = %27
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PCM_Formats, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PCM_Formats, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @PCM_Formats, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i32 %65, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %74, %79
  %81 = sdiv i32 %80, 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  store i32 %81, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %90, %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 5
  store i32 %96, i32* %100, align 4
  br label %155

101:                                              ; preds = %16
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ADPCM_Formats, align 8
  %106 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %105)
  %107 = icmp uge i64 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @ACMERR_NOTPOSSIBLE, align 4
  store i32 %109, i32* %3, align 4
  br label %169

110:                                              ; preds = %101
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ADPCM_Formats, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ADPCM_Formats, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ADPCM_Formats, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  store i32 %139, i32* %143, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %145, align 8
  %147 = bitcast %struct.TYPE_9__* %146 to i32*
  %148 = call i32 @init_wfx_ima_adpcm(i32* %147)
  br label %155

149:                                              ; preds = %16
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @MMSYSERR_INVALPARAM, align 4
  store i32 %154, i32* %3, align 4
  br label %169

155:                                              ; preds = %110, %36
  br label %160

156:                                              ; preds = %2
  %157 = load i32, i32* %5, align 4
  %158 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  %159 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %159, i32* %3, align 4
  br label %169

160:                                              ; preds = %155, %15
  %161 = load i32, i32* @ACMDRIVERDETAILS_SUPPORTF_CODEC, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 0
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %160, %156, %149, %108, %34, %13
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @ADPCM_GetFormatIndex(%struct.TYPE_9__*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @init_wfx_ima_adpcm(i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
