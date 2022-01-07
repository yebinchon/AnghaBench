; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/u8g2lib/extr_u8x8_d_fbrle.c_u8x8_d_overlay.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/u8g2lib/extr_u8x8_d_fbrle.c_u8x8_d_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (i32*, i32, i32, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @u8x8_d_overlay(i32* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 1, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %11, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %32 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i32*, i32, i32, i8*)*, i32 (i32*, i32, i32, i8*)** %18, align 8
  %20 = icmp ne i32 (i32*, i32, i32, i8*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (i32*, i32, i32, i8*)*, i32 (i32*, i32, i32, i8*)** %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 %25(i32* %26, i32 %27, i32 %28, i8* %29)
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %15
  br label %54

32:                                               ; preds = %4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (i32*, i32, i32, i8*)*, i32 (i32*, i32, i32, i8*)** %35, align 8
  %37 = icmp ne i32 (i32*, i32, i32, i8*)* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (i32*, i32, i32, i8*)*, i32 (i32*, i32, i32, i8*)** %41, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 %42(i32* %43, i32 %44, i32 %45, i8* %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %38, %32
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @u8x8_d_fbrle(i32* %49, i32 %50, i32 %51, i8* %52)
  br label %54

54:                                               ; preds = %48, %31
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %21
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @u8x8_d_fbrle(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
