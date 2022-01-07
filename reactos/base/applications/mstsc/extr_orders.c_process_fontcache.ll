; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_fontcache.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_orders.c_process_fontcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"FONTCACHE(font=%d,n=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @process_fontcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_fontcache(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @in_uint8(i32 %14, i32 %15)
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @in_uint8(i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @DEBUG(i8* %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %68, %1
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @in_uint16_le(i32 %30, i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @in_uint16_le(i32 %33, i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @in_uint16_le(i32 %36, i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @in_uint16_le(i32 %39, i32 %40)
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @in_uint16_le(i32 %42, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 7
  %48 = sdiv i32 %47, 8
  %49 = mul nsw i32 %45, %48
  %50 = add nsw i32 %49, 3
  %51 = and i32 %50, -4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @in_uint8p(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = call i32 @ui_create_glyph(i32 %56, i32 %57, i32* %58)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @cache_put_font(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %29
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %25

71:                                               ; preds = %25
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @ui_create_glyph(i32, i32, i32*) #1

declare dso_local i32 @cache_put_font(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
