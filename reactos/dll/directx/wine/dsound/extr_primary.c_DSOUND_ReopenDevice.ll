; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_DSOUND_ReopenDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dsound/extr_primary.c_DSOUND_ReopenDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, %struct.TYPE_6__, i64, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@DS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(%p, %d)\0A\00", align 1
@DSDDESC_DOMMSYSTEMOPEN = common dso_local global i32 0, align 4
@ds_hw_accel = common dso_local global i64 0, align 8
@DS_HW_ACCEL_EMULATION = common dso_local global i64 0, align 8
@DRV_QUERYDSOUNDIFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"IDsDriver_GetDriverDesc failed: %08x\0A\00", align 1
@DSDDESC_DOMMSYSTEMSETFORMAT = common dso_local global i32 0, align 4
@CALLBACK_FUNCTION = common dso_local global i32 0, align 4
@WAVE_MAPPED = common dso_local global i32 0, align 4
@WAVE_DIRECTSOUND = common dso_local global i32 0, align 4
@DSOUND_callback = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"waveOutOpen failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DSOUND_ReopenDevice(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @DS_OK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %10, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @IDsDriver_Close(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DSDDESC_DOMMSYSTEMOPEN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @waveOutClose(i64 %32)
  br label %34

34:                                               ; preds = %29, %17
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @IDsDriver_Release(i32* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  br label %59

45:                                               ; preds = %2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DSDDESC_DOMMSYSTEMOPEN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @waveOutClose(i64 %56)
  br label %58

58:                                               ; preds = %53, %45
  br label %59

59:                                               ; preds = %58, %34
  %60 = load i64, i64* @ds_hw_accel, align 8
  %61 = load i64, i64* @DS_HW_ACCEL_EMULATION, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = trunc i64 %71 to i32
  %73 = load i32, i32* @DRV_QUERYDSOUNDIFACE, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = ptrtoint i32** %75 to i64
  %77 = call i32 @waveOutMessage(i32 %72, i32 %73, i64 %76, i32 0)
  br label %78

78:                                               ; preds = %66, %63, %59
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %111

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = call i32 @IDsDriver_GetDriverDesc(i32* %90, %struct.TYPE_6__* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @FAILED(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %83
  %102 = load i32, i32* %6, align 4
  %103 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @IDsDriver_Release(i32* %106)
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32* null, i32** %109, align 8
  br label %110

110:                                              ; preds = %101, %83
  br label %111

111:                                              ; preds = %110, %78
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %123, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* @DSDDESC_DOMMSYSTEMOPEN, align 4
  %118 = load i32, i32* @DSDDESC_DOMMSYSTEMSETFORMAT, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 4
  br label %123

123:                                              ; preds = %116, %111
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DSDDESC_DOMMSYSTEMOPEN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %178

131:                                              ; preds = %123
  %132 = load i32, i32* @CALLBACK_FUNCTION, align 4
  %133 = load i32, i32* @WAVE_MAPPED, align 4
  %134 = or i32 %132, %133
  store i32 %134, i32* %8, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %131
  %140 = load i32, i32* @WAVE_DIRECTSOUND, align 4
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %139, %131
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load i64, i64* @DSOUND_callback, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = ptrtoint %struct.TYPE_5__* %154 to i64
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @waveOutOpen(i64* %145, i32 %149, i32 %152, i64 %153, i64 %155, i32 %156)
  %158 = call i32 @mmErr(i32 %157)
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* %6, align 4
  %160 = call i64 @FAILED(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %143
  %163 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @IDsDriver_Release(i32* %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %168, %162
  %176 = load i32, i32* %6, align 4
  store i32 %176, i32* %3, align 4
  br label %190

177:                                              ; preds = %143
  br label %178

178:                                              ; preds = %177, %123
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = call i32 @IDsDriver_Open(i32* %186)
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %183, %178
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %175
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @IDsDriver_Close(i32*) #1

declare dso_local i32 @waveOutClose(i64) #1

declare dso_local i32 @IDsDriver_Release(i32*) #1

declare dso_local i32 @waveOutMessage(i32, i32, i64, i32) #1

declare dso_local i32 @IDsDriver_GetDriverDesc(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @mmErr(i32) #1

declare dso_local i32 @waveOutOpen(i64*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @IDsDriver_Open(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
