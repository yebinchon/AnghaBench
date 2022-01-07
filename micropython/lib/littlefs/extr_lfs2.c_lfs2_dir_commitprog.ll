; ModuleID = '/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_commitprog.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/littlefs/extr_lfs2.c_lfs2_dir_commitprog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.lfs2_commit = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.lfs2_commit*, i8*, i64)* @lfs2_dir_commitprog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lfs2_dir_commitprog(%struct.TYPE_4__* %0, %struct.lfs2_commit* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.lfs2_commit*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.lfs2_commit* %1, %struct.lfs2_commit** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.lfs2_commit*, %struct.lfs2_commit** %7, align 8
  %17 = getelementptr inbounds %struct.lfs2_commit, %struct.lfs2_commit* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.lfs2_commit*, %struct.lfs2_commit** %7, align 8
  %20 = getelementptr inbounds %struct.lfs2_commit, %struct.lfs2_commit* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @lfs2_bd_prog(%struct.TYPE_4__* %11, i32* %13, i32* %15, i32 0, i32 %18, i32 %21, i32* %23, i64 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = load %struct.lfs2_commit*, %struct.lfs2_commit** %7, align 8
  %32 = getelementptr inbounds %struct.lfs2_commit, %struct.lfs2_commit* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @lfs2_crc(i32 %33, i8* %34, i64 %35)
  %37 = load %struct.lfs2_commit*, %struct.lfs2_commit** %7, align 8
  %38 = getelementptr inbounds %struct.lfs2_commit, %struct.lfs2_commit* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.lfs2_commit*, %struct.lfs2_commit** %7, align 8
  %41 = getelementptr inbounds %struct.lfs2_commit, %struct.lfs2_commit* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %30, %28
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @lfs2_bd_prog(%struct.TYPE_4__*, i32*, i32*, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @lfs2_crc(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
