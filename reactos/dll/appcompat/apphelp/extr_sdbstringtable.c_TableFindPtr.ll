; ModuleID = '/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_sdbstringtable.c_TableFindPtr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/appcompat/apphelp/extr_sdbstringtable.c_TableFindPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SdbHashEntry = type { %struct.SdbHashEntry*, i32 }
%struct.SdbStringHashTable = type { i64, %struct.SdbHashEntry** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SdbHashEntry** (%struct.SdbStringHashTable*, i32*)* @TableFindPtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SdbHashEntry** @TableFindPtr(%struct.SdbStringHashTable* %0, i32* %1) #0 {
  %3 = alloca %struct.SdbHashEntry**, align 8
  %4 = alloca %struct.SdbStringHashTable*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.SdbHashEntry**, align 8
  store %struct.SdbStringHashTable* %0, %struct.SdbStringHashTable** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @StringHash(i32* %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %4, align 8
  %11 = getelementptr inbounds %struct.SdbStringHashTable, %struct.SdbStringHashTable* %10, i32 0, i32 1
  %12 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.SdbStringHashTable*, %struct.SdbStringHashTable** %4, align 8
  %15 = getelementptr inbounds %struct.SdbStringHashTable, %struct.SdbStringHashTable* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = urem i64 %13, %16
  %18 = getelementptr inbounds %struct.SdbHashEntry*, %struct.SdbHashEntry** %12, i64 %17
  store %struct.SdbHashEntry** %18, %struct.SdbHashEntry*** %7, align 8
  br label %19

19:                                               ; preds = %33, %2
  %20 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %7, align 8
  %21 = load %struct.SdbHashEntry*, %struct.SdbHashEntry** %20, align 8
  %22 = icmp ne %struct.SdbHashEntry* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %7, align 8
  %25 = load %struct.SdbHashEntry*, %struct.SdbHashEntry** %24, align 8
  %26 = getelementptr inbounds %struct.SdbHashEntry, %struct.SdbHashEntry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @Sdbwcscmp(i32 %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %7, align 8
  store %struct.SdbHashEntry** %32, %struct.SdbHashEntry*** %3, align 8
  br label %39

33:                                               ; preds = %23
  %34 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %7, align 8
  %35 = load %struct.SdbHashEntry*, %struct.SdbHashEntry** %34, align 8
  %36 = getelementptr inbounds %struct.SdbHashEntry, %struct.SdbHashEntry* %35, i32 0, i32 0
  store %struct.SdbHashEntry** %36, %struct.SdbHashEntry*** %7, align 8
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %7, align 8
  store %struct.SdbHashEntry** %38, %struct.SdbHashEntry*** %3, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.SdbHashEntry**, %struct.SdbHashEntry*** %3, align 8
  ret %struct.SdbHashEntry** %40
}

declare dso_local i64 @StringHash(i32*) #1

declare dso_local i32 @Sdbwcscmp(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
