; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_murmur3.c_murmur3_simple.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_murmur3.c_murmur3_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@seed_value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @murmur3_simple(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [2 x i64], align 16
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  store i64 %6, i64* %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i32, i32* @seed_value, align 4
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 0
  %11 = call i32 @MurmurHash3_x64_128(i8* %7, i64 %8, i32 %9, i64* %10)
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %4, i64 0, i64 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @MurmurHash3_x64_128(i8*, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
