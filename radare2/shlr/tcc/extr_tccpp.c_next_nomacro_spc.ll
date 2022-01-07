; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_next_nomacro_spc.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_next_nomacro_spc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@macro_ptr = common dso_local global i64* null, align 8
@tok = common dso_local global i64 0, align 8
@tokc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@TOK_LINENUM = common dso_local global i64 0, align 8
@file = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @next_nomacro_spc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_nomacro_spc() #0 {
  %1 = load i64*, i64** @macro_ptr, align 8
  %2 = icmp ne i64* %1, null
  br i1 %2, label %3, label %20

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %14, %3
  %5 = load i64*, i64** @macro_ptr, align 8
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* @tok, align 8
  %7 = load i64, i64* @tok, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %4
  %10 = call i32 @TOK_GET(i64* @tok, i64** @macro_ptr, %struct.TYPE_4__* @tokc)
  %11 = load i64, i64* @tok, align 8
  %12 = load i64, i64* @TOK_LINENUM, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @tokc, i32 0, i32 0), align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @file, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %4

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %4
  br label %22

20:                                               ; preds = %0
  %21 = call i32 (...) @next_nomacro1()
  br label %22

22:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @TOK_GET(i64*, i64**, %struct.TYPE_4__*) #1

declare dso_local i32 @next_nomacro1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
