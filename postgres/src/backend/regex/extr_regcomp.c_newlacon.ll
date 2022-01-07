; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_newlacon.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regcomp.c_newlacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, %struct.subre* }
%struct.subre = type { i32, i32, %struct.state*, %struct.state* }
%struct.state = type { i32 }

@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vars*, %struct.state*, %struct.state*, i32)* @newlacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @newlacon(%struct.vars* %0, %struct.state* %1, %struct.state* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vars*, align 8
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.subre*, align 8
  %12 = alloca %struct.subre*, align 8
  store %struct.vars* %0, %struct.vars** %6, align 8
  store %struct.state* %1, %struct.state** %7, align 8
  store %struct.state* %2, %struct.state** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.vars*, %struct.vars** %6, align 8
  %14 = getelementptr inbounds %struct.vars, %struct.vars* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %18 = call i64 @MALLOC(i32 48)
  %19 = inttoptr i64 %18 to %struct.subre*
  store %struct.subre* %19, %struct.subre** %11, align 8
  br label %34

20:                                               ; preds = %4
  %21 = load %struct.vars*, %struct.vars** %6, align 8
  %22 = getelementptr inbounds %struct.vars, %struct.vars* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.vars*, %struct.vars** %6, align 8
  %25 = getelementptr inbounds %struct.vars, %struct.vars* %24, i32 0, i32 1
  %26 = load %struct.subre*, %struct.subre** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 24
  %31 = trunc i64 %30 to i32
  %32 = call i64 @REALLOC(%struct.subre* %26, i32 %31)
  %33 = inttoptr i64 %32 to %struct.subre*
  store %struct.subre* %33, %struct.subre** %11, align 8
  br label %34

34:                                               ; preds = %20, %17
  %35 = load %struct.subre*, %struct.subre** %11, align 8
  %36 = icmp eq %struct.subre* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @REG_ESPACE, align 4
  %39 = call i32 @ERR(i32 %38)
  store i32 0, i32* %5, align 4
  br label %68

40:                                               ; preds = %34
  %41 = load %struct.subre*, %struct.subre** %11, align 8
  %42 = load %struct.vars*, %struct.vars** %6, align 8
  %43 = getelementptr inbounds %struct.vars, %struct.vars* %42, i32 0, i32 1
  store %struct.subre* %41, %struct.subre** %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  %46 = load %struct.vars*, %struct.vars** %6, align 8
  %47 = getelementptr inbounds %struct.vars, %struct.vars* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vars*, %struct.vars** %6, align 8
  %49 = getelementptr inbounds %struct.vars, %struct.vars* %48, i32 0, i32 1
  %50 = load %struct.subre*, %struct.subre** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.subre, %struct.subre* %50, i64 %52
  store %struct.subre* %53, %struct.subre** %12, align 8
  %54 = load %struct.state*, %struct.state** %7, align 8
  %55 = load %struct.subre*, %struct.subre** %12, align 8
  %56 = getelementptr inbounds %struct.subre, %struct.subre* %55, i32 0, i32 3
  store %struct.state* %54, %struct.state** %56, align 8
  %57 = load %struct.state*, %struct.state** %8, align 8
  %58 = load %struct.subre*, %struct.subre** %12, align 8
  %59 = getelementptr inbounds %struct.subre, %struct.subre* %58, i32 0, i32 2
  store %struct.state* %57, %struct.state** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.subre*, %struct.subre** %12, align 8
  %62 = getelementptr inbounds %struct.subre, %struct.subre* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.subre*, %struct.subre** %12, align 8
  %64 = getelementptr inbounds %struct.subre, %struct.subre* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ZAPCNFA(i32 %65)
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %40, %37
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @MALLOC(i32) #1

declare dso_local i64 @REALLOC(%struct.subre*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @ZAPCNFA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
