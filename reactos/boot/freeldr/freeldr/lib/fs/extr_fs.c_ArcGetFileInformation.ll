; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fs.c_ArcGetFileInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_fs.c_ArcGetFileInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i64, i32*)* }

@MAX_FDS = common dso_local global i64 0, align 8
@FileData = common dso_local global %struct.TYPE_4__* null, align 8
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ArcGetFileInformation(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MAX_FDS, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FileData, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9, %2
  %17 = load i32, i32* @EBADF, align 4
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %9
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @FileData, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (i64, i32*)*, i32 (i64, i32*)** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 %25(i64 %26, i32* %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
