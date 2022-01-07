; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rfswitch.c_send.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_rfswitch.c_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_FLOAT = common dso_local global i32 0, align 4
@proto = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i64, i64* %10, align 8
  %17 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %18 = load i32, i32* @PLATFORM_GPIO_FLOAT, align 4
  %19 = call i32 @platform_gpio_mode(i64 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto, align 8
  %21 = load i64, i64* %7, align 8
  %22 = sub i64 %21, 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = bitcast %struct.TYPE_3__* %13 to i8*
  %25 = bitcast %struct.TYPE_3__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 16, i1 false)
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %72, %6
  %27 = load i32, i32* %14, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %9, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = sub i32 %32, 1
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %61, %31
  %35 = load i32, i32* %15, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %15, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = and i64 %38, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @transmit(i32 %46, i32 %48, i64 %49, i64 %50)
  br label %60

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @transmit(i32 %54, i32 %56, i64 %57, i64 %58)
  br label %60

60:                                               ; preds = %52, %44
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %15, align 4
  br label %34

64:                                               ; preds = %34
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @transmit(i32 %66, i32 %68, i64 %69, i64 %70)
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %14, align 4
  br label %26

75:                                               ; preds = %26
  ret void
}

declare dso_local i32 @platform_gpio_mode(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @transmit(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
