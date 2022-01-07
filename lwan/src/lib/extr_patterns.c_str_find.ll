; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_str_find.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_patterns.c_str_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.str_find = type { i8* }
%struct.match_state = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str_find(i8* %0, i8* %1, %struct.str_find* %2, i64 %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.str_find*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.match_state, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.str_find* %2, %struct.str_find** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8** %4, i8*** %10, align 8
  %13 = bitcast %struct.match_state* %11 to %struct.str_find*
  %14 = call i32 @memset(%struct.str_find* %13, i32 0, i64 8)
  %15 = load %struct.str_find*, %struct.str_find** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = mul i64 %16, 8
  %18 = call i32 @memset(%struct.str_find* %15, i32 0, i64 %17)
  %19 = bitcast %struct.match_state* %11 to %struct.str_find*
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.str_find*, %struct.str_find** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @str_find_aux(%struct.str_find* %19, i8* %20, i8* %21, %struct.str_find* %22, i64 %23, i32 0)
  store i32 %24, i32* %12, align 4
  %25 = getelementptr inbounds %struct.match_state, %struct.match_state* %11, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.match_state, %struct.match_state* %11, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %10, align 8
  store i8* %30, i8** %31, align 8
  store i32 0, i32* %12, align 4
  br label %34

32:                                               ; preds = %5
  %33 = load i8**, i8*** %10, align 8
  store i8* null, i8** %33, align 8
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* %12, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.str_find*, i32, i64) #1

declare dso_local i32 @str_find_aux(%struct.str_find*, i8*, i8*, %struct.str_find*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
