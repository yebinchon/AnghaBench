; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_caltdissect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_caltdissect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.subre = type { i8, %struct.subre*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.dfa = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"calt n%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"calt matched\0A\00", align 1
@REG_NOMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.subre*, i32*, i32*)* @caltdissect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caltdissect(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.subre*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dfa*, align 8
  %11 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.subre* %1, %struct.subre** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %12

12:                                               ; preds = %73, %4
  %13 = load %struct.subre*, %struct.subre** %7, align 8
  %14 = icmp ne %struct.subre* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct.subre*, %struct.subre** %7, align 8
  %17 = getelementptr inbounds %struct.subre, %struct.subre* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 124
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.subre*, %struct.subre** %7, align 8
  %24 = getelementptr inbounds %struct.subre, %struct.subre* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = load %struct.subre*, %struct.subre** %7, align 8
  %29 = getelementptr inbounds %struct.subre, %struct.subre* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br label %35

35:                                               ; preds = %27, %15
  %36 = phi i1 [ false, %15 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.subre*, %struct.subre** %7, align 8
  %40 = getelementptr inbounds %struct.subre, %struct.subre* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @MDEBUG(i8* %43)
  %45 = load %struct.vars*, %struct.vars** %6, align 8
  %46 = load %struct.subre*, %struct.subre** %7, align 8
  %47 = getelementptr inbounds %struct.subre, %struct.subre* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call %struct.dfa* @getsubdfa(%struct.vars* %45, %struct.TYPE_5__* %48)
  store %struct.dfa* %49, %struct.dfa** %10, align 8
  %50 = call i32 (...) @NOERR()
  %51 = load %struct.vars*, %struct.vars** %6, align 8
  %52 = load %struct.dfa*, %struct.dfa** %10, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32* @longest(%struct.vars* %51, %struct.dfa* %52, i32* %53, i32* %54, i32* null)
  %56 = load i32*, i32** %9, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %35
  %59 = call i32 @MDEBUG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.vars*, %struct.vars** %6, align 8
  %61 = load %struct.subre*, %struct.subre** %7, align 8
  %62 = getelementptr inbounds %struct.subre, %struct.subre* %61, i32 0, i32 2
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @cdissect(%struct.vars* %60, %struct.TYPE_5__* %63, i32* %64, i32* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @REG_NOMATCH, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %80

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %35
  %74 = call i32 (...) @NOERR()
  %75 = load %struct.subre*, %struct.subre** %7, align 8
  %76 = getelementptr inbounds %struct.subre, %struct.subre* %75, i32 0, i32 1
  %77 = load %struct.subre*, %struct.subre** %76, align 8
  store %struct.subre* %77, %struct.subre** %7, align 8
  br label %12

78:                                               ; preds = %12
  %79 = load i32, i32* @REG_NOMATCH, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local %struct.dfa* @getsubdfa(%struct.vars*, %struct.TYPE_5__*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32* @longest(%struct.vars*, %struct.dfa*, i32*, i32*, i32*) #1

declare dso_local i32 @cdissect(%struct.vars*, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
