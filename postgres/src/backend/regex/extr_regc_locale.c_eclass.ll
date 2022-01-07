; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_eclass.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_locale.c_eclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvec = type { i32 }
%struct.vars = type { i32 }

@REG_FAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvec* (%struct.vars*, i8, i32)* @eclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvec* @eclass(%struct.vars* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.cvec*, align 8
  %5 = alloca %struct.vars*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.cvec*, align 8
  store %struct.vars* %0, %struct.vars** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vars*, %struct.vars** %5, align 8
  %10 = getelementptr inbounds %struct.vars, %struct.vars* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @REG_FAKE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 120
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load %struct.vars*, %struct.vars** %5, align 8
  %21 = call %struct.cvec* @getcvec(%struct.vars* %20, i32 4, i32 0)
  store %struct.cvec* %21, %struct.cvec** %8, align 8
  %22 = load %struct.cvec*, %struct.cvec** %8, align 8
  %23 = call signext i8 @CHR(i8 signext 120)
  %24 = call i32 @addchr(%struct.cvec* %22, i8 signext %23)
  %25 = load %struct.cvec*, %struct.cvec** %8, align 8
  %26 = call signext i8 @CHR(i8 signext 121)
  %27 = call i32 @addchr(%struct.cvec* %25, i8 signext %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.cvec*, %struct.cvec** %8, align 8
  %32 = call signext i8 @CHR(i8 signext 88)
  %33 = call i32 @addchr(%struct.cvec* %31, i8 signext %32)
  %34 = load %struct.cvec*, %struct.cvec** %8, align 8
  %35 = call signext i8 @CHR(i8 signext 89)
  %36 = call i32 @addchr(%struct.cvec* %34, i8 signext %35)
  br label %37

37:                                               ; preds = %30, %19
  %38 = load %struct.cvec*, %struct.cvec** %8, align 8
  store %struct.cvec* %38, %struct.cvec** %4, align 8
  br label %57

39:                                               ; preds = %15, %3
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.vars*, %struct.vars** %5, align 8
  %44 = load i8, i8* %6, align 1
  %45 = call %struct.cvec* @allcases(%struct.vars* %43, i8 signext %44)
  store %struct.cvec* %45, %struct.cvec** %4, align 8
  br label %57

46:                                               ; preds = %39
  %47 = load %struct.vars*, %struct.vars** %5, align 8
  %48 = call %struct.cvec* @getcvec(%struct.vars* %47, i32 1, i32 0)
  store %struct.cvec* %48, %struct.cvec** %8, align 8
  %49 = load %struct.cvec*, %struct.cvec** %8, align 8
  %50 = icmp ne %struct.cvec* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.cvec*, %struct.cvec** %8, align 8
  %54 = load i8, i8* %6, align 1
  %55 = call i32 @addchr(%struct.cvec* %53, i8 signext %54)
  %56 = load %struct.cvec*, %struct.cvec** %8, align 8
  store %struct.cvec* %56, %struct.cvec** %4, align 8
  br label %57

57:                                               ; preds = %46, %42, %37
  %58 = load %struct.cvec*, %struct.cvec** %4, align 8
  ret %struct.cvec* %58
}

declare dso_local %struct.cvec* @getcvec(%struct.vars*, i32, i32) #1

declare dso_local i32 @addchr(%struct.cvec*, i8 signext) #1

declare dso_local signext i8 @CHR(i8 signext) #1

declare dso_local %struct.cvec* @allcases(%struct.vars*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
