; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_colour_pointer_common.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_rdp.c_process_colour_pointer_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"process_colour_pointer_common: width %d height %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @process_colour_pointer_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_colour_pointer_common(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @in_uint16_le(i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @in_uint16_le(i32 %18, i32 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @in_uint16_le(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @in_uint16_le(i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @in_uint16_le(i32 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @in_uint16_le(i32 %30, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @in_uint16_le(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @in_uint8p(i32 %36, i32* %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @in_uint8p(i32 %40, i32* %41, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 32
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 32
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %2
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @MIN(i32 %54, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @MIN(i32 %58, i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ui_create_cursor(i32 %62, i32 %63, i32 %64, i32 %65, i32* %66, i32* %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ui_set_cursor(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @cache_put_cursor(i32 %72, i32 %73)
  ret void
}

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ui_create_cursor(i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @ui_set_cursor(i32) #1

declare dso_local i32 @cache_put_cursor(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
