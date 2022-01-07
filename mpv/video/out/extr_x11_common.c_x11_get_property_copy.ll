; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_x11_get_property_copy.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_x11_common.c_x11_get_property_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_x11_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vo_x11_state*, i32, i32, i32, i32, i8*, i64)* @x11_get_property_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x11_get_property_copy(%struct.vo_x11_state* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca %struct.vo_x11_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.vo_x11_state* %0, %struct.vo_x11_state** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.vo_x11_state*, %struct.vo_x11_state** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i8* @x11_get_property(%struct.vo_x11_state* %19, i32 %20, i32 %21, i32 %22, i32 %23, i32* %16)
  store i8* %24, i8** %17, align 8
  %25 = load i8*, i8** %17, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %7
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = sdiv i32 %32, 8
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i64 [ 8, %30 ], [ %34, %31 ]
  store i64 %36, i64* %18, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %18, align 8
  %39 = udiv i64 %37, %38
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i8*, i8** %13, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @memcpy(i8* %44, i8* %45, i64 %46)
  store i32 1, i32* %15, align 4
  br label %48

48:                                               ; preds = %43, %35
  %49 = load i8*, i8** %17, align 8
  %50 = call i32 @XFree(i8* %49)
  br label %51

51:                                               ; preds = %48, %7
  %52 = load i32, i32* %15, align 4
  ret i32 %52
}

declare dso_local i8* @x11_get_property(%struct.vo_x11_state*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @XFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
