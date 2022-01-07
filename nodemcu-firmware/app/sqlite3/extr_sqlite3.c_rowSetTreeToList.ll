; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_rowSetTreeToList.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_rowSetTreeToList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, %struct.RowSetEntry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RowSetEntry*, %struct.RowSetEntry**, %struct.RowSetEntry**)* @rowSetTreeToList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rowSetTreeToList(%struct.RowSetEntry* %0, %struct.RowSetEntry** %1, %struct.RowSetEntry** %2) #0 {
  %4 = alloca %struct.RowSetEntry*, align 8
  %5 = alloca %struct.RowSetEntry**, align 8
  %6 = alloca %struct.RowSetEntry**, align 8
  %7 = alloca %struct.RowSetEntry*, align 8
  store %struct.RowSetEntry* %0, %struct.RowSetEntry** %4, align 8
  store %struct.RowSetEntry** %1, %struct.RowSetEntry*** %5, align 8
  store %struct.RowSetEntry** %2, %struct.RowSetEntry*** %6, align 8
  %8 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %9 = icmp ne %struct.RowSetEntry* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %13 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %12, i32 0, i32 1
  %14 = load %struct.RowSetEntry*, %struct.RowSetEntry** %13, align 8
  %15 = icmp ne %struct.RowSetEntry* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %18 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %17, i32 0, i32 1
  %19 = load %struct.RowSetEntry*, %struct.RowSetEntry** %18, align 8
  %20 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %5, align 8
  call void @rowSetTreeToList(%struct.RowSetEntry* %19, %struct.RowSetEntry** %20, %struct.RowSetEntry** %7)
  %21 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %22 = ptrtoint %struct.RowSetEntry* %21 to i64
  %23 = load %struct.RowSetEntry*, %struct.RowSetEntry** %7, align 8
  %24 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %28

25:                                               ; preds = %3
  %26 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %27 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %5, align 8
  store %struct.RowSetEntry* %26, %struct.RowSetEntry** %27, align 8
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %30 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %35 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.RowSetEntry*
  %38 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %39 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %38, i32 0, i32 0
  %40 = bitcast i64* %39 to %struct.RowSetEntry**
  %41 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %6, align 8
  call void @rowSetTreeToList(%struct.RowSetEntry* %37, %struct.RowSetEntry** %40, %struct.RowSetEntry** %41)
  br label %45

42:                                               ; preds = %28
  %43 = load %struct.RowSetEntry*, %struct.RowSetEntry** %4, align 8
  %44 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %6, align 8
  store %struct.RowSetEntry* %43, %struct.RowSetEntry** %44, align 8
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.RowSetEntry**, %struct.RowSetEntry*** %6, align 8
  %47 = load %struct.RowSetEntry*, %struct.RowSetEntry** %46, align 8
  %48 = getelementptr inbounds %struct.RowSetEntry, %struct.RowSetEntry* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
