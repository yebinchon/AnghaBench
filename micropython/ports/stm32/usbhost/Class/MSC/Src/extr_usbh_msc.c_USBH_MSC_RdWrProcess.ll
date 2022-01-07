; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_RdWrProcess.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/usbhost/Class/MSC/Src/extr_usbh_msc.c_USBH_MSC_RdWrProcess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }

@USBH_BUSY = common dso_local global i32 0, align 4
@USBH_OK = common dso_local global i32 0, align 4
@MSC_IDLE = common dso_local global i8* null, align 8
@USBH_FAIL = common dso_local global i32 0, align 4
@USBH_UNRECOVERED_ERROR = common dso_local global i32 0, align 4
@MSC_UNRECOVERED_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Sense Key  : %x\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Additional Sense Code : %x\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Additional Sense Code Qualifier: %x\00", align 1
@MSC_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Mass Storage Device NOT ready\00", align 1
@USBH_CLASS_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64)* @USBH_MSC_RdWrProcess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @USBH_MSC_RdWrProcess(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load i32, i32* @USBH_BUSY, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @USBH_BUSY, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %191 [
    i32 130, label %22
    i32 128, label %67
    i32 129, label %112
  ]

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @USBH_MSC_SCSI_Read(%struct.TYPE_12__* %23, i64 %24, i32 0, i32* null, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @USBH_OK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i8*, i8** @MSC_IDLE, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 %31, i32* %37, align 4
  %38 = load i32, i32* @USBH_OK, align 4
  store i32 %38, i32* %6, align 4
  br label %66

39:                                               ; preds = %22
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @USBH_FAIL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 129, i32* %49, align 4
  br label %65

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @USBH_UNRECOVERED_ERROR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i8*, i8** @MSC_UNRECOVERED_ERROR, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* @USBH_FAIL, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %54, %50
  br label %65

65:                                               ; preds = %64, %43
  br label %66

66:                                               ; preds = %65, %29
  br label %192

67:                                               ; preds = %2
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @USBH_MSC_SCSI_Write(%struct.TYPE_12__* %68, i64 %69, i32 0, i32* null, i32 0)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @USBH_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load i8*, i8** @MSC_IDLE, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  store i32 %76, i32* %82, align 4
  %83 = load i32, i32* @USBH_OK, align 4
  store i32 %83, i32* %6, align 4
  br label %111

84:                                               ; preds = %67
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @USBH_FAIL, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = load i64, i64* %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 129, i32* %94, align 4
  br label %110

95:                                               ; preds = %84
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @USBH_UNRECOVERED_ERROR, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i8*, i8** @MSC_UNRECOVERED_ERROR, align 8
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i32 %101, i32* %107, align 4
  %108 = load i32, i32* @USBH_FAIL, align 4
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %99, %95
  br label %110

110:                                              ; preds = %109, %88
  br label %111

111:                                              ; preds = %110, %74
  br label %192

112:                                              ; preds = %2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %114 = load i64, i64* %4, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = load i64, i64* %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = call i32 @USBH_MSC_SCSI_RequestSense(%struct.TYPE_12__* %113, i64 %114, %struct.TYPE_14__* %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @USBH_OK, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %169

125:                                              ; preds = %112
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = load i64, i64* %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = load i64, i64* %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** @MSC_IDLE, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = load i64, i64* %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  store i32 %154, i32* %160, align 4
  %161 = load i32, i32* @MSC_ERROR, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = load i64, i64* %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  store i32 %161, i32* %167, align 4
  %168 = load i32, i32* @USBH_FAIL, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %125, %112
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* @USBH_FAIL, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = call i32 (i8*, ...) @USBH_UsrLog(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %190

175:                                              ; preds = %169
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @USBH_UNRECOVERED_ERROR, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %175
  %180 = load i8*, i8** @MSC_UNRECOVERED_ERROR, align 8
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load i64, i64* %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store i32 %181, i32* %187, align 4
  %188 = load i32, i32* @USBH_FAIL, align 4
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %179, %175
  br label %190

190:                                              ; preds = %189, %173
  br label %192

191:                                              ; preds = %2
  br label %192

192:                                              ; preds = %191, %190, %111, %66
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i32 @USBH_MSC_SCSI_Read(%struct.TYPE_12__*, i64, i32, i32*, i32) #1

declare dso_local i32 @USBH_MSC_SCSI_Write(%struct.TYPE_12__*, i64, i32, i32*, i32) #1

declare dso_local i32 @USBH_MSC_SCSI_RequestSense(%struct.TYPE_12__*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @USBH_UsrLog(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
