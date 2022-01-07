; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_domains.c_domain_check.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_domains.c_domain_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@CurrentMemoryContext = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @domain_check(i32 %0, i32 %1, i64 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %11, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32*, i32** @CurrentMemoryContext, align 8
  store i32* %15, i32** %10, align 8
  br label %16

16:                                               ; preds = %14, %5
  %17 = load i8**, i8*** %9, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %11, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26, %23
  %33 = load i64, i64* %8, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call %struct.TYPE_4__* @domain_state_setup(i64 %33, i32 1, i32* %34)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %11, align 8
  %36 = load i8**, i8*** %9, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %40 = bitcast %struct.TYPE_4__* %39 to i8*
  %41 = load i8**, i8*** %9, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %38, %32
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = call i32 @domain_check_input(i32 %44, i32 %45, %struct.TYPE_4__* %46)
  ret void
}

declare dso_local %struct.TYPE_4__* @domain_state_setup(i64, i32, i32*) #1

declare dso_local i32 @domain_check_input(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
