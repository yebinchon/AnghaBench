; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/test/extr_main.c_write_thread.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/test/extr_main.c_write_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.can_frame = type { i32, i32, i32 }

@packet_len = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@payload = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Wrote %d bytes; addr: %lx; datlen: %d\0A\00", align 1
@dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @write_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.can_frame, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %1, %61
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %58, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %61

14:                                               ; preds = %11
  %15 = load i32, i32* @packet_len, align 4
  %16 = srem i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @CAN_EFF_FLAG, align 4
  %20 = or i32 2218, %19
  %21 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  br label %24

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %4, i32 0, i32 0
  store i32 170, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i32, i32* @packet_len, align 4
  %26 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %4, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %4, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @payload, align 4
  %30 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %4, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %29, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @write(i32 %33, %struct.can_frame* %4, i32 12)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37, i32 %39)
  %41 = load i32, i32* @dir, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load i32, i32* @packet_len, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @packet_len, align 4
  %46 = load i32, i32* @packet_len, align 4
  %47 = icmp sge i32 %46, 8
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* @dir, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %57

50:                                               ; preds = %24
  %51 = load i32, i32* @packet_len, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @packet_len, align 4
  %53 = load i32, i32* @packet_len, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 1, i32* @dir, align 4
  br label %56

56:                                               ; preds = %55, %50
  br label %57

57:                                               ; preds = %56, %49
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %11

61:                                               ; preds = %11
  %62 = call i32 @sleep(i32 2)
  br label %10
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @write(i32, %struct.can_frame*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
