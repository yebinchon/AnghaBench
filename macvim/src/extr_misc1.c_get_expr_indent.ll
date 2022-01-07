; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_expr_indent.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_expr_indent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"indentexpr\00", align 1
@OPT_LOCAL = common dso_local global i32 0, align 4
@curwin = common dso_local global %struct.TYPE_5__* null, align 8
@VV_LNUM = common dso_local global i32 0, align 4
@sandbox = common dso_local global i32 0, align 4
@textlock = common dso_local global i32 0, align 4
@curbuf = common dso_local global %struct.TYPE_6__* null, align 8
@State = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_expr_indent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @OPT_LOCAL, align 4
  %8 = call i32 @was_set_insecurely(i32* bitcast ([11 x i8]* @.str to i32*), i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = bitcast %struct.TYPE_4__* %2 to i8*
  %12 = bitcast %struct.TYPE_4__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %3, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @VV_LNUM, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @set_vim_var_nr(i32 %19, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %0
  %28 = load i32, i32* @sandbox, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @sandbox, align 4
  br label %30

30:                                               ; preds = %27, %0
  %31 = load i32, i32* @textlock, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @textlock, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @curbuf, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @eval_to_number(i32 %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @sandbox, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @sandbox, align 4
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i32, i32* @textlock, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* @textlock, align 4
  %45 = load i32, i32* @State, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @INSERT, align 4
  store i32 %46, i32* @State, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = bitcast %struct.TYPE_4__* %48 to i8*
  %50 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @curwin, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = call i32 (...) @check_cursor()
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* @State, align 4
  %59 = load i32, i32* %1, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = call i32 (...) @get_indent()
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %42
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @was_set_insecurely(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_vim_var_nr(i32, i32) #1

declare dso_local i32 @eval_to_number(i32) #1

declare dso_local i32 @check_cursor(...) #1

declare dso_local i32 @get_indent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
