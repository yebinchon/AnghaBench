; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mgr_poll.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_mgr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_mgr_poll(%struct.mg_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.mg_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mg_mgr* %0, %struct.mg_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %13 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %10
  %17 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %18 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %26, align 8
  %28 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %29 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %30, i64 %32
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 %27(%struct.TYPE_4__* %34, i32 %35)
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %10

40:                                               ; preds = %10
  %41 = load %struct.mg_mgr*, %struct.mg_mgr** %3, align 8
  %42 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
