; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_oid.c_oidparse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_oid.c_oidparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oidparse(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @nodeTag(i32* %4)
  switch i32 %5, label %13 [
    i32 128, label %6
    i32 129, label %9
  ]

6:                                                ; preds = %1
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @intVal(i32* %7)
  store i32 %8, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @strVal(i32* %10)
  %12 = call i32 @oidin_subr(i32 %11, i32* null)
  store i32 %12, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @ERROR, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @nodeTag(i32* %15)
  %17 = call i32 @elog(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @InvalidOid, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %9, %6
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @intVal(i32*) #1

declare dso_local i32 @oidin_subr(i32, i32*) #1

declare dso_local i32 @strVal(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
