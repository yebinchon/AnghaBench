; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_cvec.c_getcvec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regc_cvec.c_getcvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvec = type { i32, i32 }
%struct.vars = type { %struct.cvec* }

@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cvec* (%struct.vars*, i32, i32)* @getcvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cvec* @getcvec(%struct.vars* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cvec*, align 8
  %5 = alloca %struct.vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.vars*, %struct.vars** %5, align 8
  %9 = getelementptr inbounds %struct.vars, %struct.vars* %8, i32 0, i32 0
  %10 = load %struct.cvec*, %struct.cvec** %9, align 8
  %11 = icmp ne %struct.cvec* %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.vars*, %struct.vars** %5, align 8
  %15 = getelementptr inbounds %struct.vars, %struct.vars* %14, i32 0, i32 0
  %16 = load %struct.cvec*, %struct.cvec** %15, align 8
  %17 = getelementptr inbounds %struct.cvec, %struct.cvec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.vars*, %struct.vars** %5, align 8
  %23 = getelementptr inbounds %struct.vars, %struct.vars* %22, i32 0, i32 0
  %24 = load %struct.cvec*, %struct.cvec** %23, align 8
  %25 = getelementptr inbounds %struct.cvec, %struct.cvec* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %21, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.vars*, %struct.vars** %5, align 8
  %30 = getelementptr inbounds %struct.vars, %struct.vars* %29, i32 0, i32 0
  %31 = load %struct.cvec*, %struct.cvec** %30, align 8
  %32 = call %struct.cvec* @clearcvec(%struct.cvec* %31)
  store %struct.cvec* %32, %struct.cvec** %4, align 8
  br label %60

33:                                               ; preds = %20, %12, %3
  %34 = load %struct.vars*, %struct.vars** %5, align 8
  %35 = getelementptr inbounds %struct.vars, %struct.vars* %34, i32 0, i32 0
  %36 = load %struct.cvec*, %struct.cvec** %35, align 8
  %37 = icmp ne %struct.cvec* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.vars*, %struct.vars** %5, align 8
  %40 = getelementptr inbounds %struct.vars, %struct.vars* %39, i32 0, i32 0
  %41 = load %struct.cvec*, %struct.cvec** %40, align 8
  %42 = call i32 @freecvec(%struct.cvec* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.cvec* @newcvec(i32 %44, i32 %45)
  %47 = load %struct.vars*, %struct.vars** %5, align 8
  %48 = getelementptr inbounds %struct.vars, %struct.vars* %47, i32 0, i32 0
  store %struct.cvec* %46, %struct.cvec** %48, align 8
  %49 = load %struct.vars*, %struct.vars** %5, align 8
  %50 = getelementptr inbounds %struct.vars, %struct.vars* %49, i32 0, i32 0
  %51 = load %struct.cvec*, %struct.cvec** %50, align 8
  %52 = icmp eq %struct.cvec* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @REG_ESPACE, align 4
  %55 = call i32 @ERR(i32 %54)
  br label %56

56:                                               ; preds = %53, %43
  %57 = load %struct.vars*, %struct.vars** %5, align 8
  %58 = getelementptr inbounds %struct.vars, %struct.vars* %57, i32 0, i32 0
  %59 = load %struct.cvec*, %struct.cvec** %58, align 8
  store %struct.cvec* %59, %struct.cvec** %4, align 8
  br label %60

60:                                               ; preds = %56, %28
  %61 = load %struct.cvec*, %struct.cvec** %4, align 8
  ret %struct.cvec* %61
}

declare dso_local %struct.cvec* @clearcvec(%struct.cvec*) #1

declare dso_local i32 @freecvec(%struct.cvec*) #1

declare dso_local %struct.cvec* @newcvec(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
