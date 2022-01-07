; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_in-report.c_cndb_lookup.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_in-report.c_cndb_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.CNDB_Entry** }
%struct.CNDB_Entry = type { i32, i8*, %struct.CNDB_Entry* }

@db = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @cndb_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cndb_lookup(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.CNDB_Entry*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %40

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @db, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.CNDB_Entry**, %struct.CNDB_Entry*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 65535
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.CNDB_Entry*, %struct.CNDB_Entry** %11, i64 %14
  %16 = load %struct.CNDB_Entry*, %struct.CNDB_Entry** %15, align 8
  store %struct.CNDB_Entry* %16, %struct.CNDB_Entry** %4, align 8
  br label %17

17:                                               ; preds = %28, %8
  %18 = load %struct.CNDB_Entry*, %struct.CNDB_Entry** %4, align 8
  %19 = icmp ne %struct.CNDB_Entry* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.CNDB_Entry*, %struct.CNDB_Entry** %4, align 8
  %22 = getelementptr inbounds %struct.CNDB_Entry, %struct.CNDB_Entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = load %struct.CNDB_Entry*, %struct.CNDB_Entry** %4, align 8
  %30 = getelementptr inbounds %struct.CNDB_Entry, %struct.CNDB_Entry* %29, i32 0, i32 2
  %31 = load %struct.CNDB_Entry*, %struct.CNDB_Entry** %30, align 8
  store %struct.CNDB_Entry* %31, %struct.CNDB_Entry** %4, align 8
  br label %17

32:                                               ; preds = %26
  %33 = load %struct.CNDB_Entry*, %struct.CNDB_Entry** %4, align 8
  %34 = icmp ne %struct.CNDB_Entry* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.CNDB_Entry*, %struct.CNDB_Entry** %4, align 8
  %37 = getelementptr inbounds %struct.CNDB_Entry, %struct.CNDB_Entry* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %2, align 8
  br label %40

39:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  br label %40

40:                                               ; preds = %39, %35, %7
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
