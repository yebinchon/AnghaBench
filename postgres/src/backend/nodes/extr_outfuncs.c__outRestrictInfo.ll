; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outRestrictInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_outfuncs.c__outRestrictInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"RESTRICTINFO\00", align 1
@clause = common dso_local global i32 0, align 4
@is_pushed_down = common dso_local global i32 0, align 4
@outerjoin_delayed = common dso_local global i32 0, align 4
@can_join = common dso_local global i32 0, align 4
@pseudoconstant = common dso_local global i32 0, align 4
@leakproof = common dso_local global i32 0, align 4
@security_level = common dso_local global i32 0, align 4
@clause_relids = common dso_local global i32 0, align 4
@required_relids = common dso_local global i32 0, align 4
@outer_relids = common dso_local global i32 0, align 4
@nullable_relids = common dso_local global i32 0, align 4
@left_relids = common dso_local global i32 0, align 4
@right_relids = common dso_local global i32 0, align 4
@orclause = common dso_local global i32 0, align 4
@norm_selec = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.4f\00", align 1
@outer_selec = common dso_local global i32 0, align 4
@mergeopfamilies = common dso_local global i32 0, align 4
@left_em = common dso_local global i32 0, align 4
@right_em = common dso_local global i32 0, align 4
@outer_is_left = common dso_local global i32 0, align 4
@hashjoinoperator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @_outRestrictInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_outRestrictInfo(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = call i32 @WRITE_NODE_TYPE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @clause, align 4
  %7 = call i32 @WRITE_NODE_FIELD(i32 %6)
  %8 = load i32, i32* @is_pushed_down, align 4
  %9 = call i32 @WRITE_BOOL_FIELD(i32 %8)
  %10 = load i32, i32* @outerjoin_delayed, align 4
  %11 = call i32 @WRITE_BOOL_FIELD(i32 %10)
  %12 = load i32, i32* @can_join, align 4
  %13 = call i32 @WRITE_BOOL_FIELD(i32 %12)
  %14 = load i32, i32* @pseudoconstant, align 4
  %15 = call i32 @WRITE_BOOL_FIELD(i32 %14)
  %16 = load i32, i32* @leakproof, align 4
  %17 = call i32 @WRITE_BOOL_FIELD(i32 %16)
  %18 = load i32, i32* @security_level, align 4
  %19 = call i32 @WRITE_UINT_FIELD(i32 %18)
  %20 = load i32, i32* @clause_relids, align 4
  %21 = call i32 @WRITE_BITMAPSET_FIELD(i32 %20)
  %22 = load i32, i32* @required_relids, align 4
  %23 = call i32 @WRITE_BITMAPSET_FIELD(i32 %22)
  %24 = load i32, i32* @outer_relids, align 4
  %25 = call i32 @WRITE_BITMAPSET_FIELD(i32 %24)
  %26 = load i32, i32* @nullable_relids, align 4
  %27 = call i32 @WRITE_BITMAPSET_FIELD(i32 %26)
  %28 = load i32, i32* @left_relids, align 4
  %29 = call i32 @WRITE_BITMAPSET_FIELD(i32 %28)
  %30 = load i32, i32* @right_relids, align 4
  %31 = call i32 @WRITE_BITMAPSET_FIELD(i32 %30)
  %32 = load i32, i32* @orclause, align 4
  %33 = call i32 @WRITE_NODE_FIELD(i32 %32)
  %34 = load i32, i32* @norm_selec, align 4
  %35 = call i32 @WRITE_FLOAT_FIELD(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @outer_selec, align 4
  %37 = call i32 @WRITE_FLOAT_FIELD(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @mergeopfamilies, align 4
  %39 = call i32 @WRITE_NODE_FIELD(i32 %38)
  %40 = load i32, i32* @left_em, align 4
  %41 = call i32 @WRITE_NODE_FIELD(i32 %40)
  %42 = load i32, i32* @right_em, align 4
  %43 = call i32 @WRITE_NODE_FIELD(i32 %42)
  %44 = load i32, i32* @outer_is_left, align 4
  %45 = call i32 @WRITE_BOOL_FIELD(i32 %44)
  %46 = load i32, i32* @hashjoinoperator, align 4
  %47 = call i32 @WRITE_OID_FIELD(i32 %46)
  ret void
}

declare dso_local i32 @WRITE_NODE_TYPE(i8*) #1

declare dso_local i32 @WRITE_NODE_FIELD(i32) #1

declare dso_local i32 @WRITE_BOOL_FIELD(i32) #1

declare dso_local i32 @WRITE_UINT_FIELD(i32) #1

declare dso_local i32 @WRITE_BITMAPSET_FIELD(i32) #1

declare dso_local i32 @WRITE_FLOAT_FIELD(i32, i8*) #1

declare dso_local i32 @WRITE_OID_FIELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
