; ModuleID = '/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_fmtQualifiedId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/fe_utils/extr_string_utils.c_fmtQualifiedId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fmtQualifiedId(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.TYPE_7__* (...) @createPQExpBuffer()
  store %struct.TYPE_7__* %7, %struct.TYPE_7__** %6, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @fmtId(i8* %17)
  %19 = call i32 @appendPQExpBuffer(%struct.TYPE_7__* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %15, %10, %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @fmtId(i8* %22)
  %24 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %21, i8* %23)
  %25 = call %struct.TYPE_7__* (...) @getLocalPQExpBuffer()
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %5, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @appendPQExpBufferStr(%struct.TYPE_7__* %26, i8* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = call i32 @destroyPQExpBuffer(%struct.TYPE_7__* %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  ret i8* %35
}

declare dso_local %struct.TYPE_7__* @createPQExpBuffer(...) #1

declare dso_local i32 @appendPQExpBuffer(%struct.TYPE_7__*, i8*, i8*) #1

declare dso_local i8* @fmtId(i8*) #1

declare dso_local i32 @appendPQExpBufferStr(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.TYPE_7__* @getLocalPQExpBuffer(...) #1

declare dso_local i32 @destroyPQExpBuffer(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
