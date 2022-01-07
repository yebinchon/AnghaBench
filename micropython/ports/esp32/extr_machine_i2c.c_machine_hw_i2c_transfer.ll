; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp32/extr_machine_i2c.c_machine_hw_i2c_transfer.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp32/extr_machine_i2c.c_machine_hw_i2c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MP_MACHINE_I2C_FLAG_READ = common dso_local global i32 0, align 4
@I2C_MASTER_LAST_NACK = common dso_local global i32 0, align 4
@I2C_MASTER_ACK = common dso_local global i32 0, align 4
@MP_MACHINE_I2C_FLAG_STOP = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i64 0, align 8
@MP_ENODEV = common dso_local global i32 0, align 4
@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8
@MP_ETIMEDOUT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_hw_i2c_transfer(i32* %0, i32 %1, i64 %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_6__* @MP_OBJ_TO_PTR(i32* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %12, align 8
  %18 = call i32 (...) @i2c_cmd_link_create()
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @i2c_master_start(i32 %19)
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %8, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MP_MACHINE_I2C_FLAG_READ, align 4
  %26 = and i32 %24, %25
  %27 = or i32 %23, %26
  %28 = call i32 @i2c_master_write_byte(i32 %21, i32 %27, i32 1)
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %76, %5
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %9, align 8
  %32 = icmp ne i64 %30, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MP_MACHINE_I2C_FLAG_READ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @I2C_MASTER_LAST_NACK, align 4
  br label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @I2C_MASTER_ACK, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = call i32 @i2c_master_read(i32 %39, i32 %42, i32 %45, i32 %53)
  br label %70

55:                                               ; preds = %33
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @i2c_master_write(i32 %61, i32 %64, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %60, %55
  br label %70

70:                                               ; preds = %69, %52
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 1
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %10, align 8
  br label %29

79:                                               ; preds = %29
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MP_MACHINE_I2C_FLAG_STOP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @i2c_master_stop(i32 %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 1, %92
  %94 = mul nsw i32 100, %93
  %95 = load i32, i32* @portTICK_RATE_MS, align 4
  %96 = sdiv i32 %94, %95
  %97 = call i64 @i2c_master_cmd_begin(i32 %90, i32 %91, i32 %96)
  store i64 %97, i64* %15, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @i2c_cmd_link_delete(i32 %98)
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @ESP_FAIL, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load i32, i32* @MP_ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %125

106:                                              ; preds = %87
  %107 = load i64, i64* %15, align 8
  %108 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @MP_ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %125

113:                                              ; preds = %106
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* @ESP_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @abs(i64 %118)
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %125

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %117, %110, %103
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_6__* @MP_OBJ_TO_PTR(i32*) #1

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_read(i32, i32, i32, i32) #1

declare dso_local i32 @i2c_master_write(i32, i32, i32, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i64 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
