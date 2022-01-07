; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQconninfoParse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-connect.c_PQconninfoParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @PQconninfoParse(i8* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = icmp ne i8** %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  store i8* null, i8** %11, align 8
  br label %12

12:                                               ; preds = %10, %2
  %13 = call i32 @initPQExpBuffer(%struct.TYPE_6__* %6)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @PQExpBufferDataBroken(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32* null, i32** %3, align 8
  br label %35

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i32* @parse_connection_string(i8* %20, %struct.TYPE_6__* %6, i32 0)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load i8**, i8*** %5, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %5, align 8
  store i8* %29, i8** %30, align 8
  br label %33

31:                                               ; preds = %24, %19
  %32 = call i32 @termPQExpBuffer(%struct.TYPE_6__* %6)
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %33, %18
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32 @initPQExpBuffer(%struct.TYPE_6__*) #1

declare dso_local i64 @PQExpBufferDataBroken(i8*) #1

declare dso_local i32* @parse_connection_string(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @termPQExpBuffer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
