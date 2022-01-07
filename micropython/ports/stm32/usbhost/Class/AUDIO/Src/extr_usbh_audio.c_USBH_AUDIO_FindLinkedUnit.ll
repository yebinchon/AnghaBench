; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_FindLinkedUnit.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/AUDIO/Src/extr_usbh_audio.c_USBH_AUDIO_FindLinkedUnit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__**, %struct.TYPE_14__**, %struct.TYPE_13__**, %struct.TYPE_12__** }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }

@UAC_FEATURE_UNIT = common dso_local global i32 0, align 4
@UAC_MIXER_UNIT = common dso_local global i32 0, align 4
@UAC_SELECTOR_UNIT = common dso_local global i32 0, align 4
@UAC_OUTPUT_TERMINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*, i64)* @USBH_AUDIO_FindLinkedUnit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @USBH_AUDIO_FindLinkedUnit(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %7, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %14, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %13
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %25, i64 %26
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %20
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %38, i64 %39
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = shl i64 %44, 16
  %46 = load i32, i32* @UAC_FEATURE_UNIT, align 4
  %47 = shl i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = or i64 %45, %48
  %50 = load i64, i64* %6, align 8
  %51 = or i64 %49, %50
  store i64 %51, i64* %3, align 8
  br label %202

52:                                               ; preds = %20
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %13

56:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %110, %56
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %113

64:                                               ; preds = %57
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %69, i64 %70
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %90, label %77

77:                                               ; preds = %64
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %82, i64 %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %77, %64
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %95, i64 %96
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %5, align 8
  %101 = load i64, i64* %5, align 8
  %102 = shl i64 %101, 16
  %103 = load i32, i32* @UAC_MIXER_UNIT, align 4
  %104 = shl i32 %103, 8
  %105 = sext i32 %104 to i64
  %106 = or i64 %102, %105
  %107 = load i64, i64* %6, align 8
  %108 = or i64 %106, %107
  store i64 %108, i64* %3, align 8
  br label %202

109:                                              ; preds = %77
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %6, align 8
  br label %57

113:                                              ; preds = %57
  store i64 0, i64* %6, align 8
  br label %114

114:                                              ; preds = %154, %113
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %115, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %114
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %126, i64 %127
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %153

134:                                              ; preds = %121
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %138, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %139, i64 %140
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %5, align 8
  %145 = load i64, i64* %5, align 8
  %146 = shl i64 %145, 16
  %147 = load i32, i32* @UAC_SELECTOR_UNIT, align 4
  %148 = shl i32 %147, 8
  %149 = sext i32 %148 to i64
  %150 = or i64 %146, %149
  %151 = load i64, i64* %6, align 8
  %152 = or i64 %150, %151
  store i64 %152, i64* %3, align 8
  br label %202

153:                                              ; preds = %121
  br label %154

154:                                              ; preds = %153
  %155 = load i64, i64* %6, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %6, align 8
  br label %114

157:                                              ; preds = %114
  store i64 0, i64* %6, align 8
  br label %158

158:                                              ; preds = %198, %157
  %159 = load i64, i64* %6, align 8
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = icmp ult i64 %159, %163
  br i1 %164, label %165, label %201

165:                                              ; preds = %158
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %169, align 8
  %171 = load i64, i64* %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %170, i64 %171
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %5, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %197

178:                                              ; preds = %165
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %182, align 8
  %184 = load i64, i64* %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %183, i64 %184
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %5, align 8
  %189 = load i64, i64* %5, align 8
  %190 = shl i64 %189, 16
  %191 = load i32, i32* @UAC_OUTPUT_TERMINAL, align 4
  %192 = shl i32 %191, 8
  %193 = sext i32 %192 to i64
  %194 = or i64 %190, %193
  %195 = load i64, i64* %6, align 8
  %196 = or i64 %194, %195
  store i64 %196, i64* %3, align 8
  br label %202

197:                                              ; preds = %165
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %6, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %6, align 8
  br label %158

201:                                              ; preds = %158
  store i64 -1, i64* %3, align 8
  br label %202

202:                                              ; preds = %201, %178, %134, %90, %33
  %203 = load i64, i64* %3, align 8
  ret i64 %203
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
