; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_max_parallel_hazard_test.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/util/extr_clauses.c_max_parallel_hazard_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"unrecognized proparallel value \22%c\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.TYPE_3__*)* @max_parallel_hazard_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max_parallel_hazard_test(i8 signext %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8 %0, i8* %4, align 1
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %34 [
    i32 129, label %8
    i32 130, label %9
    i32 128, label %29
  ]

8:                                                ; preds = %2
  br label %38

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 128
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i8, i8* %21, align 4
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %39

28:                                               ; preds = %9
  br label %38

29:                                               ; preds = %2
  %30 = load i8, i8* %4, align 1
  %31 = sext i8 %30 to i32
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %3, align 4
  br label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i8, i8* %4, align 1
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8 signext %36)
  br label %38

38:                                               ; preds = %34, %28, %8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %29, %27
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
