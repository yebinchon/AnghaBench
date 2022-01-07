; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_createModule.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_createModule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32*, i8*, void (i8*)*)* @createModule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createModule(%struct.TYPE_5__* %0, i8* %1, i32* %2, i8* %3, void (i8*)* %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca void (i8*)*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store void (i8*)* %4, void (i8*)** %10, align 8
  %12 = load i32, i32* @SQLITE_OK, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @sqlite3_mutex_enter(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @sqlite3HashFind(i32* %18, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %23, i32* %11, align 4
  br label %31

24:                                               ; preds = %5
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load void (i8*)*, void (i8*)** %10, align 8
  %30 = call i32 @sqlite3VtabCreateModule(%struct.TYPE_5__* %25, i8* %26, i32* %27, i8* %28, void (i8*)* %29)
  br label %31

31:                                               ; preds = %24, %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @sqlite3ApiExit(%struct.TYPE_5__* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load void (i8*)*, void (i8*)** %10, align 8
  %40 = icmp ne void (i8*)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load void (i8*)*, void (i8*)** %10, align 8
  %43 = load i8*, i8** %9, align 8
  call void %42(i8* %43)
  br label %44

44:                                               ; preds = %41, %38, %31
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sqlite3_mutex_leave(i32 %47)
  %49 = load i32, i32* %11, align 4
  ret i32 %49
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i64 @sqlite3HashFind(i32*, i8*) #1

declare dso_local i32 @sqlite3VtabCreateModule(%struct.TYPE_5__*, i8*, i32*, i8*, void (i8*)*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
