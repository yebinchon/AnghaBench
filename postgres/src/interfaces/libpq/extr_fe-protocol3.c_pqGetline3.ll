; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqGetline3.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_pqGetline3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64 }

@PGINVALID_SOCKET = common dso_local global i64 0, align 8
@PGASYNC_COPY_OUT = common dso_local global i64 0, align 8
@PGASYNC_COPY_BOTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"PQgetline: not doing text COPY OUT\0A\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\\.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pqGetline3(%struct.TYPE_6__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PGINVALID_SOCKET, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PGASYNC_COPY_OUT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PGASYNC_COPY_BOTH, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %20, %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = call i32 @libpq_gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @printfPQExpBuffer(i32* %33, i32 %34)
  %36 = load i8*, i8** %6, align 8
  store i8 0, i8* %36, align 1
  %37 = load i32, i32* @EOF, align 4
  store i32 %37, i32* %4, align 4
  br label %84

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %57, %38
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = call i32 @PQgetlineAsync(%struct.TYPE_6__* %40, i8* %41, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = call i64 @pqWait(i32 1, i32 0, %struct.TYPE_6__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = call i64 @pqReadData(%struct.TYPE_6__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46
  %55 = load i8*, i8** %6, align 8
  store i8 0, i8* %55, align 1
  %56 = load i32, i32* @EOF, align 4
  store i32 %56, i32* %4, align 4
  br label %84

57:                                               ; preds = %50
  br label %39

58:                                               ; preds = %39
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %84

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  store i8 0, i8* %78, align 1
  store i32 0, i32* %4, align 4
  br label %84

79:                                               ; preds = %64
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8 0, i8* %83, align 1
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %73, %61, %54, %31
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @PQgetlineAsync(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @pqWait(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i64 @pqReadData(%struct.TYPE_6__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
