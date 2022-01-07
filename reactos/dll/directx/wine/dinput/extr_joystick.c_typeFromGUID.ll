; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_joystick.c_typeFromGUID.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/dinput/extr_joystick.c_typeFromGUID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GUID_ConstantForce = common dso_local global i32 0, align 4
@DIEFT_CONSTANTFORCE = common dso_local global i32 0, align 4
@GUID_Square = common dso_local global i32 0, align 4
@GUID_Sine = common dso_local global i32 0, align 4
@GUID_Triangle = common dso_local global i32 0, align 4
@GUID_SawtoothUp = common dso_local global i32 0, align 4
@GUID_SawtoothDown = common dso_local global i32 0, align 4
@DIEFT_PERIODIC = common dso_local global i32 0, align 4
@GUID_RampForce = common dso_local global i32 0, align 4
@DIEFT_RAMPFORCE = common dso_local global i32 0, align 4
@GUID_Spring = common dso_local global i32 0, align 4
@GUID_Damper = common dso_local global i32 0, align 4
@GUID_Inertia = common dso_local global i32 0, align 4
@GUID_Friction = common dso_local global i32 0, align 4
@DIEFT_CONDITION = common dso_local global i32 0, align 4
@GUID_CustomForce = common dso_local global i32 0, align 4
@DIEFT_CUSTOMFORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"GUID (%s) is not a known force type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @typeFromGUID(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @IsEqualGUID(i32 %4, i32* @GUID_ConstantForce)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @DIEFT_CONSTANTFORCE, align 4
  store i32 %8, i32* %2, align 4
  br label %65

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @IsEqualGUID(i32 %10, i32* @GUID_Square)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @IsEqualGUID(i32 %14, i32* @GUID_Sine)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @IsEqualGUID(i32 %18, i32* @GUID_Triangle)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @IsEqualGUID(i32 %22, i32* @GUID_SawtoothUp)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @IsEqualGUID(i32 %26, i32* @GUID_SawtoothDown)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21, %17, %13, %9
  %30 = load i32, i32* @DIEFT_PERIODIC, align 4
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @IsEqualGUID(i32 %32, i32* @GUID_RampForce)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @DIEFT_RAMPFORCE, align 4
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @IsEqualGUID(i32 %38, i32* @GUID_Spring)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = call i64 @IsEqualGUID(i32 %42, i32* @GUID_Damper)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = call i64 @IsEqualGUID(i32 %46, i32* @GUID_Inertia)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @IsEqualGUID(i32 %50, i32* @GUID_Friction)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49, %45, %41, %37
  %54 = load i32, i32* @DIEFT_CONDITION, align 4
  store i32 %54, i32* %2, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load i32, i32* %3, align 4
  %57 = call i64 @IsEqualGUID(i32 %56, i32* @GUID_CustomForce)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @DIEFT_CUSTOMFORCE, align 4
  store i32 %60, i32* %2, align 4
  br label %65

61:                                               ; preds = %55
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @_dump_dinput_GUID(i32 %62)
  %64 = call i32 @WARN(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %53, %35, %29, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @IsEqualGUID(i32, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @_dump_dinput_GUID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
