; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendStringLiteralDQ.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_appendStringLiteralDQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@appendStringLiteralDQ.suffixes = internal constant [9 x i8] c"_XXXXXXX\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendStringLiteralDQ(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call %struct.TYPE_7__* (...) @createPQExpBuffer()
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %11 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %10, i8 signext 36)
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %15, i8* %16)
  br label %18

18:                                               ; preds = %14, %3
  br label %19

19:                                               ; preds = %26, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @strstr(i8* %20, i8* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds [9 x i8], [9 x i8]* @appendStringLiteralDQ.suffixes, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %27, i8 signext %32)
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = urem i64 %35, 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = call i32 @appendPQExpBufferChar(%struct.TYPE_7__* %39, i8 signext 36)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %41, i8* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %46, i8* %47)
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %49, i8* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = call i32 @destroyPQExpBuffer(%struct.TYPE_7__* %54)
  ret void
}

declare dso_local %struct.TYPE_7__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBufferChar(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
