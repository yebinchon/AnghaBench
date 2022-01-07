; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_anal_branch.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_anal_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, i32 }

@OP2_Bicc = common dso_local global i64 0, align 8
@OP2_BPcc = common dso_local global i64 0, align 8
@OP2_FBfcc = common dso_local global i64 0, align 8
@OP2_FBPfcc = common dso_local global i64 0, align 8
@OP2_BPr = common dso_local global i64 0, align 8
@R_ANAL_COND_UNKNOWN = common dso_local global i32 0, align 4
@R_ANAL_COND_ALWAYS = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_JMP = common dso_local global i32 0, align 4
@R_ANAL_COND_NEVER = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NOP = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_CJMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i64)* @anal_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anal_branch(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @X_OP2(i32 %11)
  %13 = load i64, i64* @OP2_Bicc, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @X_OP2(i32 %16)
  %18 = load i64, i64* @OP2_BPcc, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @X_COND(i32 %21)
  %23 = call i32 @icc_to_r_cond(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %47

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @X_OP2(i32 %25)
  %27 = load i64, i64* @OP2_FBfcc, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @X_OP2(i32 %30)
  %32 = load i64, i64* @OP2_FBPfcc, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @X_COND(i32 %35)
  %37 = call i32 @fcc_to_r_cond(i32 %36)
  store i32 %37, i32* %8, align 4
  br label %46

38:                                               ; preds = %29
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @X_OP2(i32 %39)
  %41 = load i64, i64* @OP2_BPr, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @R_ANAL_COND_UNKNOWN, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %38
  br label %46

46:                                               ; preds = %45, %34
  br label %47

47:                                               ; preds = %46, %20
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @R_ANAL_COND_ALWAYS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i32, i32* @R_ANAL_OP_TYPE_JMP, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  br label %72

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @R_ANAL_COND_NEVER, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i32, i32* @R_ANAL_OP_TYPE_NOP, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  br label %124

63:                                               ; preds = %55
  %64 = load i32, i32* @R_ANAL_OP_TYPE_CJMP, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %6, align 8
  %68 = add nsw i64 %67, 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %51
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @X_OP2(i32 %73)
  %75 = load i64, i64* @OP2_Bicc, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @X_OP2(i32 %78)
  %80 = load i64, i64* @OP2_FBfcc, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @get_immed_sgnext(i32 %83, i32 21)
  %85 = mul nsw i32 %84, 4
  store i32 %85, i32* %7, align 4
  br label %112

86:                                               ; preds = %77
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @X_OP2(i32 %87)
  %89 = load i64, i64* @OP2_BPcc, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @X_OP2(i32 %92)
  %94 = load i64, i64* @OP2_FBPfcc, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @get_immed_sgnext(i32 %97, i32 18)
  %99 = mul nsw i32 %98, 4
  store i32 %99, i32* %7, align 4
  br label %111

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = call i64 @X_OP2(i32 %101)
  %103 = load i64, i64* @OP2_BPr, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @X_DISP16(i32 %106)
  %108 = call i32 @get_immed_sgnext(i32 %107, i32 15)
  %109 = mul nsw i32 %108, 4
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %100
  br label %111

111:                                              ; preds = %110, %96
  br label %112

112:                                              ; preds = %111, %82
  %113 = load i64, i64* %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @value_fill_addr_pc_disp(i64 %113, i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %118, %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  br label %124

124:                                              ; preds = %112, %59
  ret void
}

declare dso_local i64 @X_OP2(i32) #1

declare dso_local i32 @icc_to_r_cond(i32) #1

declare dso_local i32 @X_COND(i32) #1

declare dso_local i32 @fcc_to_r_cond(i32) #1

declare dso_local i32 @get_immed_sgnext(i32, i32) #1

declare dso_local i32 @X_DISP16(i32) #1

declare dso_local i32 @value_fill_addr_pc_disp(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
