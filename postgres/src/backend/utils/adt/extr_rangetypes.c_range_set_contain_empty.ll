; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_set_contain_empty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_set_contain_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RANGE_CONTAIN_EMPTY = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @range_set_contain_empty(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @VARSIZE(i32* %6)
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  %10 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8* %10, i8** %3, align 8
  %11 = load i8, i8* @RANGE_CONTAIN_EMPTY, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = or i32 %15, %12
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %13, align 1
  ret void
}

declare dso_local i32 @VARSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
