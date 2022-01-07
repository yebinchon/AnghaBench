; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendQueryPrepared.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendQueryPrepared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"statement name is a null pointer\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"number of parameters must be between 0 and 65535\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PQsendQueryPrepared(%struct.TYPE_5__* %0, i8* %1, i32 %2, i8** %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = call i32 @PQsendQueryStart(%struct.TYPE_5__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %48

20:                                               ; preds = %7
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @libpq_gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @printfPQExpBuffer(i32* %25, i32 %26)
  store i32 0, i32* %8, align 4
  br label %48

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %32, 65535
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = call i32 @libpq_gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @printfPQExpBuffer(i32* %36, i32 %37)
  store i32 0, i32* %8, align 4
  br label %48

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i8**, i8*** %12, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @PQsendQueryGuts(%struct.TYPE_5__* %40, i32* null, i8* %41, i32 %42, i32* null, i8** %43, i32* %44, i32* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %39, %34, %23, %19
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @PQsendQueryStart(%struct.TYPE_5__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @PQsendQueryGuts(%struct.TYPE_5__*, i32*, i8*, i32, i32*, i8**, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
