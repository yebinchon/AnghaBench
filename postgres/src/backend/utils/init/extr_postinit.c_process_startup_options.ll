; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_process_startup_options.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_postinit.c_process_startup_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@PGC_SU_BACKEND = common dso_local global i32 0, align 4
@PGC_BACKEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@PGC_S_CLIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @process_startup_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_startup_options(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PGC_SU_BACKEND, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @PGC_BACKEND, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %5, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @strlen(i32* %27)
  %29 = add nsw i32 %28, 1
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 2, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @palloc(i32 %35)
  %37 = inttoptr i64 %36 to i8**
  store i8** %37, i8*** %7, align 8
  store i32 0, i32* %9, align 4
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @pg_split_opts(i8** %43, i32* %9, i32* %46)
  %48 = load i8**, i8*** %7, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* null, i8** %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i8**, i8*** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @process_postgres_switches(i32 %57, i8** %58, i32 %59, i32* null)
  br label %61

61:                                               ; preds = %24, %18
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32* @list_head(i32 %64)
  store i32* %65, i32** %6, align 8
  br label %66

66:                                               ; preds = %69, %61
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = call i8* @lfirst(i32* %70)
  store i8* %71, i8** %10, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32* @lnext(i32 %74, i32* %75)
  store i32* %76, i32** %6, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i8* @lfirst(i32* %77)
  store i8* %78, i8** %11, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32* @lnext(i32 %81, i32* %82)
  store i32* %83, i32** %6, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @PGC_S_CLIENT, align 4
  %88 = call i32 @SetConfigOption(i8* %84, i8* %85, i32 %86, i32 %87)
  br label %66

89:                                               ; preds = %66
  ret void
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @pg_split_opts(i8**, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @process_postgres_switches(i32, i8**, i32, i32*) #1

declare dso_local i32* @list_head(i32) #1

declare dso_local i8* @lfirst(i32*) #1

declare dso_local i32* @lnext(i32, i32*) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
