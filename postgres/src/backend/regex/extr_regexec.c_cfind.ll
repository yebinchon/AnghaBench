; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cfind.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_cfind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32*, %struct.TYPE_6__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, %struct.cnfa }
%struct.cnfa = type { i32 }
%struct.colormap = type { i32 }
%struct.dfa = type { i32 }

@REG_EXPECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.cnfa*, %struct.colormap*)* @cfind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfind(%struct.vars* %0, %struct.cnfa* %1, %struct.colormap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vars*, align 8
  %6 = alloca %struct.cnfa*, align 8
  %7 = alloca %struct.colormap*, align 8
  %8 = alloca %struct.dfa*, align 8
  %9 = alloca %struct.dfa*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %5, align 8
  store %struct.cnfa* %1, %struct.cnfa** %6, align 8
  store %struct.colormap* %2, %struct.colormap** %7, align 8
  %12 = load %struct.vars*, %struct.vars** %5, align 8
  %13 = load %struct.vars*, %struct.vars** %5, align 8
  %14 = getelementptr inbounds %struct.vars, %struct.vars* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.colormap*, %struct.colormap** %7, align 8
  %18 = load %struct.vars*, %struct.vars** %5, align 8
  %19 = getelementptr inbounds %struct.vars, %struct.vars* %18, i32 0, i32 5
  %20 = call %struct.dfa* @newdfa(%struct.vars* %12, %struct.cnfa* %16, %struct.colormap* %17, i32* %19)
  store %struct.dfa* %20, %struct.dfa** %8, align 8
  %21 = call i32 (...) @NOERR()
  %22 = load %struct.vars*, %struct.vars** %5, align 8
  %23 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %24 = load %struct.colormap*, %struct.colormap** %7, align 8
  %25 = load %struct.vars*, %struct.vars** %5, align 8
  %26 = getelementptr inbounds %struct.vars, %struct.vars* %25, i32 0, i32 4
  %27 = call %struct.dfa* @newdfa(%struct.vars* %22, %struct.cnfa* %23, %struct.colormap* %24, i32* %26)
  store %struct.dfa* %27, %struct.dfa** %9, align 8
  %28 = call i64 (...) @ISERR()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.dfa*, %struct.dfa** %9, align 8
  %32 = icmp eq %struct.dfa* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.dfa*, %struct.dfa** %8, align 8
  %36 = call i32 @freedfa(%struct.dfa* %35)
  %37 = load %struct.vars*, %struct.vars** %5, align 8
  %38 = getelementptr inbounds %struct.vars, %struct.vars* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %4, align 4
  br label %99

40:                                               ; preds = %3
  %41 = load %struct.vars*, %struct.vars** %5, align 8
  %42 = load %struct.cnfa*, %struct.cnfa** %6, align 8
  %43 = load %struct.colormap*, %struct.colormap** %7, align 8
  %44 = load %struct.dfa*, %struct.dfa** %9, align 8
  %45 = load %struct.dfa*, %struct.dfa** %8, align 8
  %46 = call i32 @cfindloop(%struct.vars* %41, %struct.cnfa* %42, %struct.colormap* %43, %struct.dfa* %44, %struct.dfa* %45, i32** %10)
  store i32 %46, i32* %11, align 4
  %47 = load %struct.dfa*, %struct.dfa** %9, align 8
  %48 = call i32 @freedfa(%struct.dfa* %47)
  %49 = load %struct.dfa*, %struct.dfa** %8, align 8
  %50 = call i32 @freedfa(%struct.dfa* %49)
  %51 = call i32 (...) @NOERR()
  %52 = load %struct.vars*, %struct.vars** %5, align 8
  %53 = getelementptr inbounds %struct.vars, %struct.vars* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @REG_EXPECT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %97

60:                                               ; preds = %40
  %61 = load %struct.vars*, %struct.vars** %5, align 8
  %62 = getelementptr inbounds %struct.vars, %struct.vars* %61, i32 0, i32 2
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load i32*, i32** %10, align 8
  %71 = call i8* @OFF(i32* %70)
  %72 = load %struct.vars*, %struct.vars** %5, align 8
  %73 = getelementptr inbounds %struct.vars, %struct.vars* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i8* %71, i8** %76, align 8
  br label %87

77:                                               ; preds = %60
  %78 = load %struct.vars*, %struct.vars** %5, align 8
  %79 = getelementptr inbounds %struct.vars, %struct.vars* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call i8* @OFF(i32* %80)
  %82 = load %struct.vars*, %struct.vars** %5, align 8
  %83 = getelementptr inbounds %struct.vars, %struct.vars* %82, i32 0, i32 2
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i8* %81, i8** %86, align 8
  br label %87

87:                                               ; preds = %77, %69
  %88 = load %struct.vars*, %struct.vars** %5, align 8
  %89 = getelementptr inbounds %struct.vars, %struct.vars* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = call i8* @OFF(i32* %90)
  %92 = load %struct.vars*, %struct.vars** %5, align 8
  %93 = getelementptr inbounds %struct.vars, %struct.vars* %92, i32 0, i32 2
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i8* %91, i8** %96, align 8
  br label %97

97:                                               ; preds = %87, %40
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %30
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.dfa* @newdfa(%struct.vars*, %struct.cnfa*, %struct.colormap*, i32*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @freedfa(%struct.dfa*) #1

declare dso_local i32 @cfindloop(%struct.vars*, %struct.cnfa*, %struct.colormap*, %struct.dfa*, %struct.dfa*, i32**) #1

declare dso_local i8* @OFF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
