; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_first_request.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_avisplit.c_AVISplitter_first_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i64, i64, i32*, i64, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.thread_args = type { i32, %struct.TYPE_13__* }

@S_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(%p)->()\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"-->%08x\0A\00", align 1
@S_FALSE = common dso_local global i32 0, align 4
@VFW_E_NOT_CONNECTED = common dso_local global i32 0, align 4
@AVISplitter_thread_reader = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Created stream %u thread 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Horsemen of the apocalypse came to bring error 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @AVISplitter_first_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVISplitter_first_request(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread_args*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %3, align 8
  %13 = load i32, i32* @S_OK, align 4
  store i32 %13, i32* %4, align 4
  store i32* null, i32** %6, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %112, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %18, %22
  br i1 %23, label %24, label %115

24:                                               ; preds = %17
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i64 %29
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %8, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ResetEvent(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* @TRUE, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %84

62:                                               ; preds = %24
  store i32 -1, i32* %9, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IAsyncReader_WaitForNext(i32 %68, i32 10000, i32** %6, i32* %9)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @S_OK, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = ptrtoint i32* %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @AVISplitter_Sample(%struct.TYPE_13__* %78, i32* %79, i32 %80)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @IMediaSample_Release(i32* %82)
  br label %84

84:                                               ; preds = %62, %24
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @AVISplitter_next_request(%struct.TYPE_13__* %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @S_OK, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @S_FALSE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @AVISplitter_SendEndOfFile(%struct.TYPE_13__* %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %84
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @FAILED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @VFW_E_NOT_CONNECTED, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %115

110:                                              ; preds = %105, %101
  %111 = load i32, i32* @S_OK, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %17

115:                                              ; preds = %109, %17
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %206, %115
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %117, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i32, i32* %4, align 4
  %125 = call i64 @SUCCEEDED(i32 %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %123, %116
  %128 = phi i1 [ false, %116 ], [ %126, %123 ]
  br i1 %128, label %129, label %209

129:                                              ; preds = %127
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %129
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %147, %155
  br i1 %156, label %177, label %157

157:                                              ; preds = %139, %129
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %185, label %167

167:                                              ; preds = %157
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %167, %139
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  store i32* null, i32** %184, align 8
  br label %206

185:                                              ; preds = %167, %157
  %186 = call %struct.thread_args* @CoTaskMemAlloc(i32 16)
  store %struct.thread_args* %186, %struct.thread_args** %10, align 8
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = load %struct.thread_args*, %struct.thread_args** %10, align 8
  %189 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %188, i32 0, i32 1
  store %struct.TYPE_13__* %187, %struct.TYPE_13__** %189, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load %struct.thread_args*, %struct.thread_args** %10, align 8
  %192 = getelementptr inbounds %struct.thread_args, %struct.thread_args* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i32, i32* @AVISplitter_thread_reader, align 4
  %194 = load %struct.thread_args*, %struct.thread_args** %10, align 8
  %195 = call i32* @CreateThread(i32* null, i32 0, i32 %193, %struct.thread_args* %194, i32 0, i32* %11)
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 3
  store i32* %195, i32** %202, align 8
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %185, %177
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %5, align 4
  br label %116

209:                                              ; preds = %127
  %210 = load i32, i32* %4, align 4
  %211 = call i64 @FAILED(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, i32* %4, align 4
  %215 = call i32 @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %213, %209
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ResetEvent(i32) #1

declare dso_local i32 @IAsyncReader_WaitForNext(i32, i32, i32**, i32*) #1

declare dso_local i32 @AVISplitter_Sample(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @IMediaSample_Release(i32*) #1

declare dso_local i32 @AVISplitter_next_request(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @AVISplitter_SendEndOfFile(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local %struct.thread_args* @CoTaskMemAlloc(i32) #1

declare dso_local i32* @CreateThread(i32*, i32, i32, %struct.thread_args*, i32, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
