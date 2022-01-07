; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_tok_str_add_tok.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_tok_str_add_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@file = common dso_local global %struct.TYPE_10__* null, align 8
@TOK_LINENUM = common dso_local global i32 0, align 4
@tok = common dso_local global i32 0, align 4
@tokc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tok_str_add_tok(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** @file, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @file, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = load i32, i32* @TOK_LINENUM, align 4
  %23 = call i32 @tok_str_add2(%struct.TYPE_8__* %21, i32 %22, %struct.TYPE_9__* %3)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = load i32, i32* @tok, align 4
  %27 = call i32 @tok_str_add2(%struct.TYPE_8__* %25, i32 %26, %struct.TYPE_9__* @tokc)
  ret void
}

declare dso_local i32 @tok_str_add2(%struct.TYPE_8__*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
