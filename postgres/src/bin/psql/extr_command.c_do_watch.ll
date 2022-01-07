; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_do_watch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_command.c_do_watch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32 }

@pset = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [42 x i8] c"\\watch cannot be used with an empty query\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s\09%s (every %gs)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s (every %gs)\0A\00", align 1
@sigint_interrupt_jmp = common dso_local global i32 0, align 4
@sigint_interrupt_enabled = common dso_local global i32 0, align 4
@cancel_pressed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, double)* @do_watch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_watch(%struct.TYPE_9__* %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store double %1, double* %5, align 8
  %17 = load double, double* %5, align 8
  %18 = fmul double %17, 1.000000e+03
  %19 = fptosi double %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = bitcast %struct.TYPE_8__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_10__* @pset to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %2
  %29 = call i32 @pg_log_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @strlen(i8* %38)
  br label %41

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  %43 = add nsw i32 %42, 256
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i8* @pg_malloc(i32 %44)
  store i8* %45, i8** %10, align 8
  br label %46

46:                                               ; preds = %102, %41
  %47 = call i32 @time(i32* null)
  store i32 %47, i32* %13, align 4
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @localtime(i32* %13)
  %51 = call i32 @strftime(i8* %48, i32 128, i8* %49, i32 %50)
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i8*, i8** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i8*, i8** %9, align 8
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %60 = load double, double* %5, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %55, i32 %56, i8* %57, i8* %58, i8* %59, double %60)
  br label %69

62:                                               ; preds = %46
  %63 = load i8*, i8** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %67 = load double, double* %5, align 8
  %68 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %63, i32 %64, i8* %65, i8* %66, double %67)
  br label %69

69:                                               ; preds = %62, %54
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @PSQLexecWatch(i32 %74, %struct.TYPE_8__* %7)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %103

79:                                               ; preds = %69
  %80 = load i32, i32* @sigint_interrupt_jmp, align 4
  %81 = call i64 @sigsetjmp(i32 %80, i32 1) #4
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %103

84:                                               ; preds = %79
  store i32 1, i32* @sigint_interrupt_enabled, align 4
  %85 = load i64, i64* %6, align 8
  store i64 %85, i64* %15, align 8
  br label %86

86:                                               ; preds = %98, %84
  %87 = load i64, i64* %15, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i64, i64* %15, align 8
  %91 = call i64 @Min(i64 %90, i64 1000)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = mul nsw i64 %92, 1000
  %94 = call i32 @pg_usleep(i64 %93)
  %95 = load i64, i64* @cancel_pressed, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %102

98:                                               ; preds = %89
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %15, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %15, align 8
  br label %86

102:                                              ; preds = %97, %86
  store i32 0, i32* @sigint_interrupt_enabled, align 4
  br label %46

103:                                              ; preds = %83, %78
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @pg_free(i8* %104)
  %106 = load i32, i32* %12, align 4
  %107 = icmp sge i32 %106, 0
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %103, %28
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pg_log_error(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @pg_malloc(i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @localtime(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @PSQLexecWatch(i32, %struct.TYPE_8__*) #2

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #3

declare dso_local i64 @Min(i64, i64) #2

declare dso_local i32 @pg_usleep(i64) #2

declare dso_local i32 @pg_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
