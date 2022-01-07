; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_tok_alloc_new.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_tok_alloc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32*, i32*, i32*, i32*, i32*, i64 }

@tok_ident = common dso_local global i64 0, align 8
@SYM_FIRST_ANOM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"memory full\00", align 1
@TOK_IDENT = common dso_local global i64 0, align 8
@TOK_ALLOC_INCR = common dso_local global i32 0, align 4
@table_ident = common dso_local global %struct.TYPE_8__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__**, i8*, i32)* @tok_alloc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @tok_alloc_new(%struct.TYPE_8__** %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @tok_ident, align 8
  %11 = load i64, i64* @SYM_FIRST_ANOM, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 @tcc_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i64, i64* @tok_ident, align 8
  %17 = load i64, i64* @TOK_IDENT, align 8
  %18 = sub nsw i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @TOK_ALLOC_INCR, align 4
  %22 = srem i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @table_ident, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @TOK_ALLOC_INCR, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = trunc i64 %30 to i32
  %32 = call %struct.TYPE_8__** @realloc(%struct.TYPE_8__** %25, i32 %31)
  store %struct.TYPE_8__** %32, %struct.TYPE_8__*** %8, align 8
  %33 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__** %33, %struct.TYPE_8__*** @table_ident, align 8
  br label %34

34:                                               ; preds = %24, %15
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 64, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_8__* @malloc(i32 %38)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %7, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @table_ident, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %41, i64 %43
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %44, align 8
  %45 = load i64, i64* @tok_ident, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* @tok_ident, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  store i64 %45, i64* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 6
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i32* null, i32** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @memcpy(i8* %64, i8* %65, i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %75 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %76
}

declare dso_local i32 @tcc_error(i8*) #1

declare dso_local %struct.TYPE_8__** @realloc(%struct.TYPE_8__**, i32) #1

declare dso_local %struct.TYPE_8__* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
