; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/keymaps/switchtester/extr_switches.c_switch_name.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/1upkeyboards/sweet16/keymaps/switchtester/extr_switches.c_switch_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mechswitch = type { i32 }

@MAX_SWITCH_NAME_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_name(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.mechswitch, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = getelementptr inbounds %struct.mechswitch, %struct.mechswitch* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %4, align 8
  %8 = getelementptr inbounds %struct.mechswitch, %struct.mechswitch* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @variant_name(i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = getelementptr inbounds %struct.mechswitch, %struct.mechswitch* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @color_name(i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* @MAX_SWITCH_NAME_LENGTH, align 8
  %16 = getelementptr inbounds %struct.mechswitch, %struct.mechswitch* %3, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @brand_name(i32 %17)
  %19 = call i32 @snprintf(i8* %14, i64 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* @MAX_SWITCH_NAME_LENGTH, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = sub nsw i64 %21, %23
  %25 = call i32 @strncat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* @MAX_SWITCH_NAME_LENGTH, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = sub nsw i64 %32, %34
  %36 = call i32 @strncat(i8* %30, i8* %31, i64 %35)
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* @MAX_SWITCH_NAME_LENGTH, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = sub nsw i64 %38, %40
  %42 = call i32 @strncat(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %29, %2
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* @MAX_SWITCH_NAME_LENGTH, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i64 @strlen(i8* %51)
  %53 = sub nsw i64 %50, %52
  %54 = call i32 @strncat(i8* %48, i8* %49, i64 %53)
  br label %55

55:                                               ; preds = %47, %43
  ret void
}

declare dso_local i8* @variant_name(i32) #1

declare dso_local i8* @color_name(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i8* @brand_name(i32) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
