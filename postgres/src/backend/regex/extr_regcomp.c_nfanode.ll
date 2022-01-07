; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_nfanode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_nfanode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32 }
%struct.subre = type { i32, i32, i32* }
%struct.nfa = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vars*, %struct.subre*, i32, i32*)* @nfanode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfanode(%struct.vars* %0, %struct.subre* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.vars*, align 8
  %6 = alloca %struct.subre*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.nfa*, align 8
  %10 = alloca i64, align 8
  store %struct.vars* %0, %struct.vars** %5, align 8
  store %struct.subre* %1, %struct.subre** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.subre*, %struct.subre** %6, align 8
  %12 = getelementptr inbounds %struct.subre, %struct.subre* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.vars*, %struct.vars** %5, align 8
  %18 = load %struct.vars*, %struct.vars** %5, align 8
  %19 = getelementptr inbounds %struct.vars, %struct.vars* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vars*, %struct.vars** %5, align 8
  %22 = getelementptr inbounds %struct.vars, %struct.vars* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.nfa* @newnfa(%struct.vars* %17, i32 %20, i32 %23)
  store %struct.nfa* %24, %struct.nfa** %9, align 8
  %25 = call i32 (...) @NOERRZ()
  %26 = load %struct.nfa*, %struct.nfa** %9, align 8
  %27 = load %struct.subre*, %struct.subre** %6, align 8
  %28 = getelementptr inbounds %struct.subre, %struct.subre* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.subre*, %struct.subre** %6, align 8
  %31 = getelementptr inbounds %struct.subre, %struct.subre* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfa*, %struct.nfa** %9, align 8
  %34 = getelementptr inbounds %struct.nfa, %struct.nfa* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nfa*, %struct.nfa** %9, align 8
  %37 = getelementptr inbounds %struct.nfa, %struct.nfa* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dupnfa(%struct.nfa* %26, i32* %29, i32 %32, i32 %35, i32 %38)
  %40 = call i32 (...) @ISERR()
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %4
  %43 = load %struct.nfa*, %struct.nfa** %9, align 8
  %44 = call i32 @specialcolors(%struct.nfa* %43)
  br label %45

45:                                               ; preds = %42, %4
  %46 = call i32 (...) @ISERR()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.nfa*, %struct.nfa** %9, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i64 @optimize(%struct.nfa* %49, i32* %50)
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = call i32 (...) @ISERR()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load %struct.vars*, %struct.vars** %5, align 8
  %60 = load %struct.nfa*, %struct.nfa** %9, align 8
  %61 = call i32 @makesearch(%struct.vars* %59, %struct.nfa* %60)
  br label %62

62:                                               ; preds = %58, %55, %52
  %63 = call i32 (...) @ISERR()
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = load %struct.nfa*, %struct.nfa** %9, align 8
  %67 = load %struct.subre*, %struct.subre** %6, align 8
  %68 = getelementptr inbounds %struct.subre, %struct.subre* %67, i32 0, i32 0
  %69 = call i32 @compact(%struct.nfa* %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = load %struct.nfa*, %struct.nfa** %9, align 8
  %72 = call i32 @freenfa(%struct.nfa* %71)
  %73 = load i64, i64* %10, align 8
  ret i64 %73
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.nfa* @newnfa(%struct.vars*, i32, i32) #1

declare dso_local i32 @NOERRZ(...) #1

declare dso_local i32 @dupnfa(%struct.nfa*, i32*, i32, i32, i32) #1

declare dso_local i32 @ISERR(...) #1

declare dso_local i32 @specialcolors(%struct.nfa*) #1

declare dso_local i64 @optimize(%struct.nfa*, i32*) #1

declare dso_local i32 @makesearch(%struct.vars*, %struct.nfa*) #1

declare dso_local i32 @compact(%struct.nfa*, i32*) #1

declare dso_local i32 @freenfa(%struct.nfa*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
