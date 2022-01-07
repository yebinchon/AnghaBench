; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_rotate_key.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_tcp_fastopen_backup_key.c_rotate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rotate_key.iter = internal global i32 0, align 4
@rotate_key.new_key = internal global [4 x i32] zeroinitializer, align 16
@N_LISTEN = common dso_local global i32 0, align 4
@KEY_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rotate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotate_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i32], align 16
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @rotate_key.iter, align 4
  %7 = load i32, i32* @N_LISTEN, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load i32, i32* @rotate_key.iter, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %22, %12
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rotate_key.new_key, i64 0, i64 0))
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = call i32 (...) @rand()
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* @rotate_key.new_key, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %13

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %29 = call i32 @get_keys(i32 %27, i32* %28)
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  %32 = load i32, i32* @KEY_LENGTH, align 4
  %33 = call i32 @memcpy(i32* %31, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rotate_key.new_key, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %2, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %36 = call i32 @set_keys(i32 %34, i32* %35)
  br label %58

37:                                               ; preds = %1
  %38 = load i32, i32* %2, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %40 = call i32 @get_keys(i32 %38, i32* %39)
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* @KEY_LENGTH, align 4
  %45 = call i32 @memcpy(i32* %41, i32* %43, i32 %44)
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %49 = load i32, i32* @KEY_LENGTH, align 4
  %50 = call i32 @memcpy(i32* %47, i32* %48, i32 %49)
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %53 = load i32, i32* @KEY_LENGTH, align 4
  %54 = call i32 @memcpy(i32* %51, i32* %52, i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %57 = call i32 @set_keys(i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %37, %26
  %59 = load i32, i32* @rotate_key.iter, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @rotate_key.iter, align 4
  %61 = load i32, i32* @N_LISTEN, align 4
  %62 = mul nsw i32 %61, 2
  %63 = icmp sge i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* @rotate_key.iter, align 4
  br label %65

65:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @get_keys(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_keys(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
