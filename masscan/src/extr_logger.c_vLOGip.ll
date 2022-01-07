; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_logger.c_vLOGip.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_logger.c_vLOGip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%u.%u.%u.%u\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%-15s:%5u: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*, i32)* @vLOGip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vLOGip(i32 %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [16 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @global_debug_level, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %5
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %17 = load i32, i32* %7, align 4
  %18 = lshr i32 %17, 24
  %19 = and i32 %18, 255
  %20 = load i32, i32* %7, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = load i32, i32* %7, align 4
  %24 = lshr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load i32, i32* %7, align 4
  %27 = lshr i32 %26, 0
  %28 = and i32 %27, 255
  %29 = call i32 @sprintf_s(i8* %16, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load i32, i32* @stderr, align 4
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @vfprintf(i32 %34, i8* %35, i32 %36)
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @fflush(i32 %38)
  br label %40

40:                                               ; preds = %15, %5
  ret void
}

declare dso_local i32 @sprintf_s(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @vfprintf(i32, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
