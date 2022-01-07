; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_dirstack.c_CommandDirs.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_dirstack.c_CommandDirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_3__*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@STRING_DIRSTACK_HELP3 = common dso_local global i32 0, align 4
@nErrorLevel = common dso_local global i64 0, align 8
@lpStackBottom = common dso_local global %struct.TYPE_3__* null, align 8
@STRING_DIRSTACK_HELP4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CommandDirs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @_tcsncmp(i32 %5, i32 %6, i32 2)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @STRING_DIRSTACK_HELP3, align 4
  %11 = call i32 @ConOutResPuts(i32 %10)
  store i32 0, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  store i64 0, i64* @nErrorLevel, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lpStackBottom, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @STRING_DIRSTACK_HELP4, align 4
  %18 = call i32 @ConOutResPuts(i32 %17)
  store i32 0, i32* %2, align 4
  br label %32

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %23, %19
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ConOutPuts(i32 %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  store %struct.TYPE_3__* %30, %struct.TYPE_3__** %4, align 8
  br label %20

31:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %16, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @_tcsncmp(i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @ConOutResPuts(i32) #1

declare dso_local i32 @ConOutPuts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
