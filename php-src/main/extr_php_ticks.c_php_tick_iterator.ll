; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_php_ticks.c_php_tick_iterator.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_php_ticks.c_php_tick_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_tick_function = type { i32, i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @php_tick_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_tick_iterator(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_tick_function*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.st_tick_function*
  store %struct.st_tick_function* %7, %struct.st_tick_function** %5, align 8
  %8 = load %struct.st_tick_function*, %struct.st_tick_function** %5, align 8
  %9 = getelementptr inbounds %struct.st_tick_function, %struct.st_tick_function* %8, i32 0, i32 1
  %10 = load i32 (i32, i32)*, i32 (i32, i32)** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.st_tick_function*, %struct.st_tick_function** %5, align 8
  %15 = getelementptr inbounds %struct.st_tick_function, %struct.st_tick_function* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 %10(i32 %13, i32 %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
