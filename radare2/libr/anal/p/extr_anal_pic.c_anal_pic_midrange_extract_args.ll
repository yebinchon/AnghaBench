; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_midrange_extract_args.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_midrange_extract_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@PIC_MIDRANGE_OP_ARGS_2F_MASK_F = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_7F_MASK_F = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_F = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_D = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_N = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_K = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_B = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_F = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_4K_MASK_K = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_8K_MASK_K = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_9K_MASK_K = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_11K_MASK_K = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_N = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_4__*)* @anal_pic_midrange_extract_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anal_pic_midrange_extract_args(i32 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = call i32 @memset(%struct.TYPE_4__* %7, i32 0, i32 24)
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %95 [
    i32 128, label %10
    i32 134, label %11
    i32 131, label %17
    i32 137, label %23
    i32 135, label %35
    i32 133, label %47
    i32 132, label %59
    i32 130, label %65
    i32 129, label %71
    i32 138, label %77
    i32 136, label %83
  ]

10:                                               ; preds = %3
  br label %95

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_2F_MASK_F, align 4
  %14 = and i32 %12, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %95

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_7F_MASK_F, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %95

23:                                               ; preds = %3
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_F, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_1D_7F_MASK_D, align 4
  %31 = and i32 %29, %30
  %32 = ashr i32 %31, 7
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %95

35:                                               ; preds = %3
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_N, align 4
  %38 = and i32 %36, %37
  %39 = ashr i32 %38, 6
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_1N_6K_MASK_K, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  br label %95

47:                                               ; preds = %3
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_B, align 4
  %50 = and i32 %48, %49
  %51 = ashr i32 %50, 7
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_3B_7F_MASK_F, align 4
  %56 = and i32 %54, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %95

59:                                               ; preds = %3
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_4K_MASK_K, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  br label %95

65:                                               ; preds = %3
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_8K_MASK_K, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  br label %95

71:                                               ; preds = %3
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_9K_MASK_K, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %95

77:                                               ; preds = %3
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_11K_MASK_K, align 4
  %80 = and i32 %78, %79
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %95

83:                                               ; preds = %3
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_N, align 4
  %86 = and i32 %84, %85
  %87 = ashr i32 %86, 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @PIC_MIDRANGE_OP_ARGS_1N_2M_MASK_M, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %10, %11, %17, %23, %35, %47, %59, %65, %71, %77, %83, %3
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
