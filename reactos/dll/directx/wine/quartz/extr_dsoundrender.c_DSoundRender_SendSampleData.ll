; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_dsoundrender.c_DSoundRender_SendSampleData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_dsoundrender.c_DSoundRender_SendSampleData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i64, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@State_Stopped = common dso_local global i64 0, align 8
@State_Running = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@State_Paused = common dso_local global i64 0, align 8
@VFW_E_WRONG_STATE = common dso_local global i64 0, align 8
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Sample dropped %u of %u bytes\0A\00", align 1
@DS_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to lock sound buffer! (%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Wrote %u bytes at %u, next at %u - (%u/%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32, i32, i32*, i64)* @DSoundRender_SendSampleData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DSoundRender_SendSampleData(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  br label %21

21:                                               ; preds = %156, %105, %5
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @State_Stopped, align 8
  %31 = icmp ne i64 %29, %30
  br label %32

32:                                               ; preds = %24, %21
  %33 = phi i1 [ false, %21 ], [ %31, %24 ]
  br i1 %33, label %34, label %196

34:                                               ; preds = %32
  store i64 0, i64* %14, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @State_Running, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @DSoundRender_GetWritePos(%struct.TYPE_10__* %43, i64* %13, i32 %44, i64* %15, i64* %14)
  store i64 %45, i64* %12, align 8
  br label %48

46:                                               ; preds = %34
  %47 = load i64, i64* @S_FALSE, align 8
  store i64 %47, i64* %12, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %106

52:                                               ; preds = %48
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = call i32 @LeaveCriticalSection(i32* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @WaitForSingleObject(i32 %61, i32 10)
  store i64 %62, i64* %18, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = call i32 @EnterCriticalSection(i32* %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %52
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @State_Stopped, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %76, %52
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @State_Paused, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i64, i64* @S_OK, align 8
  br label %96

94:                                               ; preds = %84
  %95 = load i64, i64* @VFW_E_WRONG_STATE, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  store i64 %97, i64* %6, align 8
  br label %198

98:                                               ; preds = %76
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* @WAIT_TIMEOUT, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i64, i64* %18, align 8
  %104 = call i32 @ERR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %103)
  br label %105

105:                                              ; preds = %102, %98
  br label %21

106:                                              ; preds = %48
  store i32 -1, i32* %8, align 4
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i64, i64* %14, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* @S_OK, align 8
  store i64 %118, i64* %6, align 8
  br label %198

119:                                              ; preds = %113
  %120 = load i64, i64* %14, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 %120
  store i32* %122, i32** %10, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* %11, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* %11, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @min(i64 %130, i64 %131)
  %133 = bitcast i32** %19 to i8**
  %134 = bitcast i32** %20 to i8**
  %135 = call i64 @IDirectSoundBuffer_Lock(i32 %128, i64 %129, i32 %132, i8** %133, i64* %16, i8** %134, i64* %17, i32 0)
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i64, i64* @DS_OK, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %119
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %140)
  br label %196

142:                                              ; preds = %119
  %143 = load i32*, i32** %19, align 8
  %144 = load i32*, i32** %10, align 8
  %145 = load i64, i64* %16, align 8
  %146 = call i32 @memcpy(i32* %143, i32* %144, i64 %145)
  %147 = load i64, i64* %17, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %142
  %150 = load i32*, i32** %20, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = load i64, i64* %16, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i64, i64* %17, align 8
  %155 = call i32 @memcpy(i32* %150, i32* %153, i64 %154)
  br label %156

156:                                              ; preds = %149, %142
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %19, align 8
  %161 = load i64, i64* %16, align 8
  %162 = load i32*, i32** %20, align 8
  %163 = load i64, i64* %17, align 8
  %164 = call i32 @IDirectSoundBuffer_Unlock(i32 %159, i32* %160, i64 %161, i32* %162, i64 %163)
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %16, align 8
  %167 = add nsw i64 %165, %166
  %168 = load i64, i64* %17, align 8
  %169 = add nsw i64 %167, %168
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = srem i64 %169, %172
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 2
  store i64 %173, i64* %175, align 8
  %176 = load i64, i64* %16, align 8
  %177 = load i64, i64* %17, align 8
  %178 = add nsw i64 %176, %177
  %179 = load i64, i64* %13, align 8
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %15, align 8
  %184 = load i64, i64* %11, align 8
  %185 = call i32 @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %178, i64 %179, i64 %182, i64 %183, i64 %184)
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %17, align 8
  %188 = add nsw i64 %186, %187
  %189 = load i32*, i32** %10, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 %188
  store i32* %190, i32** %10, align 8
  %191 = load i64, i64* %16, align 8
  %192 = load i64, i64* %17, align 8
  %193 = add nsw i64 %191, %192
  %194 = load i64, i64* %11, align 8
  %195 = sub nsw i64 %194, %193
  store i64 %195, i64* %11, align 8
  br label %21

196:                                              ; preds = %139, %32
  %197 = load i64, i64* @S_OK, align 8
  store i64 %197, i64* %6, align 8
  br label %198

198:                                              ; preds = %196, %117, %96
  %199 = load i64, i64* %6, align 8
  ret i64 %199
}

declare dso_local i64 @DSoundRender_GetWritePos(%struct.TYPE_10__*, i64*, i32, i64*, i64*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @FIXME(i8*, i64, i64) #1

declare dso_local i64 @IDirectSoundBuffer_Lock(i32, i64, i32, i8**, i64*, i8**, i64*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @IDirectSoundBuffer_Unlock(i32, i32*, i64, i32*, i64) #1

declare dso_local i32 @TRACE(i8*, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
