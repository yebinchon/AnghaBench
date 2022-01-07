; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_tidpath.c_TidQualFromRestrictInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_tidpath.c_TidQualFromRestrictInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@NIL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32*)* @TidQualFromRestrictInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @TidQualFromRestrictInfo(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @NIL, align 8
  store i32* %11, i32** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @restriction_is_securely_promotable(%struct.TYPE_8__* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load i32*, i32** @NIL, align 8
  store i32* %18, i32** %3, align 8
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @IsTidEqualClause(%struct.TYPE_8__* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i64 @IsTidEqualAnyClause(%struct.TYPE_8__* %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @IsCurrentOfClause(%struct.TYPE_8__* %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29, %24, %19
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = call i32* @list_make1(%struct.TYPE_8__* %35)
  store i32* %36, i32** %3, align 8
  br label %39

37:                                               ; preds = %29
  %38 = load i32*, i32** @NIL, align 8
  store i32* %38, i32** %3, align 8
  br label %39

39:                                               ; preds = %37, %34, %17, %10
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @restriction_is_securely_promotable(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IsTidEqualClause(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IsTidEqualAnyClause(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @IsCurrentOfClause(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @list_make1(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
