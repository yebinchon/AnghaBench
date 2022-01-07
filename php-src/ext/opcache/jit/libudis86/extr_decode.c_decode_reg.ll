; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_reg.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_decode.c_decode_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32 }
%struct.ud_operand = type { i32, i32, i32 }

@UD_R_MM0 = common dso_local global i32 0, align 4
@SZ_QQ = common dso_local global i32 0, align 4
@UD_R_YMM0 = common dso_local global i32 0, align 4
@UD_R_XMM0 = common dso_local global i32 0, align 4
@UD_R_CR0 = common dso_local global i32 0, align 4
@UD_R_DR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"invalid segment register value\0A\00", align 1
@UD_R_ES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid register type\00", align 1
@UD_OP_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ud*, %struct.ud_operand*, i32, i32, i32)* @decode_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_reg(%struct.ud* %0, %struct.ud_operand* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ud*, align 8
  %7 = alloca %struct.ud_operand*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %6, align 8
  store %struct.ud_operand* %1, %struct.ud_operand** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.ud*, %struct.ud** %6, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @resolve_operand_size(%struct.ud* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %59 [
    i32 131, label %16
    i32 130, label %21
    i32 128, label %26
    i32 133, label %38
    i32 132, label %42
    i32 129, label %46
  ]

16:                                               ; preds = %5
  %17 = load %struct.ud*, %struct.ud** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @decode_gpr(%struct.ud* %17, i32 %18, i32 %19)
  store i32 %20, i32* %11, align 4
  br label %61

21:                                               ; preds = %5
  %22 = load i32, i32* @UD_R_MM0, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 7
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %11, align 4
  br label %61

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @SZ_QQ, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @UD_R_YMM0, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @UD_R_XMM0, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = add nsw i32 %27, %36
  store i32 %37, i32* %11, align 4
  br label %61

38:                                               ; preds = %5
  %39 = load i32, i32* @UD_R_CR0, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %11, align 4
  br label %61

42:                                               ; preds = %5
  %43 = load i32, i32* @UD_R_DR0, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %11, align 4
  br label %61

46:                                               ; preds = %5
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, 7
  %49 = icmp sgt i32 %48, 5
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.ud*, %struct.ud** %6, align 8
  %52 = call i32 @UDERR(%struct.ud* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %71

53:                                               ; preds = %46
  %54 = load i32, i32* @UD_R_ES, align 4
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, 7
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %53
  br label %61

59:                                               ; preds = %5
  %60 = call i32 @UD_ASSERT(i32 0)
  br label %71

61:                                               ; preds = %58, %42, %38, %35, %21, %16
  %62 = load i32, i32* @UD_OP_REG, align 4
  %63 = load %struct.ud_operand*, %struct.ud_operand** %7, align 8
  %64 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.ud_operand*, %struct.ud_operand** %7, align 8
  %67 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ud_operand*, %struct.ud_operand** %7, align 8
  %70 = getelementptr inbounds %struct.ud_operand, %struct.ud_operand* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %61, %59, %50
  ret void
}

declare dso_local i32 @resolve_operand_size(%struct.ud*, i32) #1

declare dso_local i32 @decode_gpr(%struct.ud*, i32, i32) #1

declare dso_local i32 @UDERR(%struct.ud*, i8*) #1

declare dso_local i32 @UD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
