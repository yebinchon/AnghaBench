; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_tzenumerate_start.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_tzenumerate_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8**, i32*, i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not open directory \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @pg_tzenumerate_start() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i8*, align 8
  %3 = call i64 @palloc0(i32 32)
  %4 = inttoptr i64 %3 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  %5 = call i32 (...) @pg_TZDIR()
  %6 = call i8* @pstrdup(i32 %5)
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = add nsw i64 %8, 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  store i64 %9, i64* %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %14, i8** %18, align 8
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @AllocateDir(i8* %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %0
  %32 = load i32, i32* @ERROR, align 4
  %33 = call i32 (...) @errcode_for_file_access()
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = call i32 @ereport(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  ret %struct.TYPE_3__* %38
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @pg_TZDIR(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @AllocateDir(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
