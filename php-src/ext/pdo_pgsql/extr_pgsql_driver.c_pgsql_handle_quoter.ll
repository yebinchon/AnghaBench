; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pgsql_handle_quoter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pgsql_handle_quoter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i8**, i64*, i32)* @pgsql_handle_quoter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_handle_quoter(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8** %3, i64* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %60 [
    i32 128, label %21
  ]

21:                                               ; preds = %6
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i8* @PQescapeByteaConn(i32 %24, i8* %25, i64 %26, i64* %15)
  store i8* %27, i8** %13, align 8
  %28 = load i64, i64* %15, align 8
  %29 = add i64 %28, 1
  %30 = load i64*, i64** %11, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, 1
  %34 = call i8* @emalloc(i64 %33)
  %35 = load i8**, i8*** %10, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8**, i8*** %10, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8*, i8** %13, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, 2
  %43 = call i32 @memcpy(i8* %38, i8* %39, i64 %42)
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 39, i8* %46, align 1
  %47 = load i8**, i8*** %10, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i64*, i64** %11, align 8
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 39, i8* %52, align 1
  %53 = load i8**, i8*** %10, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %13, align 8
  %59 = call i32 @PQfreemem(i8* %58)
  br label %92

60:                                               ; preds = %6
  %61 = load i64, i64* %9, align 8
  %62 = call i8* @safe_emalloc(i32 2, i64 %61, i32 3)
  %63 = load i8**, i8*** %10, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i8**, i8*** %10, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 39, i8* %66, align 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8**, i8*** %10, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @PQescapeStringConn(i32 %69, i8* %72, i8* %73, i64 %74, i32* null)
  %76 = load i64*, i64** %11, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i8**, i8*** %10, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i64*, i64** %11, align 8
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8 39, i8* %82, align 1
  %83 = load i8**, i8*** %10, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 2
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8 0, i8* %88, align 1
  %89 = load i64*, i64** %11, align 8
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 2
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %60, %21
  ret i32 1
}

declare dso_local i8* @PQescapeByteaConn(i32, i8*, i64, i64*) #1

declare dso_local i8* @emalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @PQfreemem(i8*) #1

declare dso_local i8* @safe_emalloc(i32, i64, i32) #1

declare dso_local i64 @PQescapeStringConn(i32, i8*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
