; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_subre.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_subre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subre = type { i32, i32, i32, i32, i32, %struct.state*, %struct.state*, i32*, %struct.subre*, i64, i64, %struct.subre* }
%struct.vars = type { %struct.subre*, %struct.subre*, i32 }
%struct.state = type { i32 }

@REG_ETOOBIG = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"=b|.*(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.subre* (%struct.vars*, i32, i32, %struct.state*, %struct.state*)* @subre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.subre* @subre(%struct.vars* %0, i32 %1, i32 %2, %struct.state* %3, %struct.state* %4) #0 {
  %6 = alloca %struct.subre*, align 8
  %7 = alloca %struct.vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.state*, align 8
  %11 = alloca %struct.state*, align 8
  %12 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.state* %3, %struct.state** %10, align 8
  store %struct.state* %4, %struct.state** %11, align 8
  %13 = load %struct.vars*, %struct.vars** %7, align 8
  %14 = getelementptr inbounds %struct.vars, %struct.vars* %13, i32 0, i32 1
  %15 = load %struct.subre*, %struct.subre** %14, align 8
  store %struct.subre* %15, %struct.subre** %12, align 8
  %16 = load %struct.vars*, %struct.vars** %7, align 8
  %17 = getelementptr inbounds %struct.vars, %struct.vars* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @STACK_TOO_DEEP(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @REG_ETOOBIG, align 4
  %23 = call i32 @ERR(i32 %22)
  store %struct.subre* null, %struct.subre** %6, align 8
  br label %85

24:                                               ; preds = %5
  %25 = load %struct.subre*, %struct.subre** %12, align 8
  %26 = icmp ne %struct.subre* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.subre*, %struct.subre** %12, align 8
  %29 = getelementptr inbounds %struct.subre, %struct.subre* %28, i32 0, i32 8
  %30 = load %struct.subre*, %struct.subre** %29, align 8
  %31 = load %struct.vars*, %struct.vars** %7, align 8
  %32 = getelementptr inbounds %struct.vars, %struct.vars* %31, i32 0, i32 1
  store %struct.subre* %30, %struct.subre** %32, align 8
  br label %50

33:                                               ; preds = %24
  %34 = call i64 @MALLOC(i32 80)
  %35 = inttoptr i64 %34 to %struct.subre*
  store %struct.subre* %35, %struct.subre** %12, align 8
  %36 = load %struct.subre*, %struct.subre** %12, align 8
  %37 = icmp eq %struct.subre* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @REG_ESPACE, align 4
  %40 = call i32 @ERR(i32 %39)
  store %struct.subre* null, %struct.subre** %6, align 8
  br label %85

41:                                               ; preds = %33
  %42 = load %struct.vars*, %struct.vars** %7, align 8
  %43 = getelementptr inbounds %struct.vars, %struct.vars* %42, i32 0, i32 0
  %44 = load %struct.subre*, %struct.subre** %43, align 8
  %45 = load %struct.subre*, %struct.subre** %12, align 8
  %46 = getelementptr inbounds %struct.subre, %struct.subre* %45, i32 0, i32 11
  store %struct.subre* %44, %struct.subre** %46, align 8
  %47 = load %struct.subre*, %struct.subre** %12, align 8
  %48 = load %struct.vars*, %struct.vars** %7, align 8
  %49 = getelementptr inbounds %struct.vars, %struct.vars* %48, i32 0, i32 0
  store %struct.subre* %47, %struct.subre** %49, align 8
  br label %50

50:                                               ; preds = %41, %27
  %51 = load i32, i32* %8, align 4
  %52 = call i32* @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.subre*, %struct.subre** %12, align 8
  %58 = getelementptr inbounds %struct.subre, %struct.subre* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.subre*, %struct.subre** %12, align 8
  %61 = getelementptr inbounds %struct.subre, %struct.subre* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.subre*, %struct.subre** %12, align 8
  %63 = getelementptr inbounds %struct.subre, %struct.subre* %62, i32 0, i32 10
  store i64 0, i64* %63, align 8
  %64 = load %struct.subre*, %struct.subre** %12, align 8
  %65 = getelementptr inbounds %struct.subre, %struct.subre* %64, i32 0, i32 9
  store i64 0, i64* %65, align 8
  %66 = load %struct.subre*, %struct.subre** %12, align 8
  %67 = getelementptr inbounds %struct.subre, %struct.subre* %66, i32 0, i32 3
  store i32 1, i32* %67, align 4
  %68 = load %struct.subre*, %struct.subre** %12, align 8
  %69 = getelementptr inbounds %struct.subre, %struct.subre* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.subre*, %struct.subre** %12, align 8
  %71 = getelementptr inbounds %struct.subre, %struct.subre* %70, i32 0, i32 8
  store %struct.subre* null, %struct.subre** %71, align 8
  %72 = load %struct.subre*, %struct.subre** %12, align 8
  %73 = getelementptr inbounds %struct.subre, %struct.subre* %72, i32 0, i32 7
  store i32* null, i32** %73, align 8
  %74 = load %struct.state*, %struct.state** %10, align 8
  %75 = load %struct.subre*, %struct.subre** %12, align 8
  %76 = getelementptr inbounds %struct.subre, %struct.subre* %75, i32 0, i32 6
  store %struct.state* %74, %struct.state** %76, align 8
  %77 = load %struct.state*, %struct.state** %11, align 8
  %78 = load %struct.subre*, %struct.subre** %12, align 8
  %79 = getelementptr inbounds %struct.subre, %struct.subre* %78, i32 0, i32 5
  store %struct.state* %77, %struct.state** %79, align 8
  %80 = load %struct.subre*, %struct.subre** %12, align 8
  %81 = getelementptr inbounds %struct.subre, %struct.subre* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ZAPCNFA(i32 %82)
  %84 = load %struct.subre*, %struct.subre** %12, align 8
  store %struct.subre* %84, %struct.subre** %6, align 8
  br label %85

85:                                               ; preds = %50, %38, %21
  %86 = load %struct.subre*, %struct.subre** %6, align 8
  ret %struct.subre* %86
}

declare dso_local i64 @STACK_TOO_DEEP(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @strchr(i8*, i32) #1

declare dso_local i32 @ZAPCNFA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
