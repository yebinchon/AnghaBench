; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_deparse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_rangetypes.c_range_deparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@RANGE_EMPTY = common dso_local global i8 0, align 1
@RANGE_EMPTY_LITERAL = common dso_local global i32 0, align 4
@RANGE_LB_INC = common dso_local global i8 0, align 1
@RANGE_UB_INC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8, i8*, i8*)* @range_deparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @range_deparse(i8 signext %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @RANGE_EMPTY, align 1
  %12 = sext i8 %11 to i32
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @RANGE_EMPTY_LITERAL, align 4
  %17 = call i8* @pstrdup(i32 %16)
  store i8* %17, i8** %4, align 8
  br label %59

18:                                               ; preds = %3
  %19 = call i32 @initStringInfo(%struct.TYPE_5__* %8)
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @RANGE_LB_INC, align 1
  %23 = sext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 91, i32 40
  %28 = trunc i32 %27 to i8
  %29 = call i32 @appendStringInfoChar(%struct.TYPE_5__* %8, i8 signext %28)
  %30 = load i8, i8* %5, align 1
  %31 = call i64 @RANGE_HAS_LBOUND(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @range_bound_escape(i8* %34)
  %36 = call i32 @appendStringInfoString(%struct.TYPE_5__* %8, i32 %35)
  br label %37

37:                                               ; preds = %33, %18
  %38 = call i32 @appendStringInfoChar(%struct.TYPE_5__* %8, i8 signext 44)
  %39 = load i8, i8* %5, align 1
  %40 = call i64 @RANGE_HAS_UBOUND(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @range_bound_escape(i8* %43)
  %45 = call i32 @appendStringInfoString(%struct.TYPE_5__* %8, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i8, i8* %5, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @RANGE_UB_INC, align 1
  %50 = sext i8 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 93, i32 41
  %55 = trunc i32 %54 to i8
  %56 = call i32 @appendStringInfoChar(%struct.TYPE_5__* %8, i8 signext %55)
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %4, align 8
  br label %59

59:                                               ; preds = %46, %15
  %60 = load i8*, i8** %4, align 8
  ret i8* %60
}

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @initStringInfo(%struct.TYPE_5__*) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i64 @RANGE_HAS_LBOUND(i8 signext) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @range_bound_escape(i8*) #1

declare dso_local i64 @RANGE_HAS_UBOUND(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
