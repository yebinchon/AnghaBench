; ModuleID = '/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb_make.c_cdb_make_add.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/dba/libcdb/extr_cdb_make.c_cdb_make_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdb_make = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdb_make_add(%struct.cdb_make* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdb_make*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cdb_make* %0, %struct.cdb_make** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %11, align 4
  %15 = call i32 @cdb_make_addbegin(%struct.cdb_make* %12, i32 %13, i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %40

18:                                               ; preds = %5
  %19 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @cdb_make_write(%struct.cdb_make* %19, i8* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %40

25:                                               ; preds = %18
  %26 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @cdb_make_write(%struct.cdb_make* %26, i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @cdb_hash(i8* %36, i32 %37)
  %39 = call i32 @cdb_make_addend(%struct.cdb_make* %33, i32 %34, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %31, %24, %17
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @cdb_make_addbegin(%struct.cdb_make*, i32, i32) #1

declare dso_local i64 @cdb_make_write(%struct.cdb_make*, i8*, i32) #1

declare dso_local i32 @cdb_make_addend(%struct.cdb_make*, i32, i32, i32) #1

declare dso_local i32 @cdb_hash(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
