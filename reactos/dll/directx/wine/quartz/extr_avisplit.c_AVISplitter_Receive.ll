; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_Receive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_Receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, i32* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { double, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, double, i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"NewSegment returns %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, i32*, i32)* @AVISplitter_Receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AVISplitter_Receive(%struct.TYPE_20__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 1, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_19__* @unsafe_impl_Parser_OutputPin_from_IPin(i32 %26)
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %8, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i64 %32
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %14, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 10000000
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sdiv i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %3
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @IMediaSample_GetActualDataLength(i32* %57)
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %16, align 4
  %65 = sdiv i32 %63, %64
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %75

70:                                               ; preds = %3
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %56
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = mul nsw i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = mul nsw i32 %85, 10000000
  store i32 %86, i32* %11, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sdiv i32 %91, %90
  store i32 %92, i32* %11, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = call i64 @IMediaSample_IsDiscontinuity(i32* %93)
  %95 = load i64, i64* @S_OK, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %160

97:                                               ; preds = %75
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = call i32 @EnterCriticalSection(i32* %101)
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  store double %112, double* %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 2
  %121 = call i64 @IPin_ConnectedTo(i32* %120, i32** %17)
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* @S_OK, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %148

125:                                              ; preds = %97
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load double, double* %136, align 8
  %138 = call i64 @IPin_NewSegment(i32* %126, i32 %127, i32 %132, double %137)
  store i64 %138, i64* %9, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* @S_OK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %125
  %143 = load i64, i64* %9, align 8
  %144 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %143)
  br label %145

145:                                              ; preds = %142, %125
  %146 = load i32*, i32** %17, align 8
  %147 = call i32 @IPin_Release(i32* %146)
  br label %148

148:                                              ; preds = %145, %97
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = call i32 @LeaveCriticalSection(i32* %152)
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* @S_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i64, i64* %9, align 8
  store i64 %158, i64* %4, align 8
  br label %202

159:                                              ; preds = %148
  br label %160

160:                                              ; preds = %159, %75
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub nsw i32 %161, %166
  %168 = sitofp i32 %167 to double
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load double, double* %172, align 8
  %174 = fdiv double %168, %173
  %175 = fptosi double %174 to i32
  store i32 %175, i32* %12, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %176, %181
  %183 = sitofp i32 %182 to double
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  %188 = load double, double* %187, align 8
  %189 = fdiv double %183, %188
  %190 = fptosi double %189 to i32
  store i32 %190, i32* %13, align 4
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 @IMediaSample_SetMediaTime(i32* %191, i32* %10, i32* %11)
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 @IMediaSample_SetTime(i32* %193, i32* %12, i32* %13)
  %195 = load i32*, i32** %6, align 8
  %196 = call i32 @IMediaSample_SetMediaTime(i32* %195, i32* %10, i32* %11)
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i32*, i32** %6, align 8
  %200 = call i64 @BaseOutputPinImpl_Deliver(%struct.TYPE_12__* %198, i32* %199)
  store i64 %200, i64* %9, align 8
  %201 = load i64, i64* %9, align 8
  store i64 %201, i64* %4, align 8
  br label %202

202:                                              ; preds = %160, %157
  %203 = load i64, i64* %4, align 8
  ret i64 %203
}

declare dso_local %struct.TYPE_19__* @unsafe_impl_Parser_OutputPin_from_IPin(i32) #1

declare dso_local i32 @IMediaSample_GetActualDataLength(i32*) #1

declare dso_local i64 @IMediaSample_IsDiscontinuity(i32*) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i64 @IPin_ConnectedTo(i32*, i32**) #1

declare dso_local i64 @IPin_NewSegment(i32*, i32, i32, double) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @IPin_Release(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @IMediaSample_SetMediaTime(i32*, i32*, i32*) #1

declare dso_local i32 @IMediaSample_SetTime(i32*, i32*, i32*) #1

declare dso_local i64 @BaseOutputPinImpl_Deliver(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
