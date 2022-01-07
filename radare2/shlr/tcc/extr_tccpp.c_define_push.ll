; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_define_push.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_define_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [13 x i8] c"%s redefined\00", align 1
@define_stack = common dso_local global i32 0, align 4
@TOK_IDENT = common dso_local global i32 0, align 4
@table_ident = common dso_local global %struct.TYPE_7__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_push(i32 %0, i32 %1, i32* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_6__* @define_find(i32 %10)
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %9, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %13 = icmp ne %struct.TYPE_6__* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @macro_is_equal(i32* %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @get_tok_str(i32 %22, i32* null)
  %24 = call i32 @tcc_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %14, %4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.TYPE_6__* @sym_push2(i32* @define_stack, i32 %26, i32 %27, i32 0)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %9, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %52

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @TOK_IDENT, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @table_ident, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TOK_IDENT, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %44, i64 %48
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %51, align 8
  br label %52

52:                                               ; preds = %31, %42, %32
  ret void
}

declare dso_local %struct.TYPE_6__* @define_find(i32) #1

declare dso_local i32 @macro_is_equal(i32*, i32*) #1

declare dso_local i32 @tcc_warning(i8*, i32) #1

declare dso_local i32 @get_tok_str(i32, i32*) #1

declare dso_local %struct.TYPE_6__* @sym_push2(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
