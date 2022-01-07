; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_t5577_write_block.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_t5577_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SR98_SUB_IOCTL_T5577_WRITE_BLOCK = common dso_local global i32 0, align 4
@SR98_SUB_IOCTL_T5577_WRITE_BLOCK_PASS = common dso_local global i32 0, align 4
@SR98_IOCTL_T5577 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i32] [i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 100, i32 97, i32 116, i32 97, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 52, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [33 x i32] [i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 49, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr98_t5577_write_block(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [11 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @SR98_SUB_IOCTL_T5577_WRITE_BLOCK, align 4
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 1
  %22 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 7
  %28 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 6
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %6
  %32 = load i32, i32* @SR98_SUB_IOCTL_T5577_WRITE_BLOCK_PASS, align 4
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %12, align 4
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %36 = getelementptr inbounds i32, i32* %35, i64 7
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %6
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SR98_IOCTL_T5577, align 4
  %40 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i64 44, i64 40
  %45 = trunc i64 %44 to i32
  %46 = call i64 @sr98_send_receive(i32 %38, i32 %39, i32* %40, i32 %45, i32** %15, i32* %16)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %37
  %49 = load i32, i32* %16, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %54, 4
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %13, align 4
  br i1 %55, label %61, label %57

57:                                               ; preds = %51
  %58 = load i32*, i32** %15, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PRINT_ERROR(i8* bitcast ([38 x i32]* @.str to i8*), i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %65

62:                                               ; preds = %48
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.1 to i8*), i32 %63)
  br label %65

65:                                               ; preds = %62, %61
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @LocalFree(i32* %66)
  br label %68

68:                                               ; preds = %65, %37
  %69 = load i32, i32* %13, align 4
  ret i32 %69
}

declare dso_local i64 @sr98_send_receive(i32, i32, i32*, i32, i32**, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
