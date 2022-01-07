; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_subset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/regex/extr_regexec.c_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vars = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.subre = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"setting %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vars*, %struct.subre*, i32*, i32*)* @subset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subset(%struct.vars* %0, %struct.subre* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.vars*, align 8
  %6 = alloca %struct.subre*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.vars* %0, %struct.vars** %5, align 8
  store %struct.subre* %1, %struct.subre** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.subre*, %struct.subre** %6, align 8
  %11 = getelementptr inbounds %struct.subre, %struct.subre* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.vars*, %struct.vars** %5, align 8
  %20 = getelementptr inbounds %struct.vars, %struct.vars* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %47

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @MDEBUG(i8* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @OFF(i32* %29)
  %31 = load %struct.vars*, %struct.vars** %5, align 8
  %32 = getelementptr inbounds %struct.vars, %struct.vars* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i8* %30, i8** %37, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i8* @OFF(i32* %38)
  %40 = load %struct.vars*, %struct.vars** %5, align 8
  %41 = getelementptr inbounds %struct.vars, %struct.vars* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i8* %39, i8** %46, align 8
  br label %47

47:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MDEBUG(i8*) #1

declare dso_local i8* @OFF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
