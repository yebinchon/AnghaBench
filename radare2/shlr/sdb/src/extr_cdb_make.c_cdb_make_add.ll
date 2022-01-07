; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_cdb_make.c_cdb_make_add.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_cdb_make.c_cdb_make_add.c"
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
  %12 = load i32, i32* %9, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %11, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @cdb_make_addbegin(%struct.cdb_make* %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %45

22:                                               ; preds = %5
  %23 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %24 = getelementptr inbounds %struct.cdb_make, %struct.cdb_make* %23, i32 0, i32 0
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @buffer_putalign(i32* %24, i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %45

30:                                               ; preds = %22
  %31 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %32 = getelementptr inbounds %struct.cdb_make, %struct.cdb_make* %31, i32 0, i32 0
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @buffer_putalign(i32* %32, i8* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %45

38:                                               ; preds = %30
  %39 = load %struct.cdb_make*, %struct.cdb_make** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @sdb_hash(i8* %42)
  %44 = call i32 @cdb_make_addend(%struct.cdb_make* %39, i32 %40, i32 %41, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %38, %37, %29, %21
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @cdb_make_addbegin(%struct.cdb_make*, i32, i32) #1

declare dso_local i32 @buffer_putalign(i32*, i8*, i32) #1

declare dso_local i32 @cdb_make_addend(%struct.cdb_make*, i32, i32, i32) #1

declare dso_local i32 @sdb_hash(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
