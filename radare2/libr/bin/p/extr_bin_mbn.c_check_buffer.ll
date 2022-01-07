; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mbn.c_check_buffer.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_mbn.c_check_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"10i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_buffer(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @r_return_val_if_fail(i32* %6, i32 0)
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @r_buf_size(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 4, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @r_buf_fread_at(i32* %14, i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %66

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %66

23:                                               ; preds = %19
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 1), align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %66

31:                                               ; preds = %23
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 3), align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 2), align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  store i32 0, i32* %2, align 4
  br label %66

39:                                               ; preds = %34
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 8), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 3), align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %66

44:                                               ; preds = %39
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 7), align 4
  %46 = icmp sge i32 %45, 983040
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %66

48:                                               ; preds = %44
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 5), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 3), align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %66

53:                                               ; preds = %48
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 6), align 4
  %55 = icmp sge i32 %54, 983040
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %66

57:                                               ; preds = %53
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 9), align 4
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sb, i32 0, i32 9), align 4
  %62 = icmp sgt i32 %61, 64
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %57
  store i32 0, i32* %2, align 4
  br label %66

64:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %66

65:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %64, %63, %56, %52, %47, %43, %38, %30, %22, %18
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @r_return_val_if_fail(i32*, i32) #1

declare dso_local i32 @r_buf_size(i32*) #1

declare dso_local i32 @r_buf_fread_at(i32*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
