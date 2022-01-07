; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_moveArrayTypeName.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_type.c_moveArrayTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moveArrayTypeName(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @get_typisdefined(i64 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %37

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @get_element_type(i64 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @OidIsValid(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @get_array_type(i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %14
  store i32 0, i32* %4, align 4
  br label %37

26:                                               ; preds = %20
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i8* @makeArrayTypeName(i8* %27, i64 %28)
  store i8* %29, i8** %9, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @RenameTypeInternal(i64 %30, i8* %31, i64 %32)
  %34 = call i32 (...) @CommandCounterIncrement()
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @pfree(i8* %35)
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %26, %25, %13
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @get_typisdefined(i64) #1

declare dso_local i64 @get_element_type(i64) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i64 @get_array_type(i64) #1

declare dso_local i8* @makeArrayTypeName(i8*, i64) #1

declare dso_local i32 @RenameTypeInternal(i64, i8*, i64) #1

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
