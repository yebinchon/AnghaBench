; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_DetectSerialPorts.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_machpc.c_DetectSerialPorts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__, i64, i8*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"DetectSerialPorts()\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Found COM%u port at 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"COM%ld\00", align 1
@TAG_HW_RESOURCE_LIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to allocate resource descriptor\0A\00", align 1
@CmResourceTypePort = common dso_local global i32 0, align 4
@CmResourceShareDeviceExclusive = common dso_local global i8* null, align 8
@CM_RESOURCE_PORT_IO = common dso_local global i64 0, align 8
@CmResourceTypeInterrupt = common dso_local global i32 0, align 4
@CmResourceShareUndetermined = common dso_local global i8* null, align 8
@CM_RESOURCE_INTERRUPT_LATCHED = common dso_local global i64 0, align 8
@CmResourceTypeDeviceSpecific = common dso_local global i32 0, align 4
@ControllerClass = common dso_local global i32 0, align 4
@SerialController = common dso_local global i32 0, align 4
@Output = common dso_local global i32 0, align 4
@Input = common dso_local global i32 0, align 4
@ConsoleIn = common dso_local global i32 0, align 4
@ConsoleOut = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DetectSerialPorts(i32 %0, i64 (i64, i64*)* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64 (i64, i64*)*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [80 x i32], align 16
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 (i64, i64*)* %1, i64 (i64, i64*)** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %14, align 8
  %18 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %16, align 8
  br label %19

19:                                               ; preds = %166, %3
  %20 = load i64, i64* %16, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %169

23:                                               ; preds = %19
  %24 = load i64 (i64, i64*)*, i64 (i64, i64*)** %6, align 8
  %25 = load i64, i64* %16, align 8
  %26 = call i64 %24(i64 %25, i64* %11)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @UlongToPtr(i64 %30)
  %32 = call i32 @CpDoesPortExist(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %23
  br label %166

35:                                               ; preds = %29
  %36 = load i64, i64* %16, align 8
  %37 = add nsw i64 %36, 1
  %38 = load i64, i64* %12, align 8
  %39 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %38)
  %40 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %41 = load i64, i64* %16, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @sprintf(i32* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  store i64 16, i64* %17, align 8
  %44 = load i64, i64* %17, align 8
  %45 = load i32, i32* @TAG_HW_RESOURCE_LIST, align 4
  %46 = call %struct.TYPE_18__* @FrLdrHeapAlloc(i64 %44, i32 %45)
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %8, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %48 = icmp eq %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %166

51:                                               ; preds = %35
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %53 = load i64, i64* %17, align 8
  %54 = call i32 @memset(%struct.TYPE_18__* %52, i32 0, i64 %53)
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  store i32 3, i32* %60, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i64 0
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %9, align 8
  %65 = load i32, i32* @CmResourceTypePort, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** @CmResourceShareDeviceExclusive, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* @CM_RESOURCE_PORT_IO, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  store i64 %74, i64* %79, align 8
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i32 7, i32* %88, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i64 1
  store %struct.TYPE_19__* %92, %struct.TYPE_19__** %9, align 8
  %93 = load i32, i32* @CmResourceTypeInterrupt, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** @CmResourceShareUndetermined, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  %99 = load i64, i64* @CM_RESOURCE_INTERRUPT_LATCHED, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 1
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i64 %102, i64* %106, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  store i32 -1, i32* %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i64 2
  store %struct.TYPE_19__* %119, %struct.TYPE_19__** %9, align 8
  %120 = load i32, i32* @CmResourceTypeDeviceSpecific, align 4
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load i8*, i8** @CmResourceShareUndetermined, align 8
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  store i32 4, i32* %131, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i64 3
  %136 = bitcast %struct.TYPE_19__* %135 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %136, %struct.TYPE_17__** %10, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  store i32 1843200, i32* %138, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @ControllerClass, align 4
  %141 = load i32, i32* @SerialController, align 4
  %142 = load i32, i32* @Output, align 4
  %143 = load i32, i32* @Input, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @ConsoleIn, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @ConsoleOut, align 4
  %148 = or i32 %146, %147
  %149 = load i64, i64* %14, align 8
  %150 = getelementptr inbounds [80 x i32], [80 x i32]* %13, i64 0, i64 0
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %152 = load i64, i64* %17, align 8
  %153 = call i32 @FldrCreateComponentKey(i32 %139, i32 %140, i32 %141, i32 %148, i64 %149, i32 -1, i32* %150, %struct.TYPE_18__* %151, i64 %152, i32* %15)
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @UlongToPtr(i64 %154)
  %156 = call i32 @Rs232PortInUse(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %51
  %159 = load i32, i32* %15, align 4
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @UlongToPtr(i64 %160)
  %162 = call i32 @DetectSerialPointerPeripheral(i32 %159, i32 %161)
  br label %163

163:                                              ; preds = %158, %51
  %164 = load i64, i64* %14, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %14, align 8
  br label %166

166:                                              ; preds = %163, %49, %34
  %167 = load i64, i64* %16, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %16, align 8
  br label %19

169:                                              ; preds = %19
  %170 = load i32, i32* %4, align 4
  ret i32 %170
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @CpDoesPortExist(i32) #1

declare dso_local i32 @UlongToPtr(i64) #1

declare dso_local i32 @sprintf(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_18__* @FrLdrHeapAlloc(i64, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @FldrCreateComponentKey(i32, i32, i32, i32, i64, i32, i32*, %struct.TYPE_18__*, i64, i32*) #1

declare dso_local i32 @Rs232PortInUse(i32) #1

declare dso_local i32 @DetectSerialPointerPeripheral(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
