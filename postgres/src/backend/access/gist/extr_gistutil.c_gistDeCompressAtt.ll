; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistDeCompressAtt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistDeCompressAtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gistDeCompressAtt(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %50, %7
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %15, align 4
  %25 = add nsw i32 %24, 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %14, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @index_getattr(i32 %23, i32 %25, i32 %28, i32* %32)
  store i32 %33, i32* %16, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @gistdentryinit(%struct.TYPE_4__* %34, i32 %35, i32* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  br label %17

53:                                               ; preds = %17
  ret void
}

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32 @index_getattr(i32, i32, i32, i32*) #1

declare dso_local i32 @gistdentryinit(%struct.TYPE_4__*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
