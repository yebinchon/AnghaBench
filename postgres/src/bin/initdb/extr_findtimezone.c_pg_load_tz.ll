; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_pg_load_tz.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_pg_load_tz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@pg_load_tz.tz = internal global %struct.TYPE_3__ zeroinitializer, align 4
@TZ_STRLEN_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_3__* (i8*)* @pg_load_tz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_3__* @pg_load_tz(i8* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @strlen(i8* %4)
  %6 = load i64, i64* @TZ_STRLEN_MAX, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %40

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @tzparse(i8* %14, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pg_load_tz.tz, i32 0, i32 1), i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %40

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %9
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @tzload(i8* %20, i32* null, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pg_load_tz.tz, i32 0, i32 1), i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 58
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @tzparse(i8* %30, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pg_load_tz.tz, i32 0, i32 1), i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %23
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %2, align 8
  br label %40

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %19
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pg_load_tz.tz, i32 0, i32 0), align 4
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcpy(i32 %37, i8* %38)
  store %struct.TYPE_3__* @pg_load_tz.tz, %struct.TYPE_3__** %2, align 8
  br label %40

40:                                               ; preds = %36, %33, %17, %8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  ret %struct.TYPE_3__* %41
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @tzparse(i8*, i32*, i32) #1

declare dso_local i64 @tzload(i8*, i32*, i32*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
