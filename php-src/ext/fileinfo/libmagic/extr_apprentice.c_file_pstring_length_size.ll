; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_apprentice.c_file_pstring_length_size.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_apprentice.c_file_pstring_length_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic = type { i32 }

@PSTRING_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @file_pstring_length_size(%struct.magic* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.magic*, align 8
  store %struct.magic* %0, %struct.magic** %3, align 8
  %4 = load %struct.magic*, %struct.magic** %3, align 8
  %5 = getelementptr inbounds %struct.magic, %struct.magic* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @PSTRING_LEN, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %12 [
    i32 132, label %9
    i32 130, label %10
    i32 131, label %10
    i32 128, label %11
    i32 129, label %11
  ]

9:                                                ; preds = %1
  store i64 1, i64* %2, align 8
  br label %14

10:                                               ; preds = %1, %1
  store i64 2, i64* %2, align 8
  br label %14

11:                                               ; preds = %1, %1
  store i64 4, i64* %2, align 8
  br label %14

12:                                               ; preds = %1
  %13 = call i32 (...) @abort() #2
  unreachable

14:                                               ; preds = %11, %10, %9
  %15 = load i64, i64* %2, align 8
  ret i64 %15
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
