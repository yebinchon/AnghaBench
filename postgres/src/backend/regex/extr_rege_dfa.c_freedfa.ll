; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_freedfa.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_freedfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32*, i32*, i32*, i32*, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfa*)* @freedfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freedfa(%struct.dfa* %0) #0 {
  %2 = alloca %struct.dfa*, align 8
  store %struct.dfa* %0, %struct.dfa** %2, align 8
  %3 = load %struct.dfa*, %struct.dfa** %2, align 8
  %4 = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %1
  %8 = load %struct.dfa*, %struct.dfa** %2, align 8
  %9 = getelementptr inbounds %struct.dfa, %struct.dfa* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load %struct.dfa*, %struct.dfa** %2, align 8
  %14 = getelementptr inbounds %struct.dfa, %struct.dfa* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @FREE(i32* %15)
  br label %17

17:                                               ; preds = %12, %7
  %18 = load %struct.dfa*, %struct.dfa** %2, align 8
  %19 = getelementptr inbounds %struct.dfa, %struct.dfa* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.dfa*, %struct.dfa** %2, align 8
  %24 = getelementptr inbounds %struct.dfa, %struct.dfa* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @FREE(i32* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.dfa*, %struct.dfa** %2, align 8
  %29 = getelementptr inbounds %struct.dfa, %struct.dfa* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.dfa*, %struct.dfa** %2, align 8
  %34 = getelementptr inbounds %struct.dfa, %struct.dfa* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @FREE(i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.dfa*, %struct.dfa** %2, align 8
  %39 = getelementptr inbounds %struct.dfa, %struct.dfa* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.dfa*, %struct.dfa** %2, align 8
  %44 = getelementptr inbounds %struct.dfa, %struct.dfa* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @FREE(i32* %45)
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.dfa*, %struct.dfa** %2, align 8
  %50 = getelementptr inbounds %struct.dfa, %struct.dfa* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.dfa*, %struct.dfa** %2, align 8
  %55 = getelementptr inbounds %struct.dfa, %struct.dfa* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @FREE(i32* %56)
  br label %58

58:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @FREE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
