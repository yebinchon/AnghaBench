; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_sortins.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_sortins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfa = type { i32 }
%struct.state = type { i32, %struct.arc* }
%struct.arc = type { %struct.arc*, %struct.arc* }

@REG_ESPACE = common dso_local global i32 0, align 4
@sortins_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfa*, %struct.state*)* @sortins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sortins(%struct.nfa* %0, %struct.state* %1) #0 {
  %3 = alloca %struct.nfa*, align 8
  %4 = alloca %struct.state*, align 8
  %5 = alloca %struct.arc**, align 8
  %6 = alloca %struct.arc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfa* %0, %struct.nfa** %3, align 8
  store %struct.state* %1, %struct.state** %4, align 8
  %9 = load %struct.state*, %struct.state** %4, align 8
  %10 = getelementptr inbounds %struct.state, %struct.state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %116

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @MALLOC(i32 %19)
  %21 = inttoptr i64 %20 to %struct.arc**
  store %struct.arc** %21, %struct.arc*** %5, align 8
  %22 = load %struct.arc**, %struct.arc*** %5, align 8
  %23 = icmp eq %struct.arc** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @REG_ESPACE, align 4
  %26 = call i32 @NERR(i32 %25)
  br label %116

27:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  %28 = load %struct.state*, %struct.state** %4, align 8
  %29 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 1
  %30 = load %struct.arc*, %struct.arc** %29, align 8
  store %struct.arc* %30, %struct.arc** %6, align 8
  br label %31

31:                                               ; preds = %41, %27
  %32 = load %struct.arc*, %struct.arc** %6, align 8
  %33 = icmp ne %struct.arc* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.arc*, %struct.arc** %6, align 8
  %36 = load %struct.arc**, %struct.arc*** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds %struct.arc*, %struct.arc** %36, i64 %39
  store %struct.arc* %35, %struct.arc** %40, align 8
  br label %41

41:                                               ; preds = %34
  %42 = load %struct.arc*, %struct.arc** %6, align 8
  %43 = getelementptr inbounds %struct.arc, %struct.arc* %42, i32 0, i32 1
  %44 = load %struct.arc*, %struct.arc** %43, align 8
  store %struct.arc* %44, %struct.arc** %6, align 8
  br label %31

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.arc**, %struct.arc*** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @sortins_cmp, align 4
  %54 = call i32 @qsort(%struct.arc** %51, i32 %52, i32 8, i32 %53)
  %55 = load %struct.arc**, %struct.arc*** %5, align 8
  %56 = getelementptr inbounds %struct.arc*, %struct.arc** %55, i64 0
  %57 = load %struct.arc*, %struct.arc** %56, align 8
  store %struct.arc* %57, %struct.arc** %6, align 8
  %58 = load %struct.arc*, %struct.arc** %6, align 8
  %59 = load %struct.state*, %struct.state** %4, align 8
  %60 = getelementptr inbounds %struct.state, %struct.state* %59, i32 0, i32 1
  store %struct.arc* %58, %struct.arc** %60, align 8
  %61 = load %struct.arc**, %struct.arc*** %5, align 8
  %62 = getelementptr inbounds %struct.arc*, %struct.arc** %61, i64 1
  %63 = load %struct.arc*, %struct.arc** %62, align 8
  %64 = load %struct.arc*, %struct.arc** %6, align 8
  %65 = getelementptr inbounds %struct.arc, %struct.arc* %64, i32 0, i32 1
  store %struct.arc* %63, %struct.arc** %65, align 8
  %66 = load %struct.arc*, %struct.arc** %6, align 8
  %67 = getelementptr inbounds %struct.arc, %struct.arc* %66, i32 0, i32 0
  store %struct.arc* null, %struct.arc** %67, align 8
  store i32 1, i32* %8, align 4
  br label %68

68:                                               ; preds = %95, %45
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %68
  %74 = load %struct.arc**, %struct.arc*** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.arc*, %struct.arc** %74, i64 %76
  %78 = load %struct.arc*, %struct.arc** %77, align 8
  store %struct.arc* %78, %struct.arc** %6, align 8
  %79 = load %struct.arc**, %struct.arc*** %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.arc*, %struct.arc** %79, i64 %82
  %84 = load %struct.arc*, %struct.arc** %83, align 8
  %85 = load %struct.arc*, %struct.arc** %6, align 8
  %86 = getelementptr inbounds %struct.arc, %struct.arc* %85, i32 0, i32 1
  store %struct.arc* %84, %struct.arc** %86, align 8
  %87 = load %struct.arc**, %struct.arc*** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.arc*, %struct.arc** %87, i64 %90
  %92 = load %struct.arc*, %struct.arc** %91, align 8
  %93 = load %struct.arc*, %struct.arc** %6, align 8
  %94 = getelementptr inbounds %struct.arc, %struct.arc* %93, i32 0, i32 0
  store %struct.arc* %92, %struct.arc** %94, align 8
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %68

98:                                               ; preds = %68
  %99 = load %struct.arc**, %struct.arc*** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.arc*, %struct.arc** %99, i64 %101
  %103 = load %struct.arc*, %struct.arc** %102, align 8
  store %struct.arc* %103, %struct.arc** %6, align 8
  %104 = load %struct.arc*, %struct.arc** %6, align 8
  %105 = getelementptr inbounds %struct.arc, %struct.arc* %104, i32 0, i32 1
  store %struct.arc* null, %struct.arc** %105, align 8
  %106 = load %struct.arc**, %struct.arc*** %5, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.arc*, %struct.arc** %106, i64 %109
  %111 = load %struct.arc*, %struct.arc** %110, align 8
  %112 = load %struct.arc*, %struct.arc** %6, align 8
  %113 = getelementptr inbounds %struct.arc, %struct.arc* %112, i32 0, i32 0
  store %struct.arc* %111, %struct.arc** %113, align 8
  %114 = load %struct.arc**, %struct.arc*** %5, align 8
  %115 = call i32 @FREE(%struct.arc** %114)
  br label %116

116:                                              ; preds = %98, %24, %14
  ret void
}

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @NERR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qsort(%struct.arc**, i32, i32, i32) #1

declare dso_local i32 @FREE(%struct.arc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
