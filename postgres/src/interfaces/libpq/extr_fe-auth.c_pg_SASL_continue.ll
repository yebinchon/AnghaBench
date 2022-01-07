; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_SASL_continue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-auth.c_pg_SASL_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"out of memory allocating SASL buffer (%d)\0A\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"AuthenticationSASLFinal received from server, but SASL authentication was not completed\0A\00", align 1
@STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @pg_SASL_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pg_SASL_continue(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %92

26:                                               ; preds = %3
  %27 = load i8*, i8** %13, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = call i64 @pqGetnchar(i8* %27, i32 %28, %struct.TYPE_5__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @free(i8* %33)
  %35 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %35, i32* %4, align 4
  br label %92

36:                                               ; preds = %26
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @pg_fe_scram_exchange(i32 %43, i8* %44, i32 %45, i8** %8, i32* %9, i32* %10, i32* %11)
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %36
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @libpq_gettext(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %64 = call i32 (i32*, i32, ...) @printfPQExpBuffer(i32* %62, i32 %63)
  %65 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %65, i32* %4, align 4
  br label %92

66:                                               ; preds = %51, %36
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @pqPacketSend(%struct.TYPE_5__* %70, i8 signext 112, i8* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @STATUS_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %80, i32* %4, align 4
  br label %92

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %89, i32* %4, align 4
  br label %92

90:                                               ; preds = %85, %82
  %91 = load i32, i32* @STATUS_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %88, %79, %60, %32, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32, ...) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @pqGetnchar(i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pg_fe_scram_exchange(i32, i8*, i32, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @pqPacketSend(%struct.TYPE_5__*, i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
