; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_lex.c_skip.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_lex.c_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i64*, i32 }

@REG_EXPANDED = common dso_local global i32 0, align 4
@REG_UNONPOSIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*)* @skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip(%struct.vars* %0) #0 {
  %2 = alloca %struct.vars*, align 8
  %3 = alloca i64*, align 8
  store %struct.vars* %0, %struct.vars** %2, align 8
  %4 = load %struct.vars*, %struct.vars** %2, align 8
  %5 = getelementptr inbounds %struct.vars, %struct.vars* %4, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  store i64* %6, i64** %3, align 8
  %7 = load %struct.vars*, %struct.vars** %2, align 8
  %8 = getelementptr inbounds %struct.vars, %struct.vars* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @REG_EXPANDED, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @assert(i32 %11)
  br label %13

13:                                               ; preds = %62, %1
  br label %14

14:                                               ; preds = %26, %13
  %15 = call i64 (...) @ATEOS()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load %struct.vars*, %struct.vars** %2, align 8
  %19 = getelementptr inbounds %struct.vars, %struct.vars* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @iscspace(i64 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %14
  %25 = phi i1 [ false, %14 ], [ %23, %17 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = load %struct.vars*, %struct.vars** %2, align 8
  %28 = getelementptr inbounds %struct.vars, %struct.vars* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i32 1
  store i64* %30, i64** %28, align 8
  br label %14

31:                                               ; preds = %24
  %32 = call i64 (...) @ATEOS()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load %struct.vars*, %struct.vars** %2, align 8
  %36 = getelementptr inbounds %struct.vars, %struct.vars* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @CHR(i8 signext 35)
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %31
  br label %63

42:                                               ; preds = %34
  %43 = call i32 @NEXT1(i8 signext 35)
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %57, %42
  %46 = call i64 (...) @ATEOS()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.vars*, %struct.vars** %2, align 8
  %50 = getelementptr inbounds %struct.vars, %struct.vars* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @CHR(i8 signext 10)
  %54 = icmp ne i64 %52, %53
  br label %55

55:                                               ; preds = %48, %45
  %56 = phi i1 [ false, %45 ], [ %54, %48 ]
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = load %struct.vars*, %struct.vars** %2, align 8
  %59 = getelementptr inbounds %struct.vars, %struct.vars* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %59, align 8
  br label %45

62:                                               ; preds = %55
  br label %13

63:                                               ; preds = %41
  %64 = load %struct.vars*, %struct.vars** %2, align 8
  %65 = getelementptr inbounds %struct.vars, %struct.vars* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64*, i64** %3, align 8
  %68 = icmp ne i64* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @REG_UNONPOSIX, align 4
  %71 = call i32 @NOTE(i32 %70)
  br label %72

72:                                               ; preds = %69, %63
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ATEOS(...) #1

declare dso_local i64 @iscspace(i64) #1

declare dso_local i64 @CHR(i8 signext) #1

declare dso_local i32 @NEXT1(i8 signext) #1

declare dso_local i32 @NOTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
