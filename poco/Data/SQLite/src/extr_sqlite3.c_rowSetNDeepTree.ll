; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_rowSetNDeepTree.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_rowSetNDeepTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { %struct.RowSetEntry*, %struct.RowSetEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.RowSetEntry* (%struct.RowSetEntry**, i32)* @rowSetNDeepTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry** %0, i32 %1) #0 {
  %3 = alloca %struct.RowSetEntry*, align 8
  %4 = alloca %struct.RowSetEntry**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.RowSetEntry*, align 8
  %7 = alloca %struct.RowSetEntry*, align 8
  store %struct.RowSetEntry** %0, %struct.RowSetEntry*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %9 = load %struct.RowSetEntry*, %struct.RowSetEntry** %8, align 8
  %10 = icmp eq %struct.RowSetEntry* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %3, align 8
  br label %53

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %40

15:                                               ; preds = %12
  %16 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry** %16, i32 %18)
  store %struct.RowSetEntry* %19, %struct.RowSetEntry** %7, align 8
  %20 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %21 = load %struct.RowSetEntry*, %struct.RowSetEntry** %20, align 8
  store %struct.RowSetEntry* %21, %struct.RowSetEntry** %6, align 8
  %22 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %23 = icmp eq %struct.RowSetEntry* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load %struct.RowSetEntry*, %struct.RowSetEntry** %7, align 8
  store %struct.RowSetEntry* %25, %struct.RowSetEntry** %3, align 8
  br label %53

26:                                               ; preds = %15
  %27 = load %struct.RowSetEntry*, %struct.RowSetEntry** %7, align 8
  %28 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %29 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %28, i32 0, i32 1
  store %struct.RowSetEntry* %27, %struct.RowSetEntry** %29, align 8
  %30 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %31 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %30, i32 0, i32 0
  %32 = load %struct.RowSetEntry*, %struct.RowSetEntry** %31, align 8
  %33 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  store %struct.RowSetEntry* %32, %struct.RowSetEntry** %33, align 8
  %34 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call %struct.RowSetEntry* @rowSetNDeepTree(%struct.RowSetEntry** %34, i32 %36)
  %38 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %39 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %38, i32 0, i32 0
  store %struct.RowSetEntry* %37, %struct.RowSetEntry** %39, align 8
  br label %51

40:                                               ; preds = %12
  %41 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  %42 = load %struct.RowSetEntry*, %struct.RowSetEntry** %41, align 8
  store %struct.RowSetEntry* %42, %struct.RowSetEntry** %6, align 8
  %43 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %44 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %43, i32 0, i32 0
  %45 = load %struct.RowSetEntry*, %struct.RowSetEntry** %44, align 8
  %46 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %4, align 8
  store %struct.RowSetEntry* %45, %struct.RowSetEntry** %46, align 8
  %47 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %48 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %47, i32 0, i32 0
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %48, align 8
  %49 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  %50 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %49, i32 0, i32 1
  store %struct.RowSetEntry* null, %struct.RowSetEntry** %50, align 8
  br label %51

51:                                               ; preds = %40, %26
  %52 = load %struct.RowSetEntry*, %struct.RowSetEntry** %6, align 8
  store %struct.RowSetEntry* %52, %struct.RowSetEntry** %3, align 8
  br label %53

53:                                               ; preds = %51, %24, %11
  %54 = load %struct.RowSetEntry*, %struct.RowSetEntry** %3, align 8
  ret %struct.RowSetEntry* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
