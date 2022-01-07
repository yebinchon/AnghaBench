; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_freev.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_freev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i64, i64, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, i32)* @freev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freev(%struct.vars* %0, i32 %1) #0 {
  %3 = alloca %struct.vars*, align 8
  %4 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vars*, %struct.vars** %3, align 8
  %6 = getelementptr inbounds %struct.vars, %struct.vars* %5, i32 0, i32 10
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.vars*, %struct.vars** %3, align 8
  %11 = getelementptr inbounds %struct.vars, %struct.vars* %10, i32 0, i32 10
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @rfree(i32* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.vars*, %struct.vars** %3, align 8
  %16 = getelementptr inbounds %struct.vars, %struct.vars* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vars*, %struct.vars** %3, align 8
  %19 = getelementptr inbounds %struct.vars, %struct.vars* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load %struct.vars*, %struct.vars** %3, align 8
  %24 = getelementptr inbounds %struct.vars, %struct.vars* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @FREE(i64 %25)
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.vars*, %struct.vars** %3, align 8
  %29 = getelementptr inbounds %struct.vars, %struct.vars* %28, i32 0, i32 9
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.vars*, %struct.vars** %3, align 8
  %34 = getelementptr inbounds %struct.vars, %struct.vars* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @freenfa(i32* %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.vars*, %struct.vars** %3, align 8
  %39 = getelementptr inbounds %struct.vars, %struct.vars* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.vars*, %struct.vars** %3, align 8
  %44 = load %struct.vars*, %struct.vars** %3, align 8
  %45 = getelementptr inbounds %struct.vars, %struct.vars* %44, i32 0, i32 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @freesubre(%struct.vars* %43, i32* %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load %struct.vars*, %struct.vars** %3, align 8
  %50 = getelementptr inbounds %struct.vars, %struct.vars* %49, i32 0, i32 7
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.vars*, %struct.vars** %3, align 8
  %55 = call i32 @cleanst(%struct.vars* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.vars*, %struct.vars** %3, align 8
  %58 = getelementptr inbounds %struct.vars, %struct.vars* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.vars*, %struct.vars** %3, align 8
  %63 = getelementptr inbounds %struct.vars, %struct.vars* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @freecvec(i32* %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load %struct.vars*, %struct.vars** %3, align 8
  %68 = getelementptr inbounds %struct.vars, %struct.vars* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.vars*, %struct.vars** %3, align 8
  %73 = getelementptr inbounds %struct.vars, %struct.vars* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @freecvec(i32* %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.vars*, %struct.vars** %3, align 8
  %78 = getelementptr inbounds %struct.vars, %struct.vars* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load %struct.vars*, %struct.vars** %3, align 8
  %83 = getelementptr inbounds %struct.vars, %struct.vars* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.vars*, %struct.vars** %3, align 8
  %86 = getelementptr inbounds %struct.vars, %struct.vars* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @freelacons(i32* %84, i32 %87)
  br label %89

89:                                               ; preds = %81, %76
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @ERR(i32 %90)
  %92 = load %struct.vars*, %struct.vars** %3, align 8
  %93 = getelementptr inbounds %struct.vars, %struct.vars* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  ret i32 %94
}

declare dso_local i32 @rfree(i32*) #1

declare dso_local i32 @FREE(i64) #1

declare dso_local i32 @freenfa(i32*) #1

declare dso_local i32 @freesubre(%struct.vars*, i32*) #1

declare dso_local i32 @cleanst(%struct.vars*) #1

declare dso_local i32 @freecvec(i32*) #1

declare dso_local i32 @freelacons(i32*, i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
