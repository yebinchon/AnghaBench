; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_lex.c_lexstart.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_lex.c_lexstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i32, i32 }

@REG_QUOTE = common dso_local global i32 0, align 4
@REG_ADVANCED = common dso_local global i32 0, align 4
@REG_EXPANDED = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@L_Q = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@L_ERE = common dso_local global i32 0, align 4
@REG_ADVF = common dso_local global i32 0, align 4
@L_BRE = common dso_local global i32 0, align 4
@EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*)* @lexstart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lexstart(%struct.vars* %0) #0 {
  %2 = alloca %struct.vars*, align 8
  store %struct.vars* %0, %struct.vars** %2, align 8
  %3 = load %struct.vars*, %struct.vars** %2, align 8
  %4 = call i32 @prefixes(%struct.vars* %3)
  %5 = call i32 (...) @NOERR()
  %6 = load %struct.vars*, %struct.vars** %2, align 8
  %7 = getelementptr inbounds %struct.vars, %struct.vars* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @REG_QUOTE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.vars*, %struct.vars** %2, align 8
  %14 = getelementptr inbounds %struct.vars, %struct.vars* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REG_ADVANCED, align 4
  %17 = load i32, i32* @REG_EXPANDED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @REG_NEWLINE, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* @L_Q, align 4
  %27 = call i32 @INTOCON(i32 %26)
  br label %62

28:                                               ; preds = %1
  %29 = load %struct.vars*, %struct.vars** %2, align 8
  %30 = getelementptr inbounds %struct.vars, %struct.vars* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @REG_EXTENDED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.vars*, %struct.vars** %2, align 8
  %37 = getelementptr inbounds %struct.vars, %struct.vars* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @REG_QUOTE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* @L_ERE, align 4
  %46 = call i32 @INTOCON(i32 %45)
  br label %61

47:                                               ; preds = %28
  %48 = load %struct.vars*, %struct.vars** %2, align 8
  %49 = getelementptr inbounds %struct.vars, %struct.vars* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @REG_QUOTE, align 4
  %52 = load i32, i32* @REG_ADVF, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* @L_BRE, align 4
  %60 = call i32 @INTOCON(i32 %59)
  br label %61

61:                                               ; preds = %47, %35
  br label %62

62:                                               ; preds = %61, %12
  %63 = load i32, i32* @EMPTY, align 4
  %64 = load %struct.vars*, %struct.vars** %2, align 8
  %65 = getelementptr inbounds %struct.vars, %struct.vars* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.vars*, %struct.vars** %2, align 8
  %67 = call i32 @next(%struct.vars* %66)
  ret void
}

declare dso_local i32 @prefixes(%struct.vars*) #1

declare dso_local i32 @NOERR(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @INTOCON(i32) #1

declare dso_local i32 @next(%struct.vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
