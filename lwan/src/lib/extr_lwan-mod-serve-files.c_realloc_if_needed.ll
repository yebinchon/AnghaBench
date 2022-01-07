; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_realloc_if_needed.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-mod-serve-files.c_realloc_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_value = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lwan_value*, i64)* @realloc_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @realloc_if_needed(%struct.lwan_value* %0, i64 %1) #0 {
  %3 = alloca %struct.lwan_value*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.lwan_value* %0, %struct.lwan_value** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %8 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ugt i64 %6, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %13 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %16 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i8* @realloc(i8* %14, i64 %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.lwan_value*, %struct.lwan_value** %3, align 8
  %24 = getelementptr inbounds %struct.lwan_value, %struct.lwan_value* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %11
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
