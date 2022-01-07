; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_input.c_gets_fromFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_input.c_gets_fromFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8* }

@gets_fromFile.buffer = internal global %struct.TYPE_6__* null, align 8
@sigint_interrupt_enabled = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not read from input file: %m\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gets_fromFile(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call %struct.TYPE_6__* (...) @createPQExpBuffer()
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %12 = call i32 @resetPQExpBuffer(%struct.TYPE_6__* %11)
  br label %13

13:                                               ; preds = %10, %8
  br label %14

14:                                               ; preds = %68, %13
  store i32 1, i32* @sigint_interrupt_enabled, align 4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %16 = load i32*, i32** %3, align 8
  %17 = call i8* @fgets(i8* %15, i32 1024, i32* %16)
  store i8* %17, i8** %5, align 8
  store i32 0, i32* @sigint_interrupt_enabled, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @ferror(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @pg_log_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %80

26:                                               ; preds = %20
  br label %69

27:                                               ; preds = %14
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %30 = call i32 @appendPQExpBufferStr(%struct.TYPE_6__* %28, i8* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %32 = call i64 @PQExpBufferBroken(%struct.TYPE_6__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @pg_log_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %80

36:                                               ; preds = %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %68

54:                                               ; preds = %41
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i8* @pg_strdup(i8* %66)
  store i8* %67, i8** %2, align 8
  br label %80

68:                                               ; preds = %41, %36
  br label %14

69:                                               ; preds = %26
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @gets_fromFile.buffer, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @pg_strdup(i8* %77)
  store i8* %78, i8** %2, align 8
  br label %80

79:                                               ; preds = %69
  store i8* null, i8** %2, align 8
  br label %80

80:                                               ; preds = %79, %74, %54, %34, %24
  %81 = load i8*, i8** %2, align 8
  ret i8* %81
}

declare dso_local %struct.TYPE_6__* @createPQExpBuffer(...) #1

declare dso_local i32 @resetPQExpBuffer(%struct.TYPE_6__*) #1

declare dso_local i8* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @pg_log_error(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @PQExpBufferBroken(%struct.TYPE_6__*) #1

declare dso_local i8* @pg_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
