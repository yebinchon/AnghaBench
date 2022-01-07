; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op_stackidx.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op_stackidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@X86_OP_REG = common dso_local global i64 0, align 8
@X86_OP_IMM = common dso_local global i64 0, align 8
@X86_REG_RSP = common dso_local global i64 0, align 8
@X86_REG_ESP = common dso_local global i64 0, align 8
@R_ANAL_STACK_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32*, i32)* @op_stackidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_stackidx(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.TYPE_5__, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  call void @INSOP(%struct.TYPE_5__* sret %7, i32 0)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @X86_OP_REG, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %3
  call void @INSOP(%struct.TYPE_5__* sret %8, i32 1)
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @X86_OP_IMM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %17
  call void @INSOP(%struct.TYPE_5__* sret %9, i32 0)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @X86_REG_RSP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  call void @INSOP(%struct.TYPE_5__* sret %10, i32 0)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @X86_REG_ESP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @R_ANAL_STACK_INC, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  call void @INSOP(%struct.TYPE_5__* sret %11, i32 1)
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 0, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %49

44:                                               ; preds = %32
  call void @INSOP(%struct.TYPE_5__* sret %12, i32 1)
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %38
  br label %50

50:                                               ; preds = %49, %27
  br label %51

51:                                               ; preds = %50, %17, %3
  ret void
}

declare dso_local void @INSOP(%struct.TYPE_5__* sret, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
