; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c__readBlockHeader.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c__readBlockHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@K_VERS_1_3 = common dso_local global i64 0, align 8
@BLK_DATA = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*)* @_readBlockHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_readBlockHeader(%struct.TYPE_6__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @K_VERS_1_3, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @BLK_DATA, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @getc(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EOF, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  store i32 0, i32* %32, align 4
  br label %42

33:                                               ; preds = %21
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %18
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = call i32 @ReadInt(%struct.TYPE_6__* %39)
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @ReadInt(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
