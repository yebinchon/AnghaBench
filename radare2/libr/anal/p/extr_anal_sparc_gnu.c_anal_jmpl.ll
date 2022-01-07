; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_anal_jmpl.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_sparc_gnu.c_anal_jmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@GPR_O7 = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_UCALL = common dso_local global i32 0, align 4
@GPR_G0 = common dso_local global i64 0, align 8
@GPR_I7 = common dso_local global i64 0, align 8
@R_ANAL_OP_TYPE_RET = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_UJMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i64)* @anal_jmpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anal_jmpl(i32* %0, %struct.TYPE_3__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @X_LDST_I(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @get_immed_sgnext(i32 %14, i32 12)
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @X_RD(i32 %17)
  %19 = load i64, i64* @GPR_O7, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* @R_ANAL_OP_TYPE_UCALL, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  br label %64

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @X_RD(i32 %30)
  %32 = load i64, i64* @GPR_G0, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @X_LDST_I(i32 %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %57

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @X_RS1(i32 %39)
  %41 = load i64, i64* @GPR_I7, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @X_RS1(i32 %44)
  %46 = load i64, i64* @GPR_O7, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %43, %38
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @R_ANAL_OP_TYPE_RET, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %85

57:                                               ; preds = %48, %43, %34, %29
  %58 = load i32, i32* @R_ANAL_OP_TYPE_UJMP, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %21
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @X_LDST_I(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @X_RS1(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @value_fill_addr_reg_disp(i32* %69, i64 %71, i32 %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %85

76:                                               ; preds = %64
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @X_RS1(i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @X_RS2(i32 %80)
  %82 = call i32 @value_fill_addr_reg_regdelta(i32* %77, i64 %79, i32 %81)
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %51, %76, %68
  ret void
}

declare dso_local i32 @X_LDST_I(i32) #1

declare dso_local i32 @get_immed_sgnext(i32, i32) #1

declare dso_local i64 @X_RD(i32) #1

declare dso_local i64 @X_RS1(i32) #1

declare dso_local i32 @value_fill_addr_reg_disp(i32*, i64, i32) #1

declare dso_local i32 @value_fill_addr_reg_regdelta(i32*, i64, i32) #1

declare dso_local i32 @X_RS2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
