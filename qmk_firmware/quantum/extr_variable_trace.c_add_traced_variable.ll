; ModuleID = '/home/carl/AnghaBench/qmk_firmware/quantum/extr_variable_trace.c_add_traced_variable.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/quantum/extr_variable_trace.c_add_traced_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i32, i32*, i32* }

@MAX_VARIABLE_TRACE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Traced variable \22%s\22 exceeds the maximum size %d\0A\00", align 1
@NUM_TRACED_VARIABLES = common dso_local global i32 0, align 4
@traced_variables = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"You can only trace %d variables at the same time\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_traced_variable(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @verify_traced_variables(i8* %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MAX_VARIABLE_TRACE_SIZE, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i32, i32* @MAX_VARIABLE_TRACE_SIZE, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %20, %5
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @NUM_TRACED_VARIABLES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @traced_variables, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %11, align 4
  br label %56

43:                                               ; preds = %33, %30
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @traced_variables, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strcmp_P(i8* %44, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %43
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %11, align 4
  br label %60

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %26

60:                                               ; preds = %53, %26
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @NUM_TRACED_VARIABLES, align 4
  %65 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %94

66:                                               ; preds = %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @traced_variables, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %13, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 5
  store i32* %75, i32** %77, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i8*, i8** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @memcpy(i32* %90, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @verify_traced_variables(i8*, i32) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i64 @strcmp_P(i8*, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
