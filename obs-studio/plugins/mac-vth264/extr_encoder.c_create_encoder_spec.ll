; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_create_encoder_spec.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_create_encoder_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kCFAllocatorDefault = common dso_local global i32 0, align 4
@kCFTypeDictionaryKeyCallBacks = common dso_local global i32 0, align 4
@kCFTypeDictionaryValueCallBacks = common dso_local global i32 0, align 4
@ENCODER_ID = common dso_local global i32 0, align 4
@ENABLE_HW_ACCEL = common dso_local global i32 0, align 4
@kCFBooleanTrue = common dso_local global i32 0, align 4
@REQUIRE_HW_ACCEL = common dso_local global i32 0, align 4
@kCFBooleanFalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_encoder_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_encoder_spec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @kCFAllocatorDefault, align 4
  %6 = call i32 @CFDictionaryCreateMutable(i32 %5, i32 3, i32* @kCFTypeDictionaryKeyCallBacks, i32* @kCFTypeDictionaryValueCallBacks)
  store i32 %6, i32* %3, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @CFStringCreateWithFileSystemRepresentation(i32* null, i8* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ENCODER_ID, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @CFDictionaryAddValue(i32 %9, i32 %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @CFRelease(i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ENABLE_HW_ACCEL, align 4
  %17 = load i32, i32* @kCFBooleanTrue, align 4
  %18 = call i32 @CFDictionaryAddValue(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @REQUIRE_HW_ACCEL, align 4
  %21 = load i32, i32* @kCFBooleanFalse, align 4
  %22 = call i32 @CFDictionaryAddValue(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @CFDictionaryCreateMutable(i32, i32, i32*, i32*) #1

declare dso_local i32 @CFStringCreateWithFileSystemRepresentation(i32*, i8*) #1

declare dso_local i32 @CFDictionaryAddValue(i32, i32, i32) #1

declare dso_local i32 @CFRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
