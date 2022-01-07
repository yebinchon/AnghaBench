; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_regexp.c_prog_magic_wrong.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_regexp.c_prog_magic_wrong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }

@REG_MULTI = common dso_local global i64 0, align 8
@reg_mmatch = common dso_local global %struct.TYPE_7__* null, align 8
@reg_match = common dso_local global %struct.TYPE_8__* null, align 8
@nfa_regengine = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@REGMAGIC = common dso_local global i64 0, align 8
@e_re_corr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prog_magic_wrong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_magic_wrong() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load i64, i64* @REG_MULTI, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reg_mmatch, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  br label %13

9:                                                ; preds = %0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @reg_match, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi %struct.TYPE_5__* [ %8, %5 ], [ %12, %9 ]
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %2, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, @nfa_regengine
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %1, align 4
  br label %36

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = bitcast %struct.TYPE_5__* %22 to %struct.TYPE_6__*
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @UCHARAT(i32 %25)
  %27 = load i64, i64* @REGMAGIC, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @e_re_corr, align 4
  %31 = call i32 @_(i32 %30)
  %32 = call i32 @EMSG(i32 %31)
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %1, align 4
  br label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %29, %19
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i64 @UCHARAT(i32) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
