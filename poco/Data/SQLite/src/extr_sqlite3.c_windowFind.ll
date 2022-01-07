; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowFind.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_windowFind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [19 x i8] c"no such window: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, %struct.TYPE_4__*, i8*)* @windowFind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @windowFind(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %7, align 8
  br label %9

9:                                                ; preds = %21, %3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @sqlite3StrICmp(i32 %15, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %7, align 8
  br label %9

25:                                               ; preds = %19, %9
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @sqlite3ErrorMsg(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %33
}

declare dso_local i64 @sqlite3StrICmp(i32, i8*) #1

declare dso_local i32 @sqlite3ErrorMsg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
