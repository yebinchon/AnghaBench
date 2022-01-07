; ModuleID = '/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_color2int.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/x11_rawfb/extr_nuklear_rawfb.h_nk_rawfb_color2int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_color = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"nk_rawfb_color2int(): Unsupported pixel layout.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @nk_rawfb_color2int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nk_rawfb_color2int(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nk_color, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.nk_color* %4 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %1, i64* %9, align 4
  store i32 %2, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %51 [
    i32 129, label %11
    i32 128, label %31
  ]

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 24
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 8
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %53

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 24
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %4, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %3
  %52 = call i32 @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %31, %11
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
