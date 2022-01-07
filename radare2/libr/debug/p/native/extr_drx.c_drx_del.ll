; ModuleID = '/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_drx.c_drx_del.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/debug/p/native/extr_drx.c_drx_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@R_REG_TYPE_DRX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drx_del(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @R_REG_TYPE_DRX, align 4
  %15 = call i32 @r_debug_reg_sync(i32* %13, i32 %14, i32 0)
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @r_debug_drx_set(i32* %16, i64 %19, i32 0, i32 0, i32 0, i32 0)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @R_REG_TYPE_DRX, align 4
  %23 = call i32 @r_debug_reg_sync(i32* %21, i32 %22, i32 1)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  store i32 1, i32* %4, align 4
  br label %29

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %12
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @r_debug_reg_sync(i32*, i32, i32) #1

declare dso_local i32 @r_debug_drx_set(i32*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
