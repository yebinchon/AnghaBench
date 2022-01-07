; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_hash_table_iter_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_storage.c_hash_table_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { i32 }
%struct.hash_table_iter = type { i32, i32, i32*, %struct.hash_table* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_table_iter_init(%struct.hash_table* %0, %struct.hash_table_iter* %1, i8* %2) #0 {
  %4 = alloca %struct.hash_table*, align 8
  %5 = alloca %struct.hash_table_iter*, align 8
  %6 = alloca i8*, align 8
  store %struct.hash_table* %0, %struct.hash_table** %4, align 8
  store %struct.hash_table_iter* %1, %struct.hash_table_iter** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %8 = load %struct.hash_table_iter*, %struct.hash_table_iter** %5, align 8
  %9 = getelementptr inbounds %struct.hash_table_iter, %struct.hash_table_iter* %8, i32 0, i32 3
  store %struct.hash_table* %7, %struct.hash_table** %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %15 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @hash_table_hash(i8* %13, i32 %16)
  %18 = load %struct.hash_table_iter*, %struct.hash_table_iter** %5, align 8
  %19 = getelementptr inbounds %struct.hash_table_iter, %struct.hash_table_iter* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.hash_table_iter*, %struct.hash_table_iter** %5, align 8
  %21 = getelementptr inbounds %struct.hash_table_iter, %struct.hash_table_iter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.hash_table_iter*, %struct.hash_table_iter** %5, align 8
  %25 = getelementptr inbounds %struct.hash_table_iter, %struct.hash_table_iter* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %35

26:                                               ; preds = %3
  %27 = load %struct.hash_table*, %struct.hash_table** %4, align 8
  %28 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.hash_table_iter*, %struct.hash_table_iter** %5, align 8
  %32 = getelementptr inbounds %struct.hash_table_iter, %struct.hash_table_iter* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.hash_table_iter*, %struct.hash_table_iter** %5, align 8
  %34 = getelementptr inbounds %struct.hash_table_iter, %struct.hash_table_iter* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %26, %12
  %36 = load %struct.hash_table_iter*, %struct.hash_table_iter** %5, align 8
  %37 = getelementptr inbounds %struct.hash_table_iter, %struct.hash_table_iter* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  ret void
}

declare dso_local i32 @hash_table_hash(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
