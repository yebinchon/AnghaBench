; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeUnits.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_DecodeUnits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@deltacache = common dso_local global %struct.TYPE_4__** null, align 8
@TOKMAXLEN = common dso_local global i32 0, align 4
@deltatktbl = common dso_local global i32 0, align 4
@szdeltatktbl = common dso_local global i32 0, align 4
@UNKNOWN_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DecodeUnits(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @deltacache, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %9, i64 %11
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @deltacache, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TOKMAXLEN, align 4
  %25 = call i64 @strncmp(i8* %16, i32 %23, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @deltacache, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %30
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %8, align 8
  br label %38

33:                                               ; preds = %15, %3
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @deltatktbl, align 4
  %36 = load i32, i32* @szdeltatktbl, align 4
  %37 = call %struct.TYPE_4__* @datebsearch(i8* %34, i32 %35, i32 %36)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %8, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @deltacache, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = icmp eq %struct.TYPE_4__* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @UNKNOWN_FIELD, align 4
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 0, i32* %48, align 4
  br label %57

49:                                               ; preds = %38
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %49, %46
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @datebsearch(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
