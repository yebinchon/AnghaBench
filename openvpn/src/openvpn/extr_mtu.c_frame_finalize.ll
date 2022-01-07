; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_frame_finalize.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_mtu.c_frame_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame = type { i32, i32 }

@TUN_MTU_MIN = common dso_local global i64 0, align 8
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"TUN MTU value (%d) must be at least %d\00", align 1
@M_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"MTU is too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @frame_finalize(%struct.frame* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.frame*, %struct.frame** %6, align 8
  %21 = call i32 @TUN_LINK_DELTA(%struct.frame* %20)
  %22 = add nsw i32 %19, %21
  %23 = load %struct.frame*, %struct.frame** %6, align 8
  %24 = getelementptr inbounds %struct.frame, %struct.frame* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %31

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.frame*, %struct.frame** %6, align 8
  %30 = getelementptr inbounds %struct.frame, %struct.frame* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %13
  %32 = load %struct.frame*, %struct.frame** %6, align 8
  %33 = call i64 @TUN_MTU_SIZE(%struct.frame* %32)
  %34 = load i64, i64* @TUN_MTU_MIN, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* @M_WARN, align 4
  %38 = load %struct.frame*, %struct.frame** %6, align 8
  %39 = call i64 @TUN_MTU_SIZE(%struct.frame* %38)
  %40 = load i64, i64* @TUN_MTU_MIN, align 8
  %41 = call i32 @msg(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %39, i64 %40)
  %42 = load %struct.frame*, %struct.frame** %6, align 8
  %43 = load i32, i32* @M_FATAL, align 4
  %44 = call i32 @frame_print(%struct.frame* %42, i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.frame*, %struct.frame** %6, align 8
  %47 = getelementptr inbounds %struct.frame, %struct.frame* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.frame*, %struct.frame** %6, align 8
  %50 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @TUN_LINK_DELTA(%struct.frame*) #1

declare dso_local i64 @TUN_MTU_SIZE(%struct.frame*) #1

declare dso_local i32 @msg(i32, i8*, i64, i64) #1

declare dso_local i32 @frame_print(%struct.frame*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
