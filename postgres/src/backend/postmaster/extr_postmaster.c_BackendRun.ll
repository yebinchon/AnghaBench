; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_BackendRun.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_postmaster.c_BackendRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ExtraOptions = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@DEBUG3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s child[%d]: starting with (\00", align 1
@progname = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @BackendRun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BackendRun(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 2, i32* %4, align 4
  %7 = load i32, i32* @ExtraOptions, align 4
  %8 = call i32 @strlen(i32 %7)
  %9 = add nsw i32 %8, 1
  %10 = sdiv i32 %9, 2
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @TopMemoryContext, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @MemoryContextAlloc(i32 %13, i32 %17)
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %3, align 8
  store i32 0, i32* %5, align 4
  %20 = load i8**, i8*** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load i8**, i8*** %3, align 8
  %26 = load i32, i32* @ExtraOptions, align 4
  %27 = call i32 @pg_split_opts(i8** %25, i32* %5, i32 %26)
  %28 = load i8**, i8*** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  store i8* null, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  %37 = load i32, i32* @DEBUG3, align 4
  %38 = load i32, i32* @progname, align 4
  %39 = call i64 (...) @getpid()
  %40 = trunc i64 %39 to i32
  %41 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  %42 = call i32 @ereport(i32 %37, i32 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %56, %1
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* @DEBUG3, align 4
  %49 = load i8**, i8*** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = call i32 @ereport(i32 %48, i32 %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load i32, i32* @DEBUG3, align 4
  %61 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %60, i32 %61)
  %63 = load i32, i32* @TopMemoryContext, align 4
  %64 = call i32 @MemoryContextSwitchTo(i32 %63)
  %65 = load i32, i32* %5, align 4
  %66 = load i8**, i8*** %3, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @PostgresMain(i32 %65, i8** %66, i32 %69, i32 %72)
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @pg_split_opts(i8**, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg_internal(i8*, ...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @PostgresMain(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
