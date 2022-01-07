; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_context.c_Context_CreateLinkContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_context.c_Context_CreateLinkContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_13__*)* }

@.str = private unnamed_addr constant [10 x i8] c"(%d, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"returning %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @Context_CreateLinkContext(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %11 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, %struct.TYPE_12__* %10)
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = add i64 40, %13
  %15 = trunc i64 %14 to i32
  %16 = call %struct.TYPE_12__* @CryptMemAlloc(i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = icmp ne %struct.TYPE_12__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %57

20:                                               ; preds = %3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = call i32 @context_ptr(%struct.TYPE_12__* %21)
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = call i32 @context_ptr(%struct.TYPE_12__* %23)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @memcpy(i32 %22, i32 %24, i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 3
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %36, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = call i32 @Context_AddRef(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %47, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = call i32 %48(%struct.TYPE_13__* %49)
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %53, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %4, align 8
  br label %57

57:                                               ; preds = %20, %19
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %58
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_12__* @CryptMemAlloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @context_ptr(%struct.TYPE_12__*) #1

declare dso_local i32 @Context_AddRef(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
