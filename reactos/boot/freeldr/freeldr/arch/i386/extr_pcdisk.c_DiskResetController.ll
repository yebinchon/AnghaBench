; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_DiskResetController.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/i386/extr_pcdisk.c_DiskResetController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [73 x i8] c"DiskResetController(0x%x) DISK OPERATION FAILED -- RESETTING CONTROLLER\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DiskResetController(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_7__, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @WARN(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %2, align 4
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = call i32 @Int386(i32 19, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %14 = bitcast %struct.TYPE_6__* %13 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = call i32 @INT386_SUCCESS(i64 %15)
  ret i32 %16
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @Int386(i32, %struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @INT386_SUCCESS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
