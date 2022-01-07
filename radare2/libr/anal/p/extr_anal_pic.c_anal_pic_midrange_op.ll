; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_midrange_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_pic.c_anal_pic_midrange_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 (i32*, %struct.TYPE_5__*, i32, i32*)*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@R_ANAL_OP_TYPE_ILL = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_NOP = common dso_local global i32 0, align 4
@PIC_MIDRANGE_OPINFO_LEN = common dso_local global i32 0, align 4
@pic_midrange_op_anal_info = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, i32, i32*, i32)* @anal_pic_midrange_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anal_pic_midrange_op(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @anal_pic_midrange_malloc(i32* %16, i32 0)
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @R_ANAL_OP_TYPE_ILL, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %82

30:                                               ; preds = %20
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @r_read_le16(i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 2, i32* %34, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @R_ANAL_OP_TYPE_NOP, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i64 @pic_midrange_get_opcode(i32 %40)
  store i64 %41, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %75, %30
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @PIC_MIDRANGE_OPINFO_LEN, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pic_midrange_op_anal_info, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pic_midrange_op_anal_info, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @anal_pic_midrange_extract_args(i32 %56, i32 %62, i32* %15)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pic_midrange_op_anal_info, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32 (i32*, %struct.TYPE_5__*, i32, i32*)*, i32 (i32*, %struct.TYPE_5__*, i32, i32*)** %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 %69(i32* %70, %struct.TYPE_5__* %71, i32 %72, i32* %15)
  br label %78

74:                                               ; preds = %46
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %13, align 4
  br label %42

78:                                               ; preds = %55, %42
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %23
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @anal_pic_midrange_malloc(i32*, i32) #1

declare dso_local i32 @r_read_le16(i32*) #1

declare dso_local i64 @pic_midrange_get_opcode(i32) #1

declare dso_local i32 @anal_pic_midrange_extract_args(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
