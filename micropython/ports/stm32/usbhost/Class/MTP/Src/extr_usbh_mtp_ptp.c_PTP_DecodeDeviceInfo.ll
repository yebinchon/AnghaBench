; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_DecodeDeviceInfo.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MTP/Src/extr_usbh_mtp_ptp.c_PTP_DecodeDeviceInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [99 x i8] c" MTP device info size exceeds internal buffer size.               only available data are decoded.\00", align 1
@PTP_di_StandardVersion = common dso_local global i64 0, align 8
@PTP_di_VendorExtensionID = common dso_local global i64 0, align 8
@PTP_di_VendorExtensionVersion = common dso_local global i64 0, align 8
@PTP_di_VendorExtensionDesc = common dso_local global i64 0, align 8
@PTP_di_FunctionalMode = common dso_local global i64 0, align 8
@PTP_di_OperationsSupported = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @PTP_DecodeDeviceInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PTP_DecodeDeviceInfo(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %6, align 8
  %20 = call i32 @USBH_DbgLog(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %208

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* @PTP_di_StandardVersion, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = call i8* @LE16(i32* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 18
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* @PTP_di_VendorExtensionID, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i32 @LE32(i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 17
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i64, i64* @PTP_di_VendorExtensionVersion, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i8* @LE16(i32* %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 16
  store i8* %42, i8** %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* @PTP_di_VendorExtensionDesc, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = call i32 @PTP_GetString(i32 %47, i32* %50, i32* %8)
  %52 = load i32, i32* %8, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %7, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* @PTP_di_FunctionalMode, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add i64 %57, %58
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = call i8* @LE16(i32* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 14
  store i8* %61, i8** %63, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 13
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %67, %68
  %70 = call i8* @PTP_GetArray16(i32* %65, i32* %66, i64 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = add i64 %74, %79
  %81 = add i64 %80, 8
  store i64 %81, i64* %7, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 12
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %85, %86
  %88 = call i8* @PTP_GetArray16(i32* %83, i32* %84, i64 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = add i64 %92, %97
  %99 = add i64 %98, 8
  store i64 %99, i64* %7, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 11
  %102 = load i32*, i32** %6, align 8
  %103 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %104 = load i64, i64* %7, align 8
  %105 = add i64 %103, %104
  %106 = call i8* @PTP_GetArray16(i32* %101, i32* %102, i64 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = add i64 %110, %115
  %117 = add i64 %116, 8
  store i64 %117, i64* %7, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 10
  %120 = load i32*, i32** %6, align 8
  %121 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %121, %122
  %124 = call i8* @PTP_GetArray16(i32* %119, i32* %120, i64 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  %128 = load i64, i64* %7, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = add i64 %128, %133
  %135 = add i64 %134, 8
  store i64 %135, i64* %7, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 9
  %138 = load i32*, i32** %6, align 8
  %139 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %140 = load i64, i64* %7, align 8
  %141 = add i64 %139, %140
  %142 = call i8* @PTP_GetArray16(i32* %137, i32* %138, i64 %141)
  %143 = ptrtoint i8* %142 to i32
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = add i64 %146, %151
  %153 = add i64 %152, 8
  store i64 %153, i64* %7, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %159 = load i64, i64* %7, align 8
  %160 = add i64 %158, %159
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = call i32 @PTP_GetString(i32 %156, i32* %161, i32* %8)
  %163 = load i32, i32* %8, align 4
  %164 = mul nsw i32 %163, 2
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %7, align 8
  %168 = add i64 %167, %166
  store i64 %168, i64* %7, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %174 = load i64, i64* %7, align 8
  %175 = add i64 %173, %174
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = call i32 @PTP_GetString(i32 %171, i32* %176, i32* %8)
  %178 = load i32, i32* %8, align 4
  %179 = mul nsw i32 %178, 2
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %7, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %7, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %189 = load i64, i64* %7, align 8
  %190 = add i64 %188, %189
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = call i32 @PTP_GetString(i32 %186, i32* %191, i32* %8)
  %193 = load i32, i32* %8, align 4
  %194 = mul nsw i32 %193, 2
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %7, align 8
  %198 = add i64 %197, %196
  store i64 %198, i64* %7, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %6, align 8
  %203 = load i64, i64* @PTP_di_OperationsSupported, align 8
  %204 = load i64, i64* %7, align 8
  %205 = add i64 %203, %204
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = call i32 @PTP_GetString(i32 %201, i32* %206, i32* %8)
  br label %208

208:                                              ; preds = %26, %2
  ret void
}

declare dso_local i32 @USBH_DbgLog(i8*) #1

declare dso_local i8* @LE16(i32*) #1

declare dso_local i32 @LE32(i32*) #1

declare dso_local i32 @PTP_GetString(i32, i32*, i32*) #1

declare dso_local i8* @PTP_GetArray16(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
