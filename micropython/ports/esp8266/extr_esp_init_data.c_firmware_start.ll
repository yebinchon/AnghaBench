; ModuleID = '/home/carl/AnghaBench/micropython/ports/esp8266/extr_esp_init_data.c_firmware_start.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/esp8266/extr_esp_init_data.c_firmware_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@flashchip = common dso_local global i32 0, align 4
@firmware_start.msg = internal global [19 x i8] c"Writing init data\0A\00", align 16
@default_init_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @firmware_start() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_2__* bitcast (i32* getelementptr inbounds (i32, i32* @flashchip, i64 4) to %struct.TYPE_2__*), %struct.TYPE_2__** %1, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %7, 16384
  %9 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %10 = call i32 @SPIRead(i64 %8, i8* %9, i32 128)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %0
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 128
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %27

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %22, %11
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %27
  %31 = call i32 @ets_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @firmware_start.msg, i64 0, i64 0))
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %33 = call i32 @SPIRead(i64 sub nsw (i64 ptrtoint (i32* @default_init_data to i64), i64 1075838976), i8* %32, i32 128)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %36, 16384
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %39 = call i32 @SPIWrite(i64 %37, i8* %38, i32 128)
  br label %40

40:                                               ; preds = %30, %27
  call void asm sideeffect "j call_user_start", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  ret void
}

declare dso_local i32 @SPIRead(i64, i8*, i32) #1

declare dso_local i32 @ets_printf(i8*) #1

declare dso_local i32 @SPIWrite(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1031}
