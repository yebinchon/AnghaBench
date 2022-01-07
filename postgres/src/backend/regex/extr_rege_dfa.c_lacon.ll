; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_lacon.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_rege_dfa.c_lacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32*, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.subre* }
%struct.subre = type { i32 }
%struct.cnfa = type { i32 }
%struct.dfa = type { i32 }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"=== testing lacon %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"=== lacon %d satisfied %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.cnfa*, i32*, i32)* @lacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lacon(%struct.vars* %0, %struct.cnfa* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.cnfa*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.subre*, align 8
  %12 = alloca %struct.dfa*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.cnfa* %1, %struct.cnfa** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.vars*, %struct.vars** %6, align 8
  %16 = getelementptr inbounds %struct.vars, %struct.vars* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @STACK_TOO_DEEP(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @REG_ETOOBIG, align 4
  %22 = call i32 @ERR(i32 %21)
  store i32 0, i32* %5, align 4
  br label %133

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.cnfa*, %struct.cnfa** %7, align 8
  %26 = getelementptr inbounds %struct.cnfa, %struct.cnfa* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.vars*, %struct.vars** %6, align 8
  %34 = getelementptr inbounds %struct.vars, %struct.vars* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.vars*, %struct.vars** %6, align 8
  %41 = getelementptr inbounds %struct.vars, %struct.vars* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.subre*, %struct.subre** %43, align 8
  %45 = icmp ne %struct.subre* %44, null
  br label %46

46:                                               ; preds = %39, %31, %23
  %47 = phi i1 [ false, %31 ], [ false, %23 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @FDEBUG(i8* %52)
  %54 = load %struct.vars*, %struct.vars** %6, align 8
  %55 = getelementptr inbounds %struct.vars, %struct.vars* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load %struct.subre*, %struct.subre** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.subre, %struct.subre* %58, i64 %60
  store %struct.subre* %61, %struct.subre** %11, align 8
  %62 = load %struct.vars*, %struct.vars** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.dfa* @getladfa(%struct.vars* %62, i32 %63)
  store %struct.dfa* %64, %struct.dfa** %12, align 8
  %65 = load %struct.dfa*, %struct.dfa** %12, align 8
  %66 = icmp eq %struct.dfa* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %133

68:                                               ; preds = %46
  %69 = load %struct.subre*, %struct.subre** %11, align 8
  %70 = getelementptr inbounds %struct.subre, %struct.subre* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @LATYPE_IS_AHEAD(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %98

74:                                               ; preds = %68
  %75 = load %struct.vars*, %struct.vars** %6, align 8
  %76 = load %struct.dfa*, %struct.dfa** %12, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.vars*, %struct.vars** %6, align 8
  %80 = getelementptr inbounds %struct.vars, %struct.vars* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32* @shortest(%struct.vars* %75, %struct.dfa* %76, i32* %77, i32* %78, i32 %81, i32** null, i32* null)
  store i32* %82, i32** %13, align 8
  %83 = load %struct.subre*, %struct.subre** %11, align 8
  %84 = getelementptr inbounds %struct.subre, %struct.subre* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @LATYPE_IS_POS(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load i32*, i32** %13, align 8
  %90 = icmp ne i32* %89, null
  %91 = zext i1 %90 to i32
  br label %96

92:                                               ; preds = %74
  %93 = load i32*, i32** %13, align 8
  %94 = icmp eq i32* %93, null
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i32 [ %91, %88 ], [ %95, %92 ]
  store i32 %97, i32* %14, align 4
  br label %126

98:                                               ; preds = %68
  %99 = load %struct.vars*, %struct.vars** %6, align 8
  %100 = load %struct.dfa*, %struct.dfa** %12, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load %struct.vars*, %struct.vars** %6, align 8
  %103 = getelementptr inbounds %struct.vars, %struct.vars* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load %struct.vars*, %struct.vars** %6, align 8
  %109 = getelementptr inbounds %struct.vars, %struct.vars* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @matchuntil(%struct.vars* %99, %struct.dfa* %100, i32* %101, i32* %107, i32* %113)
  store i32 %114, i32* %14, align 4
  %115 = load %struct.subre*, %struct.subre** %11, align 8
  %116 = getelementptr inbounds %struct.subre, %struct.subre* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @LATYPE_IS_POS(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %98
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %120, %98
  br label %126

126:                                              ; preds = %125, %96
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = call i32 @FDEBUG(i8* %130)
  %132 = load i32, i32* %14, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %126, %67, %20
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FDEBUG(i8*) #1

declare dso_local %struct.dfa* @getladfa(%struct.vars*, i32) #1

declare dso_local i64 @LATYPE_IS_AHEAD(i32) #1

declare dso_local i32* @shortest(%struct.vars*, %struct.dfa*, i32*, i32*, i32, i32**, i32*) #1

declare dso_local i64 @LATYPE_IS_POS(i32) #1

declare dso_local i32 @matchuntil(%struct.vars*, %struct.dfa*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
