; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_LookupFuncNameInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_LookupFuncNameInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32, i32 }

@FUNCLOOKUP_NOSUCHFUNC = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@FUNCLOOKUP_AMBIGUOUS = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32*)* @LookupFuncNameInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LookupFuncNameInternal(i32* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %16, 0
  br label %18

18:                                               ; preds = %15, %5
  %19 = phi i1 [ true, %5 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* @FUNCLOOKUP_NOSUCHFUNC, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @NIL, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.TYPE_3__* @FuncnameGetCandidates(i32* %24, i32 %25, i32 %26, i32 0, i32 0, i32 %27)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %12, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %18
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @FUNCLOOKUP_AMBIGUOUS, align 4
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @InvalidOid, align 4
  store i32 %42, i32* %6, align 4
  br label %77

43:                                               ; preds = %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  br label %77

47:                                               ; preds = %31
  %48 = load i32, i32* @InvalidOid, align 4
  store i32 %48, i32* %6, align 4
  br label %77

49:                                               ; preds = %18
  br label %50

50:                                               ; preds = %71, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %52 = icmp ne %struct.TYPE_3__* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = call i64 @memcmp(i32* %57, i32 %60, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %56, %53
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %6, align 4
  br label %77

71:                                               ; preds = %56
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %12, align 8
  br label %50

75:                                               ; preds = %50
  %76 = load i32, i32* @InvalidOid, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %67, %47, %43, %39
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_3__* @FuncnameGetCandidates(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
