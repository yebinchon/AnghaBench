; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_getFileMode.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_getFileMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_IOERR_FSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i32*)* @getFileMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getFileMode(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.stat, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @osStat(i8* %12, %struct.stat* %9)
  %14 = icmp eq i64 0, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 511
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @SQLITE_IOERR_FSTAT, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i32, i32* %10, align 4
  ret i32 %29
}

declare dso_local i64 @osStat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
