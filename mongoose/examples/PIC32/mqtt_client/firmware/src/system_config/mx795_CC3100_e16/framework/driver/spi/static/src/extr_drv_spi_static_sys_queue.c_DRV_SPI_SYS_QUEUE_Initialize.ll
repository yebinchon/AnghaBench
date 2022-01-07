; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c_DRV_SPI_SYS_QUEUE_Initialize.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/system_config/mx795_CC3100_e16/framework/driver/spi/static/src/extr_drv_spi_static_sys_queue.c_DRV_SPI_SYS_QUEUE_Initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i64, i32* }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_7__* }

@DRV_SPI_SYS_QUEUE_INVALID_PARAMETER = common dso_local global i32 0, align 4
@DRV_SPI_SYS_QUEUE_Fifo = common dso_local global i64 0, align 8
@DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@DRV_SPI_SYS_QUEUE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DRV_SPI_SYS_QUEUE_Initialize(%struct.TYPE_8__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i64*, i64** %5, align 8
  %22 = icmp eq i64* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %15, %2
  %24 = load i32, i32* @DRV_SPI_SYS_QUEUE_INVALID_PARAMETER, align 4
  store i32 %24, i32* %3, align 4
  br label %188

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DRV_SPI_SYS_QUEUE_Fifo, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @DRV_SPI_SYS_QUEUE_INVALID_PARAMETER, align 4
  store i32 %32, i32* %3, align 4
  br label %188

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 16, %37
  %39 = add i64 %38, 64
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 8, %43
  %45 = add i64 %39, %44
  store i64 %45, i64* %6, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i32, i32* @DRV_SPI_SYS_QUEUE_OUT_OF_MEMORY, align 4
  store i32 %52, i32* %3, align 4
  br label %188

53:                                               ; preds = %33
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @memset(i32* %56, i32 0, i64 %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %7, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = ptrtoint %struct.TYPE_6__* %65 to i64
  %67 = add i64 %66, 64
  %68 = inttoptr i64 %67 to %struct.TYPE_7__*
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 7
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 7
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = ptrtoint %struct.TYPE_7__* %73 to i64
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 16, %78
  %80 = add i64 %74, %79
  %81 = inttoptr i64 %80 to %struct.TYPE_9__*
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %83, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %8, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %89, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 5
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store %struct.TYPE_6__* %93, %struct.TYPE_6__** %95, align 8
  store i64 1, i64* %9, align 8
  br label %96

96:                                               ; preds = %121, %53
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %96
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %105
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store %struct.TYPE_7__* %106, %struct.TYPE_7__** %110, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 5
  store %struct.TYPE_7__* %113, %struct.TYPE_7__** %115, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store %struct.TYPE_6__* %116, %struct.TYPE_6__** %120, align 8
  br label %121

121:                                              ; preds = %103
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %96

124:                                              ; preds = %96
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, 64
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = mul i64 16, %132
  %134 = sub i64 %128, %133
  store i64 %134, i64* %10, align 8
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 8, %139
  %141 = udiv i64 %135, %140
  store i64 %141, i64* %11, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %12, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  store %struct.TYPE_9__* %145, %struct.TYPE_9__** %147, align 8
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %150, align 8
  store i64 1, i64* %9, align 8
  br label %151

151:                                              ; preds = %177, %124
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %11, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %151
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %157, align 8
  %159 = ptrtoint %struct.TYPE_9__* %158 to i64
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add i64 8, %163
  %165 = load i64, i64* %9, align 8
  %166 = mul i64 %164, %165
  %167 = add i64 %159, %166
  %168 = inttoptr i64 %167 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %168, %struct.TYPE_9__** %12, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  store %struct.TYPE_9__* %169, %struct.TYPE_9__** %173, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  store %struct.TYPE_9__* %174, %struct.TYPE_9__** %176, align 8
  br label %177

177:                                              ; preds = %155
  %178 = load i64, i64* %9, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %9, align 8
  br label %151

180:                                              ; preds = %151
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i64 %181, i64* %183, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %185 = ptrtoint %struct.TYPE_6__* %184 to i64
  %186 = load i64*, i64** %5, align 8
  store i64 %185, i64* %186, align 8
  %187 = load i32, i32* @DRV_SPI_SYS_QUEUE_SUCCESS, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %180, %51, %31, %23
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
