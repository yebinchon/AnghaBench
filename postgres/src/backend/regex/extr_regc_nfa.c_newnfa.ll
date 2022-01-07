; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_newnfa.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_nfa.c_newnfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32 }
%struct.colormap = type { i32 }
%struct.nfa = type { i8*, i8*, %struct.colormap*, i8*, i8*, %struct.nfa*, i8**, i8**, %struct.vars*, i64, i32*, i32*, i32* }

@REG_ESPACE = common dso_local global i32 0, align 4
@COLORLESS = common dso_local global i8* null, align 8
@PLAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfa* (%struct.vars*, %struct.colormap*, %struct.nfa*)* @newnfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfa* @newnfa(%struct.vars* %0, %struct.colormap* %1, %struct.nfa* %2) #0 {
  %4 = alloca %struct.nfa*, align 8
  %5 = alloca %struct.vars*, align 8
  %6 = alloca %struct.colormap*, align 8
  %7 = alloca %struct.nfa*, align 8
  %8 = alloca %struct.nfa*, align 8
  store %struct.vars* %0, %struct.vars** %5, align 8
  store %struct.colormap* %1, %struct.colormap** %6, align 8
  store %struct.nfa* %2, %struct.nfa** %7, align 8
  %9 = call i64 @MALLOC(i32 104)
  %10 = inttoptr i64 %9 to %struct.nfa*
  store %struct.nfa* %10, %struct.nfa** %8, align 8
  %11 = load %struct.nfa*, %struct.nfa** %8, align 8
  %12 = icmp eq %struct.nfa* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @REG_ESPACE, align 4
  %15 = call i32 @ERR(i32 %14)
  store %struct.nfa* null, %struct.nfa** %4, align 8
  br label %139

16:                                               ; preds = %3
  %17 = load %struct.nfa*, %struct.nfa** %8, align 8
  %18 = getelementptr inbounds %struct.nfa, %struct.nfa* %17, i32 0, i32 12
  store i32* null, i32** %18, align 8
  %19 = load %struct.nfa*, %struct.nfa** %8, align 8
  %20 = getelementptr inbounds %struct.nfa, %struct.nfa* %19, i32 0, i32 11
  store i32* null, i32** %20, align 8
  %21 = load %struct.nfa*, %struct.nfa** %8, align 8
  %22 = getelementptr inbounds %struct.nfa, %struct.nfa* %21, i32 0, i32 10
  store i32* null, i32** %22, align 8
  %23 = load %struct.nfa*, %struct.nfa** %8, align 8
  %24 = getelementptr inbounds %struct.nfa, %struct.nfa* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.colormap*, %struct.colormap** %6, align 8
  %26 = load %struct.nfa*, %struct.nfa** %8, align 8
  %27 = getelementptr inbounds %struct.nfa, %struct.nfa* %26, i32 0, i32 2
  store %struct.colormap* %25, %struct.colormap** %27, align 8
  %28 = load %struct.vars*, %struct.vars** %5, align 8
  %29 = load %struct.nfa*, %struct.nfa** %8, align 8
  %30 = getelementptr inbounds %struct.nfa, %struct.nfa* %29, i32 0, i32 8
  store %struct.vars* %28, %struct.vars** %30, align 8
  %31 = load i8*, i8** @COLORLESS, align 8
  %32 = load %struct.nfa*, %struct.nfa** %8, align 8
  %33 = getelementptr inbounds %struct.nfa, %struct.nfa* %32, i32 0, i32 7
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %31, i8** %35, align 8
  %36 = load %struct.nfa*, %struct.nfa** %8, align 8
  %37 = getelementptr inbounds %struct.nfa, %struct.nfa* %36, i32 0, i32 7
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %31, i8** %39, align 8
  %40 = load i8*, i8** @COLORLESS, align 8
  %41 = load %struct.nfa*, %struct.nfa** %8, align 8
  %42 = getelementptr inbounds %struct.nfa, %struct.nfa* %41, i32 0, i32 6
  %43 = load i8**, i8*** %42, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* %40, i8** %44, align 8
  %45 = load %struct.nfa*, %struct.nfa** %8, align 8
  %46 = getelementptr inbounds %struct.nfa, %struct.nfa* %45, i32 0, i32 6
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  store i8* %40, i8** %48, align 8
  %49 = load %struct.nfa*, %struct.nfa** %7, align 8
  %50 = load %struct.nfa*, %struct.nfa** %8, align 8
  %51 = getelementptr inbounds %struct.nfa, %struct.nfa* %50, i32 0, i32 5
  store %struct.nfa* %49, %struct.nfa** %51, align 8
  %52 = load %struct.nfa*, %struct.nfa** %8, align 8
  %53 = call i8* @newfstate(%struct.nfa* %52, i8 signext 64)
  %54 = load %struct.nfa*, %struct.nfa** %8, align 8
  %55 = getelementptr inbounds %struct.nfa, %struct.nfa* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nfa*, %struct.nfa** %8, align 8
  %57 = call i8* @newfstate(%struct.nfa* %56, i8 signext 62)
  %58 = load %struct.nfa*, %struct.nfa** %8, align 8
  %59 = getelementptr inbounds %struct.nfa, %struct.nfa* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.nfa*, %struct.nfa** %8, align 8
  %61 = call i8* @newstate(%struct.nfa* %60)
  %62 = load %struct.nfa*, %struct.nfa** %8, align 8
  %63 = getelementptr inbounds %struct.nfa, %struct.nfa* %62, i32 0, i32 3
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nfa*, %struct.nfa** %8, align 8
  %65 = call i8* @newstate(%struct.nfa* %64)
  %66 = load %struct.nfa*, %struct.nfa** %8, align 8
  %67 = getelementptr inbounds %struct.nfa, %struct.nfa* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = call i64 (...) @ISERR()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %16
  %71 = load %struct.nfa*, %struct.nfa** %8, align 8
  %72 = call i32 @freenfa(%struct.nfa* %71)
  store %struct.nfa* null, %struct.nfa** %4, align 8
  br label %139

73:                                               ; preds = %16
  %74 = load %struct.nfa*, %struct.nfa** %8, align 8
  %75 = load %struct.nfa*, %struct.nfa** %8, align 8
  %76 = getelementptr inbounds %struct.nfa, %struct.nfa* %75, i32 0, i32 2
  %77 = load %struct.colormap*, %struct.colormap** %76, align 8
  %78 = load i32, i32* @PLAIN, align 4
  %79 = load i8*, i8** @COLORLESS, align 8
  %80 = load %struct.nfa*, %struct.nfa** %8, align 8
  %81 = getelementptr inbounds %struct.nfa, %struct.nfa* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.nfa*, %struct.nfa** %8, align 8
  %84 = getelementptr inbounds %struct.nfa, %struct.nfa* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @rainbow(%struct.nfa* %74, %struct.colormap* %77, i32 %78, i8* %79, i8* %82, i8* %85)
  %87 = load %struct.nfa*, %struct.nfa** %8, align 8
  %88 = load %struct.nfa*, %struct.nfa** %8, align 8
  %89 = getelementptr inbounds %struct.nfa, %struct.nfa* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.nfa*, %struct.nfa** %8, align 8
  %92 = getelementptr inbounds %struct.nfa, %struct.nfa* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @newarc(%struct.nfa* %87, i8 signext 94, i32 1, i8* %90, i8* %93)
  %95 = load %struct.nfa*, %struct.nfa** %8, align 8
  %96 = load %struct.nfa*, %struct.nfa** %8, align 8
  %97 = getelementptr inbounds %struct.nfa, %struct.nfa* %96, i32 0, i32 4
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.nfa*, %struct.nfa** %8, align 8
  %100 = getelementptr inbounds %struct.nfa, %struct.nfa* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @newarc(%struct.nfa* %95, i8 signext 94, i32 0, i8* %98, i8* %101)
  %103 = load %struct.nfa*, %struct.nfa** %8, align 8
  %104 = load %struct.nfa*, %struct.nfa** %8, align 8
  %105 = getelementptr inbounds %struct.nfa, %struct.nfa* %104, i32 0, i32 2
  %106 = load %struct.colormap*, %struct.colormap** %105, align 8
  %107 = load i32, i32* @PLAIN, align 4
  %108 = load i8*, i8** @COLORLESS, align 8
  %109 = load %struct.nfa*, %struct.nfa** %8, align 8
  %110 = getelementptr inbounds %struct.nfa, %struct.nfa* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.nfa*, %struct.nfa** %8, align 8
  %113 = getelementptr inbounds %struct.nfa, %struct.nfa* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @rainbow(%struct.nfa* %103, %struct.colormap* %106, i32 %107, i8* %108, i8* %111, i8* %114)
  %116 = load %struct.nfa*, %struct.nfa** %8, align 8
  %117 = load %struct.nfa*, %struct.nfa** %8, align 8
  %118 = getelementptr inbounds %struct.nfa, %struct.nfa* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.nfa*, %struct.nfa** %8, align 8
  %121 = getelementptr inbounds %struct.nfa, %struct.nfa* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @newarc(%struct.nfa* %116, i8 signext 36, i32 1, i8* %119, i8* %122)
  %124 = load %struct.nfa*, %struct.nfa** %8, align 8
  %125 = load %struct.nfa*, %struct.nfa** %8, align 8
  %126 = getelementptr inbounds %struct.nfa, %struct.nfa* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.nfa*, %struct.nfa** %8, align 8
  %129 = getelementptr inbounds %struct.nfa, %struct.nfa* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @newarc(%struct.nfa* %124, i8 signext 36, i32 0, i8* %127, i8* %130)
  %132 = call i64 (...) @ISERR()
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %73
  %135 = load %struct.nfa*, %struct.nfa** %8, align 8
  %136 = call i32 @freenfa(%struct.nfa* %135)
  store %struct.nfa* null, %struct.nfa** %4, align 8
  br label %139

137:                                              ; preds = %73
  %138 = load %struct.nfa*, %struct.nfa** %8, align 8
  store %struct.nfa* %138, %struct.nfa** %4, align 8
  br label %139

139:                                              ; preds = %137, %134, %70, %13
  %140 = load %struct.nfa*, %struct.nfa** %4, align 8
  ret %struct.nfa* %140
}

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i8* @newfstate(%struct.nfa*, i8 signext) #1

declare dso_local i8* @newstate(%struct.nfa*) #1

declare dso_local i64 @ISERR(...) #1

declare dso_local i32 @freenfa(%struct.nfa*) #1

declare dso_local i32 @rainbow(%struct.nfa*, %struct.colormap*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @newarc(%struct.nfa*, i8 signext, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
