; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_emitShSecLabels.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_dumputils.c_emitShSecLabels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"SECURITY LABEL FOR %s ON %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" %s IS \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emitShSecLabels(i32* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %41, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @PQntuples(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i8* @PQgetvalue(i32* %20, i32 %21, i32 0)
  store i8* %22, i8** %12, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i8* @PQgetvalue(i32* %23, i32 %24, i32 1)
  store i8* %25, i8** %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @fmtId(i8* %27)
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 (i32, i8*, i32, ...) @appendPQExpBuffer(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @fmtId(i8* %32)
  %34 = call i32 (i32, i8*, i32, ...) @appendPQExpBuffer(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @appendStringLiteralConn(i32 %35, i8* %36, i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @appendPQExpBufferStr(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %14

44:                                               ; preds = %14
  ret void
}

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i8* @PQgetvalue(i32*, i32, i32) #1

declare dso_local i32 @appendPQExpBuffer(i32, i8*, i32, ...) #1

declare dso_local i32 @fmtId(i8*) #1

declare dso_local i32 @appendStringLiteralConn(i32, i8*, i32*) #1

declare dso_local i32 @appendPQExpBufferStr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
