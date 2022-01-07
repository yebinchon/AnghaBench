; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op_fillval.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_x86_cs.c_op_fillval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32*, i32 }

@R_ANAL_OP_TYPE_MASK = common dso_local global i32 0, align 4
@R_ANAL_OP_TYPE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*, i32*)* @op_fillval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_fillval(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @R_ANAL_OP_TYPE_MASK, align 4
  %13 = and i32 %11, %12
  switch i32 %13, label %66 [
    i32 141, label %14
    i32 143, label %14
    i32 142, label %14
    i32 144, label %14
    i32 133, label %14
    i32 132, label %14
    i32 135, label %14
    i32 134, label %14
    i32 137, label %14
    i32 136, label %14
    i32 146, label %14
    i32 145, label %14
    i32 139, label %14
    i32 128, label %14
    i32 131, label %14
    i32 129, label %14
    i32 138, label %14
    i32 140, label %14
    i32 147, label %14
    i32 130, label %47
  ]

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = call i32 @CREATE_SRC_DST(%struct.TYPE_4__* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @set_src_dst(i32 %19, i32* %20, i32* %21, i32 0)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @set_src_dst(i32 %27, i32* %28, i32* %29, i32 1)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @set_src_dst(i32 %35, i32* %36, i32* %37, i32 2)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @set_src_dst(i32 %43, i32* %44, i32* %45, i32 3)
  br label %67

47:                                               ; preds = %4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @R_ANAL_OP_TYPE_REG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = call i32 @CREATE_SRC_DST(%struct.TYPE_4__* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @set_src_dst(i32 %61, i32* %62, i32* %63, i32 0)
  br label %65

65:                                               ; preds = %54, %47
  br label %67

66:                                               ; preds = %4
  br label %67

67:                                               ; preds = %66, %65, %14
  ret void
}

declare dso_local i32 @CREATE_SRC_DST(%struct.TYPE_4__*) #1

declare dso_local i32 @set_src_dst(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
