; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_dirstack.c_PushDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_dirstack.c_PushDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_5__* }

@DIRENTRY = common dso_local global i32 0, align 4
@szPath = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory for lpDir\0A\00", align 1
@lpStackTop = common dso_local global %struct.TYPE_5__* null, align 8
@lpStackBottom = common dso_local global %struct.TYPE_5__* null, align 8
@nStackDepth = common dso_local global i32 0, align 4
@nErrorLevel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PushDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PushDirectory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @DIRENTRY, align 4
  %6 = load i32*, i32** @szPath, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @_tcslen(i32 %7)
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %6, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @FIELD_OFFSET(i32 %5, i32 %12)
  %14 = call %struct.TYPE_5__* @cmd_alloc(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @error_out_of_memory()
  store i32 -1, i32* %2, align 4
  br label %43

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpStackTop, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpStackTop, align 8
  %27 = icmp eq %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @lpStackBottom, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lpStackTop, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  br label %34

34:                                               ; preds = %30, %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** @lpStackTop, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @_tcscpy(i32 %38, i32 %39)
  %41 = load i32, i32* @nStackDepth, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @nStackDepth, align 4
  store i32 0, i32* @nErrorLevel, align 4
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_5__* @cmd_alloc(i32) #1

declare dso_local i32 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @_tcslen(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @error_out_of_memory(...) #1

declare dso_local i32 @_tcscpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
