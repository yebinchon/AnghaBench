; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_gpr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_gpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, i32 }

@UD_R_RAX = common dso_local global i32 0, align 4
@UD_R_EAX = common dso_local global i32 0, align 4
@UD_R_AX = common dso_local global i32 0, align 4
@UD_R_SPL = common dso_local global i32 0, align 4
@UD_R_AL = common dso_local global i32 0, align 4
@UD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid operand size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ud*, i32, i8)* @decode_gpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_gpr(%struct.ud* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ud*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.ud* %0, %struct.ud** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %60 [
    i32 64, label %9
    i32 32, label %14
    i32 16, label %19
    i32 8, label %24
    i32 0, label %54
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @UD_R_RAX, align 4
  %11 = load i8, i8* %7, align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %10, %12
  store i32 %13, i32* %4, align 4
  br label %63

14:                                               ; preds = %3
  %15 = load i32, i32* @UD_R_EAX, align 4
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %15, %17
  store i32 %18, i32* %4, align 4
  br label %63

19:                                               ; preds = %3
  %20 = load i32, i32* @UD_R_AX, align 4
  %21 = load i8, i8* %7, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %20, %22
  store i32 %23, i32* %4, align 4
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.ud*, %struct.ud** %5, align 8
  %26 = getelementptr inbounds %struct.ud, %struct.ud* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 64
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.ud*, %struct.ud** %5, align 8
  %31 = getelementptr inbounds %struct.ud, %struct.ud* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i8, i8* %7, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp sge i32 %36, 4
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @UD_R_SPL, align 4
  %40 = load i8, i8* %7, align 1
  %41 = zext i8 %40 to i32
  %42 = sub nsw i32 %41, 4
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %34
  %45 = load i32, i32* @UD_R_AL, align 4
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %45, %47
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %29, %24
  %50 = load i32, i32* @UD_R_AL, align 4
  %51 = load i8, i8* %7, align 1
  %52 = zext i8 %51 to i32
  %53 = add nsw i32 %50, %52
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %3
  %55 = load %struct.ud*, %struct.ud** %5, align 8
  %56 = getelementptr inbounds %struct.ud, %struct.ud* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @UD_ASSERT(i32 %57)
  %59 = load i32, i32* @UD_NONE, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %3
  %61 = call i32 @UD_ASSERT(i32 0)
  %62 = load i32, i32* @UD_NONE, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %54, %49, %44, %38, %19, %14, %9
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @UD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
